Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EG8hN2uuwWmUUQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 22:19:39 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E8622FDAE6
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 22:19:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81C5D10E4AC;
	Mon, 23 Mar 2026 21:19:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=kde.org header.i=@kde.org header.b="NIwXAMPI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from letterbox.kde.org (letterbox.kde.org [46.43.1.242])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22E1210E4A2
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2026 21:19:36 +0000 (UTC)
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com
 [209.85.219.49]) (Authenticated sender: zamundaaa)
 by letterbox.kde.org (Postfix) with ESMTPSA id 5349D324C01
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2026 21:19:34 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kde.org; s=users;
 t=1774300774; bh=r20OZHTYgzoYdBQOnECr0qFhpYAC9zz0Ibdh/LXucZw=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=NIwXAMPIku8YbMuedkkPuDs98hyP1558Xik7EmjMIedrb7Y1J6VGkvZYXt0SUQlBY
 9AzKmJ/oWc5tBnQFZ5MUmLnHCS56DCNW4xZPQEG84TWTadkP0m9IRCkvPDJdY+7Wiq
 UUBTIC4dVFqdnXHasjcS6uScrwoPIo0pFUD5e6cqscQH87XDFtdVv8QzAnvTXEL2Xa
 VOFb9MkoskH1xES4IisaunvAdJ7ivKckCyQBPiPP4zrzbz4FUo+80ictL8DnbLTre8
 i06kpaxerQowe4XlQBaa5B7Hg6PpiYwhp9ogIrQRz5B2IW9WxE5Hunv6Zkv150eJSC
 eOgveT+3fl1xQ==
Received: by mail-qv1-f49.google.com with SMTP id
 6a1803df08f44-899e87b04d8so48662476d6.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2026 14:19:34 -0700 (PDT)
X-Forwarded-Encrypted: i=1;
 AJvYcCWmvfj4vcCKpBwmyf/4cjDTMeADRIFacuKbEIRkl4kpy78JvDqo4fh74gur7+/rnQy9YXmoczTv+UA=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxJLXaTng+/Sp0z0KkDkXVbH2h+PPiMDnD/+7Nu1W4ztq5wBsmG
 NwKNyiiOBvUHB9lGVCoTQcgH2lIhuw0Ood599IyMYKKkhYVpmrZpF5PtN9pMpWJhU5Ce0r1W49f
 ax/wxDXUReJMoD9dPDwHPHOcr65ZSurM=
X-Received: by 2002:ad4:5766:0:b0:89a:b7:9a9b with SMTP id
 6a1803df08f44-89c85a99ac1mr228043676d6.58.1774300772939; 
 Mon, 23 Mar 2026 14:19:32 -0700 (PDT)
MIME-Version: 1.0
References: <20260223-atomic-v10-0-f59c8def2e70@intel.com>
 <CAFZQkGw=VJnzFWnh7GT_59NhuSTiy3-VPOcKdWTZX14rkgW_uw@mail.gmail.com>
 <ec9b1e8d-daab-48a7-959a-bfc5309b3ea9@intel.com>
In-Reply-To: <ec9b1e8d-daab-48a7-959a-bfc5309b3ea9@intel.com>
From: Xaver Hugl <xaver.hugl@kde.org>
Date: Mon, 23 Mar 2026 22:19:21 +0100
X-Gmail-Original-Message-ID: <CAFZQkGxLWnrt1be4S6pJj0qVRfVPXkzvZODNNNKWjpD2NNTAeA@mail.gmail.com>
X-Gm-Features: AQROBzBi1GIjCBzS3clAXX8UAOhv46EtsZX2EO34VxBgkUC-vgFWSwdNg9EAQo4
Message-ID: <CAFZQkGxLWnrt1be4S6pJj0qVRfVPXkzvZODNNNKWjpD2NNTAeA@mail.gmail.com>
Subject: Re: [PATCH v10 0/7] User readable error codes on atomic_ioctl failure
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, 
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, 
 harry.wentland@amd.com, uma.shankar@intel.com, louis.chauvet@bootlin.com, 
 naveen1.kumar@intel.com, ramya.krishna.yella@intel.com, 
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, Suraj Kandpal <suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[kde.org:s=users];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:arun.r.murthy@intel.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:harry.wentland@amd.com,m:uma.shankar@intel.com,m:louis.chauvet@bootlin.com,m:naveen1.kumar@intel.com,m:ramya.krishna.yella@intel.com,m:dri-devel@lists.freedesktop.org,m:intel-xe@lists.freedesktop.org,m:suraj.kandpal@intel.com,s:lists@lfdr.de];
	DMARC_NA(0.00)[kde.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[xaver.hugl@kde.org,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,ursulin.net,amd.com,bootlin.com,lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[xaver.hugl@kde.org,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kde.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 4E8622FDAE6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> Have added the remaining error codes to the enum
> drm_mode_atomic_err_code, will push as part of patchset 11.
I think it would be best to limit the enum values to actionable
things. Connector and scanout bandwidth sound useful and pretty
straight-forward to me, but the three other new values don't seem
useful for compositors at the moment.

> DRM_MODE_ATTOMIC_PIPE_BW
Compositors aren't aware of pipes. What would they do with that information?

> DRM_MODE_ATOMIC_MEMORY_DOMAIN
> DRM_MODE_ATOMIC_SPEC_VIOLOATION
I can't think of anything a compositor would do differently with these
vs. "unspecified_error".

> As far as the enum INVALID_API_USAGE is concerned, there is a certain
> understanding on the
> usage of the atomic_ioctl,  any miss in that would fall in this
> category.
Invalid API usage would mean the compositor did something it can know
in advance is wrong based on the KMS API. It can't be used as the
default value.

> Some of them include
>      - Driver doesnt support atomic, but still atomic_ioctl being used
>      - Invalid/Junk flags
>      - Async flip not supported
>      - Flag page flip event along with test only is not supported
> If changing this INVALID_API_USAGE to UNSPECIFIED_ERROR makes more
> sense, I can change that.
No, they're two different things. We need both, and unspecified_error
needs to be the default for when the driver doesn't set anything more
specific.

- Xaver
