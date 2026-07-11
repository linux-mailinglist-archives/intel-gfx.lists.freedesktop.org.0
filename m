Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id IuKuA+1AUmrLNgMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Jul 2026 15:11:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C998F7419F9
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Jul 2026 15:11:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="UuM7M/Kq";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7DBC10E377;
	Sat, 11 Jul 2026 13:11:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0617810E350;
 Sat, 11 Jul 2026 13:11:04 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by tor.source.kernel.org (Postfix) with ESMTP id 375F5601D9;
 Sat, 11 Jul 2026 13:11:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 98A9B1F000E9;
 Sat, 11 Jul 2026 13:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
 s=k20260515; t=1783775462;
 bh=iCb53dcsCcB5dATh8qDXwvKoRgx+avhB4VmAxBBy4JQ=;
 h=Date:Subject:Cc:To:From:References:In-Reply-To;
 b=UuM7M/KqVFuJ3M8oaDUH18u3GqTYP/pBo3nYH64+xJZu9uUZaP20F8jXVLR5UMXzp
 xJ4pHfSt9MMyJd+qDujO8QR7ktR999yhRpS4hZPR3nEuSloObatSs1QtAQA3I5tBqo
 oy/InfwNoQQu3rnchmqeUkvpXJadp0plU9epZS7ioE2dpli3QdV/QjsD+OYyCImAr2
 kHS5PBJUyti1wgRxn9VJZda9/NgS6mAjh8IkikuaoP9t06ZogqbWIJSbZU3F1NGgWR
 MZr5Jb9Od6V3O5dXsSg/tQRxqJXZ7iZNR7AMNMqtyH+1E8w6ErVQ3FOneHz3knGPkL
 p+jY90FUDad/A==
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Sat, 11 Jul 2026 15:10:58 +0200
Message-Id: <DJVRML4G11GZ.Z7FTZH7I1LZN@kernel.org>
Subject: Re: [PATCH 01/12] dma-buf: Add reference counting to dma_resv
Cc: <christian.koenig@amd.com>, <thomas.hellstrom@linux.intel.com>,
 <ecourtney@nvidia.com>, <simona@ffwll.ch>, <nat@pixelcluster.dev>,
 <airlied@gmail.com>, <dri-devel@lists.freedesktop.org>,
 <linux-kernel@vger.kernel.org>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, <amd-gfx@lists.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
From: "Danilo Krummrich" <dakr@kernel.org>
References: <20260710190752.2355-1-christian.koenig@amd.com>
 <20260710190752.2355-2-christian.koenig@amd.com>
 <alGcHjo9fzhHshx8@gsse-cloud1.jf.intel.com>
In-Reply-To: <alGcHjo9fzhHshx8@gsse-cloud1.jf.intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.81 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MV_CASE(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[amd.com,linux.intel.com,nvidia.com,ffwll.ch,pixelcluster.dev,gmail.com,lists.freedesktop.org,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dakr@kernel.org,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C998F7419F9

On Sat Jul 11, 2026 at 3:27 AM CEST, Matthew Brost wrote:
> On Fri, Jul 10, 2026 at 08:52:41PM +0200, Christian K=C3=B6nig wrote:
>> This provides clearer ownership semantics and makes the code more
>> maintainable by removing the embedded allocation hack.
>>=20
>
> This looks a lot better to me. In particular, I agree with the last
> sentence in the commit message.

I have to disagree with this, it is the opposite. As long as the struct
dma_resv::allocated fields and the corresponding semantics exists, this doe=
s
result into less clear ownership semantics.

When the dma_resv is embedded in another object the reference count becomes
meaningless. If the object embedding the dma_resv is freed it doesn't matte=
r
whether I have a reference count, it would a UAF regardless.

It is misleading (and hence error prone) to have an API where one can obtai=
n a
reference count of an object where the underlying memory can be freed regar=
dless
of the obtained reference count.

A refernece count represents a shared ownership model, which is undermined =
if
the underlying memory is not owned by the reference count.

That said, I don't mind the reference count, but we can't mix up exclusive
ownership (embedding a structure) and shared ownership (reference count).

>> +static void dma_resv_release(struct kref *kref)
>>  {
>> -	/*
>> -	 * This object should be dead and all references must have
>> -	 * been released to it, so no need to be protected with rcu.
>> -	 */
>> +	struct dma_resv *obj =3D container_of(kref, struct dma_resv, refcount)=
;
>> +
>>  	dma_resv_list_free(rcu_dereference_protected(obj->fences, true));
>>  	ww_mutex_destroy(&obj->lock);
>> +	if (obj->allocated)
>> +		kfree(obj);
>> +}
