Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id OPpmKXgCNWrNlwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jun 2026 10:48:56 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7147C6A4B3F
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jun 2026 10:48:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=jiBdkZw6;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=reject) header.from=mailbox.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAF6B10F4C4;
	Fri, 19 Jun 2026 08:48:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout-p-202.mailbox.org (mout-p-202.mailbox.org [80.241.56.172])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60C4E10F4DF;
 Fri, 19 Jun 2026 08:48:50 +0000 (UTC)
Received: from smtp202.mailbox.org (smtp202.mailbox.org [10.196.197.202])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by mout-p-202.mailbox.org (Postfix) with ESMTPS id 4ghWTq2RlHz9tFZ;
 Fri, 19 Jun 2026 10:48:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org;
 s=mail20150812; t=1781858927;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Tgi+e4fw/0Sq4qycaZoRwYfCNcM5LXB+zap2ccrBmwc=;
 b=jiBdkZw6reU91amguLwH+nZtrpbcp6kZssaUTb2TSp3P7IZumnUyzthW4sHZiv6EkdWfDc
 0Y5rLVDOBGwV5VnaT7jZyNAPHaDwC7rKYfA2Ar8Zc0vGtKj/8wba4M/yZUALyQ0V0l6L4w
 pFnRZgK3R/WkIhUjJR8LRXZeXBklqYi34ayYT6jcGS+DbebfHsfaN4UCekKGwRAxPhw1oe
 RnKljANYY/viJS+QRyp3bnR5OYTxB2fxhz3jZd9pniTKVVNjAXoypwto/2A4H49sK65M6S
 ZirbnaSOPporFCZXLEiJsNkAXGre1tPfib8vPAyK3wWVCjwf+di94JROQGvnrg==
Message-ID: <159d862f-f06d-4ed7-bf81-082220cdfdd6@mailbox.org>
Date: Fri, 19 Jun 2026 10:48:45 +0200
MIME-Version: 1.0
Subject: Re: [PATCH 0/4] drm/i915: Work harder to enable VRR based refresh
 rate changes on eDP
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, wayland-devel@lists.freedesktop.org
References: <20260612144203.31715-1-ville.syrjala@linux.intel.com>
 <3d441831-71bc-49fd-823f-3af443e55b20@mailbox.org>
 <31da350f-adfc-4b2c-a7c5-5ed884ffd9ca@mailbox.org>
 <ai_40qUa-MVdbOEf@intel.com>
 <18f0c14b-f973-4e1a-948b-5274cc36895c@mailbox.org>
 <ajQ7W44qv28-i6Pq@intel.com>
From: =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel.daenzer@mailbox.org>
Content-Language: en-CA
In-Reply-To: <ajQ7W44qv28-i6Pq@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-MBO-RS-META: k86p14pr5asizsd83yumi9s95nugbmrk
X-MBO-RS-ID: d157202689a012c1026
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[mailbox.org,reject];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[mailbox.org:s=mail20150812];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[michel.daenzer@mailbox.org,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	DKIM_TRACE(0.00)[mailbox.org:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7147C6A4B3F

On 6/18/26 20:39, Ville Syrjälä wrote:
> On Tue, Jun 16, 2026 at 09:21:01AM +0200, Michel Dänzer wrote:
>> On 6/15/26 15:06, Ville Syrjälä wrote:
>>>
>>> What we're doing here is selecting the actual timings to drive an internal laptop 
>>> panel, given some random cooked up modeline from userspace.
>>
>> How can user space know what cooked-up modes it can (not) expect to work with this?
> 
> Without VRR support it can only expect modes that have the same refresh
> rate as one of the modes on the connector's mode list to work.

This seems to contradict "For non-VRR panels we just pick the fixed mode whose refresh rate is closest to the user specified mode, and reject the commit if it's not close enough (<= 1 Hz)" below.


>>> We pick the actual mode from the set of "fixed modes" (ie. the modes
>>> that the panel/system itself has reported as supported via
>>> EDID/VBT/ACPI/etc.). For non-VRR panels we just pick the fixed mode
>>> whose refresh rate is closest to the user specified mode, and reject
>>> the commit if it's not close enough (<= 1 Hz).
>>
>> Can't programming different mode timings result in the panel blanking intermittently?
> 
> Userspace can specify that a modeset is not allowed, thus if the
> driver can't achieve the refresh rate change without blinks the
> commit will be rejected.

How can the refresh rate change without a modeset (without VRR)?


-- 
Earthling Michel Dänzer       \        GNOME / Xwayland / Mesa developer
https://redhat.com             \               Libre software enthusiast
