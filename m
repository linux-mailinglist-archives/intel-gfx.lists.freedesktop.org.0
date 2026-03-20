Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kDX7Fsh4vWmt9wIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 17:41:44 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F083A2DD9C4
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 17:41:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1C4A10EB3B;
	Fri, 20 Mar 2026 16:41:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=bootlin.com header.i=@bootlin.com header.b="hbqEYZW8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0026010EB39;
 Fri, 20 Mar 2026 16:41:38 +0000 (UTC)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
 by smtpout-02.galae.net (Postfix) with ESMTPS id BBA101A2F1D;
 Fri, 20 Mar 2026 16:41:37 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
 by smtpout-01.galae.net (Postfix) with ESMTPS id 901C0600E0;
 Fri, 20 Mar 2026 16:41:37 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 3BE3510450CB3; Fri, 20 Mar 2026 17:41:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
 t=1774024896; h=from:subject:date:message-id:to:cc:mime-version:content-type:
 content-transfer-encoding:in-reply-to:references;
 bh=cKGDwlvt9Z0GcMs4r/vA+KlNQUjiaEClgAg1WqXLo9k=;
 b=hbqEYZW89sdj8sZN6dKNfCXBSj5VjvA50bHmVfW/Qw5MH0QmEJjEYvFcydvUVSkCekA679
 0FR5F5DmwlzU4hGjJw8/XA5QCeqEVofa7qlTr0Hf6alJzsjZ0Lqxn82ZP6r8ax6QcLWIMC
 f/woWHrtF3/CbYb35IB7XbPcxLkuc8vKlGg/+SsUh0qjUlgqia4pJkkoUyNdf6DJ4XdRfw
 GSOdM98PHa+Msp5JFFA05yTMMvsyCQ07Na04IyDi6fhCKyBbpAlCP41xWHHZxfdFqqXmIT
 iV6P1Hw8/voYd30VzJN8q1GA6++jX2oIUmuG21DBG10fdw+oOi/8HVtAqsw7vQ==
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Subject: Re: [PATCH v11 01/65] dyndbg: fix NULL ptr on i386 due to section
 alignment
From: Louis Chauvet <louis.chauvet@bootlin.com>
To: airlied@gmail.com, simona@ffwll.ch, jbaron@akamai.com, 
 gregkh@linuxfoundation.org
Cc: Jim Cromie <jim.cromie@gmail.com>, mripard@kernel.org, 
 tzimmermann@suse.de, maarten.lankhorst@linux.intel.com, 
 jani.nikula@intel.com, ville.syrjala@linux.intel.com, 
 christian.koenig@amd.com, matthew.auld@intel.com, 
 arunpravin.paneerselvam@amd.com, louis.chauvet@bootlin.com, 
 skhan@linuxfoundation.org, pmladek@suse.com, ukaszb@chromium.org, 
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 intel-gfx@lists.freedesktop.org, amd-gfx@lists.freedesktop.org
In-Reply-To: <20260313132103.2529746-2-jim.cromie@gmail.com>
References: <20260313132103.2529746-1-jim.cromie@gmail.com>
 <20260313132103.2529746-2-jim.cromie@gmail.com>
Date: Fri, 20 Mar 2026 17:41:54 +0100
Message-Id: <177402491426.6181.12855763650074831089.b4-review@b4>
X-Mailer: b4 0.15-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=1941;
 i=louis.chauvet@bootlin.com; h=from:subject:message-id;
 bh=5vu9kJUKSwepU61ul0h/niGvEXw8ZRvYqIj73mi0tqM=;
 b=owEBiQJ2/ZANAwAIASCtLsZbECziAcsmYgBpvXjWJgk174KDSFVEfYK8MEGXPXOGRFrKaYh78
 OPxyPYI8XiJAk8EAAEIADkWIQRPj7g/vng8MQxQWQQgrS7GWxAs4gUCab141hsUgAAAAAAEAA5t
 YW51MiwyLjUrMS4xMSwyLDIACgkQIK0uxlsQLOLG1A//d2qhiK+QccjRn2qFd6LmmFfXKDycfnI
 vYg4YgD9yskm421XW1oAW5getFH0ZgMmJnBZNwunzEMgiiFtfPgX54KT9lHKy5xStkHSh41TXrp
 LSZfIji6smoEFg/wdVSmfIUNr1NXyeertLea9n4jdlTpHLpvHnvw5mAu7ako+DfjXfRrt3a5UKS
 bMoiy/lCZjuvLXLvSwZ+kH25LlEdU3KXPTA55PI5RZxQ0+uBW1evziiZsv8bVW7q8e6Ppg4UFb6
 IS1h+Gf8aaTyUeEHpslnt78/T9kkszXgKx21FuODT1boXbLVu+IZwoSqI7Lb7GyOyq94375xmtO
 Y2c2LIuBmfOnzNAwVbmsRjoQB2vYoPXGjnkF+KQLgUwgLg8ICiU4knkJBe9eNiSt4CoxgNxfgid
 r0sD+irtok76g26xd+VNhB4pypgjLnsffvHdvSKZpzFjHmpg7zCDipfZcNPooF+9PNuFQyTY7mQ
 RRkEf6BOMMGMLzqSm+iyHP/2KDGmpZ/q4cMGPdLZ0UhG/v1XugH+rk2zKE+VGQMyy8QWCUP31sz
 WxpQzHUsVsPHhM5uegSRniZnGYApMuMn03Ad+aWYccs5oFC81V8Wznkt7aKFb0RWuSvswxwsJsY
 xgXhtpJyocfNjJdVYr8QE1w7CANSVoAg2/cI82SF9sr0SYHvLwKQ=
X-Developer-Key: i=louis.chauvet@bootlin.com; a=openpgp;
 fpr=8B7104AE9A272D6693F527F2EC1883F55E0B40A5
X-Last-TLS-Session-Version: TLSv1.3
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Spamd-Result: default: False [0.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,akamai.com,linuxfoundation.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[louis.chauvet@bootlin.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,suse.de,linux.intel.com,intel.com,amd.com,bootlin.com,linuxfoundation.org,suse.com,chromium.org,lists.freedesktop.org,vger.kernel.org];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:dkim,bootlin.com:email,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: F083A2DD9C4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 13 Mar 2026 07:19:26 -0600, Jim Cromie <jim.cromie@gmail.com> wrote:
> [...]
> smaller alignments, *and* scripts/sorttable.c does not tolerate the
> added ALIGN(8) padding.
> 
> Reported-by: kernel test robot <oliver.sang@intel.com>
> Closes: https://lore.kernel.org/oe-lkp/202601211325.7e1f336-lkp@intel.com
> Signed-off-by: Jim Cromie <jim.cromie@gmail.com>

comments may be wrong.

>
>
> diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
> index eeb070f330bd..a2ba7e3d9994 100644
> --- a/include/asm-generic/vmlinux.lds.h
> +++ b/include/asm-generic/vmlinux.lds.h
> @@ -212,11 +212,13 @@
> [ ... skip 7 lines ... ]
>  
>  #define BOUNDED_SECTION_POST_LABEL(_sec_, _label_, _BEGIN_, _END_)	\
> +	. = ALIGN(8);							\
>  	_label_##_BEGIN_ = .;						\
>  	KEEP(*(_sec_))							\
>  	_label_##_END_ = .;

This affects a lot of existing BOUNDED_SECTION_BY. I agree that it is
not a big issue (most of them already have ALIGN(8) or ALIGN(32), but
some have ALIGN(4) or just not aligned at all). I think this can increase
the size of the kernel in other places.

What do you think about a new macro or a
BOUNDED_SECTION_BY_ALIGNED(sec,label,align) with explicit aligement?

> @@ -867,15 +869,21 @@
> [ ... skip 15 lines ... ]
>  	. = ALIGN(2);							\
>  	.orc_unwind : AT(ADDR(.orc_unwind) - LOAD_OFFSET) {		\
> -		BOUNDED_SECTION_BY(.orc_unwind, _orc_unwind)		\
> +		__start_orc_unwind = .;					\
> +		KEEP(*(.orc_unwind))					\
> +		__stop_orc_unwind = .;					\

You already noticed an issue here for example, and you had to manually
expand the macro to "disable" the align. This is error-prone, I think it is
better to keep BOUNDED_SECTION_BY here.

Note: I don't understand well linker scripts and all the implications, my

Note: I don't understand well linker scripts and all the implications, my

-- 
Louis Chauvet <louis.chauvet@bootlin.com>
