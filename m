Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eK2BNY9362kQNAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 16:00:47 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ADE745FEA6
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 16:00:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5828A10E3CD;
	Fri, 24 Apr 2026 14:00:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=mailbox.org header.i=@mailbox.org header.b="AF1I+hgO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout-p-101.mailbox.org (mout-p-101.mailbox.org [80.241.56.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14A6910E3CD;
 Fri, 24 Apr 2026 14:00:44 +0000 (UTC)
Received: from smtp102.mailbox.org (smtp102.mailbox.org
 [IPv6:2001:67c:2050:b231:465::102])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4g2F3Q72tfz9tp1;
 Fri, 24 Apr 2026 16:00:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org;
 s=mail20150812; t=1777039235;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=6SDpkva1CDyDwc/8PDqf/y1gmyrPMX3emqZXIY9zddg=;
 b=AF1I+hgOqZT5vH894kHT0zdrWmPq0j8KoZbftc3kgTFGiB/cMVsP0TvNIKZ5znrEY0AQpN
 FETAA3VUE9d0ilnOw/2Ak0ZhM94ditWa8HQv1N4qOAb6akW0qUhttTxUt16xHPmrxy13Tv
 W2N6/I4zhl+L+U7RSYzycDzHQutVAV0bWX+P6J8TD0nltlb6jjLUgBZUuhln92YvZHIQtd
 +WxaWklcZEkQTO5VL3pcHDMuzukkbZIHsrUSDhcCsGi3sSGu1QE6Tl4ENK/zYr6T73S2Xh
 vVlZLuO67gBH4yOQ+OcX+2HJsPI2gbjhBDbWG5BwhI/gWHlnXT/PL6iJ6+ovcA==
Message-ID: <02f8471a-881e-462e-936a-d8048cc0ae05@mailbox.org>
Date: Fri, 24 Apr 2026 16:00:26 +0200
MIME-Version: 1.0
Subject: Re: [PATCH v11 0/7] User readable error codes on atomic_ioctl failure
To: "Kumar, Naveen1" <naveen1.kumar@intel.com>,
 "Murthy, Arun R" <arun.r.murthy@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 "xaver.hugl@kde.org" <xaver.hugl@kde.org>,
 "harry.wentland@amd.com" <harry.wentland@amd.com>,
 "Shankar, Uma" <uma.shankar@intel.com>,
 "louis.chauvet@bootlin.com" <louis.chauvet@bootlin.com>,
 "Yella, Ramya Krishna" <ramya.krishna.yella@intel.com>
Cc: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Kandpal, Suraj" <suraj.kandpal@intel.com>
References: <20260331-atomic-v11-0-6a1df7ec5af8@intel.com>
 <BN9PR11MB529039EC705FBA4E5E65C64FA72F2@BN9PR11MB5290.namprd11.prod.outlook.com>
 <6f5f44d3-2490-4d19-b6aa-31056410c22a@mailbox.org>
 <BN9PR11MB52901206A25AC016817AF1F7A72B2@BN9PR11MB5290.namprd11.prod.outlook.com>
From: =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel.daenzer@mailbox.org>
Content-Language: en-CA
In-Reply-To: <BN9PR11MB52901206A25AC016817AF1F7A72B2@BN9PR11MB5290.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-MBO-RS-ID: 32f803cdefd80af69c7
X-MBO-RS-META: 8io57xtkundju7z81soewra6aegt14ms
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
X-Rspamd-Queue-Id: 2ADE745FEA6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[mailbox.org,reject];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[mailbox.org:s=mail20150812];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_TO(0.00)[intel.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,ursulin.net,kde.org,amd.com,bootlin.com];
	ARC_NA(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[michel.daenzer@mailbox.org,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[mailbox.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,mailbox.org:email,mailbox.org:dkim,mailbox.org:mid]

On 4/24/26 13:37, Kumar, Naveen1 wrote:
>> From: Michel Dänzer <michel.daenzer@mailbox.org>
>> On 4/20/26 10:32, Kumar, Naveen1 wrote:
>>>
>>> We verified atomic commit failure detection via capability flag, error
>> code/string retrieval, and fallback path execution in Mutter via MR
>> https://gitlab.gnome.org/GNOME/mutter/-/merge_requests/5022.
>>
>> I don't see any fallback handling in the mutter MR -
>> process_atomic_commit_error has only TODO comments for all failure codes.
>>
>> As such, in the current state I wouldn't consider it satisfying the user-space
>> implementation requirements for new UAPI.
> 
> Thanks for the review.
> 
> The current Mutter MR is intentionally scoped to enumerating the kernel-supported error codes and establishing the basic framework to collect early UAPI design feedback.

User-space code which doesn't do anything useful isn't suitable for giving feedback on UAPI design.

(For similar reasons, code in user-space test suites such as IGT isn't sufficient for this)


> We agree the UAPI is not ready to merge without concrete fallback handling. We can go either way:
> - Land the framework now and follow up with per-failure fallback patches, or
> - Add at least one representative fallback case in Mutter MR to demonstrate the full flow first.

Every aspect of new UAPI needs to be fully utilized in real-world user-space code.


-- 
Earthling Michel Dänzer       \        GNOME / Xwayland / Mesa developer
https://redhat.com             \               Libre software enthusiast
