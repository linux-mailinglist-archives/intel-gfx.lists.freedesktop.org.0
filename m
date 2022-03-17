Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 181454DBDFE
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 06:12:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A18E10E1CD;
	Thu, 17 Mar 2022 05:12:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92CF710E1CD
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Mar 2022 05:12:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647493933; x=1679029933;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=7QWD+Yg1KX2euVt+5viWlLlsNVvKMRkFZI58xOKIFB8=;
 b=DTnSyZZr8yWFYvNYFixsJ6frHxUc0DsYg0/m7jk2Xrhd4WCqVjDHSDyM
 KD0h8IeFTfaVofaw0d8HRd1dA5+vlixqhPbcdB1JMbScwCZCQGY/vRbKT
 EVbnk/N+mkKGUe3GmOZ7IZKH4wcJKO4ttz/PmcHtEcCkK3qY3ubLQsgKH
 s8qC2Ro1l2QwwiZvt/Lj7eVU+cfY3j2+tLA7muFBmMrrxy/bEqJmwAGgi
 d+jA3cyTsgiHAC2cQvEhAnpytSy9C86tydZ6oDR4bjRwc46vqHtSyaqO4
 Kuduf+9IMKwLwZqVXA7SZASAlsSe8982xftZwutz4tfQtQRnc7ykIdaXf w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10288"; a="244236664"
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="244236664"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2022 22:12:12 -0700
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="557775412"
Received: from rgreenle-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.255.231.170])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2022 22:12:12 -0700
Date: Wed, 16 Mar 2022 22:12:10 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Mullati Siva <siva.mullati@intel.com>
Message-ID: <20220317051210.u4o2dfwxv6owesk7@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220308093805.879262-1-siva.mullati@intel.com>
 <20220308093805.879262-3-siva.mullati@intel.com>
 <20220309013845.4jgwlbe524rgxsee@ldmartin-desk2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20220309013845.4jgwlbe524rgxsee@ldmartin-desk2>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/guc: Convert ct buffer to
 iosys_map
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 08, 2022 at 05:38:45PM -0800, Lucas De Marchi wrote:
>and in some other places too. I will try to finish the review later.
>

getting back to the rest now.

>
>>		tail = (tail + 1) % size;
>>	}
>>	GEM_BUG_ON(tail > size);
>>@@ -442,13 +471,14 @@ static int ct_write(struct intel_guc_ct *ct,
>>	atomic_sub(len + GUC_CTB_HDR_LEN, &ctb->space);
>>
>>	/* now update descriptor */
>>-	WRITE_ONCE(desc->tail, tail);
>>+	ct_desc_write(&desc, tail, tail);
>>
>>	return 0;
>>
>>corrupted:
>>	CT_ERROR(ct, "Corrupted descriptor head=%u tail=%u status=%#x\n",
>>-		 desc->head, desc->tail, desc->status);
>>+		 ct_desc_read(&desc, head), ct_desc_read(&desc, tail),
>>+		 ct_desc_read(&desc, status));
>>	ctb->broken = true;
>>	return -EPIPE;
>>}
>>@@ -499,20 +529,21 @@ static inline bool ct_deadlocked(struct intel_guc_ct *ct)
>>	bool ret = ktime_ms_delta(ktime_get(), ct->stall_time) > timeout;
>>
>>	if (unlikely(ret)) {
>>-		struct guc_ct_buffer_desc *send = ct->ctbs.send.desc;
>>-		struct guc_ct_buffer_desc *recv = ct->ctbs.send.desc;
>>+		struct iosys_map send = ct->ctbs.send.desc_map;
>>+		struct iosys_map recv = ct->ctbs.recv.desc_map;

you should only do a copy of the struct in places that you need to
(temporarily) increement the mapping or to overly another struct from an
offset of the original

Here you just use it as an alias for read operations, so a pointer would
do fine.

>>
>>		CT_ERROR(ct, "Communication stalled for %lld ms, desc status=%#x,%#x\n",
>>			 ktime_ms_delta(ktime_get(), ct->stall_time),
>>-			 send->status, recv->status);
>>+			 ct_desc_read(&send, status),
>>+			 ct_desc_read(&recv, status));
>>		CT_ERROR(ct, "H2G Space: %u (Bytes)\n",
>>			 atomic_read(&ct->ctbs.send.space) * 4);
>>-		CT_ERROR(ct, "Head: %u (Dwords)\n", ct->ctbs.send.desc->head);
>>-		CT_ERROR(ct, "Tail: %u (Dwords)\n", ct->ctbs.send.desc->tail);
>>+		CT_ERROR(ct, "Head: %u (Dwords)\n", ct_desc_read(&send, head));
>>+		CT_ERROR(ct, "Tail: %u (Dwords)\n", ct_desc_read(&send, tail));
>>		CT_ERROR(ct, "G2H Space: %u (Bytes)\n",
>>			 atomic_read(&ct->ctbs.recv.space) * 4);
>>-		CT_ERROR(ct, "Head: %u\n (Dwords)", ct->ctbs.recv.desc->head);
>>-		CT_ERROR(ct, "Tail: %u\n (Dwords)", ct->ctbs.recv.desc->tail);
>>+		CT_ERROR(ct, "Head: %u\n (Dwords)", ct_desc_read(&recv, head));
>>+		CT_ERROR(ct, "Tail: %u\n (Dwords)", ct_desc_read(&recv, tail));
>>
>>		ct->ctbs.send.broken = true;
>>	}
>>@@ -549,18 +580,20 @@ static inline void g2h_release_space(struct intel_guc_ct *ct, u32 g2h_len_dw)
>>static inline bool h2g_has_room(struct intel_guc_ct *ct, u32 len_dw)
>>{
>>	struct intel_guc_ct_buffer *ctb = &ct->ctbs.send;
>>-	struct guc_ct_buffer_desc *desc = ctb->desc;
>>+	struct iosys_map desc = ctb->desc_map;

same thing here, and in other places in this patch. The rest of the
patch seems to have the same pattern as things suggested above.

Lucas De Marchi
