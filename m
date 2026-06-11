Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id koF9I0UELGq0JgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2026 15:06:13 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40D5C6799F9
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2026 15:06:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=gmail.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A93E10F4A3;
	Fri, 12 Jun 2026 13:06:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com
 [209.85.219.53])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB84110F000
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jun 2026 15:45:17 +0000 (UTC)
Received: by mail-qv1-f53.google.com with SMTP id
 6a1803df08f44-8ccef6cbd0eso44916d6.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jun 2026 08:45:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1781192717; x=1781797517;
 h=mime-version:content-transfer-encoding:references:in-reply-to
 :subject:cc:to:from:date:message-id:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=1hYUOez/VrABHBpS6NHt7hGpb7MijgsYC8xxIeD/ouw=;
 b=XcwI9pI598LFmX0Efd1G0wTV+8zRmFktPq1ZVa/gyY03YQ8zalmdWB38pmuQ0wb5aa
 CgNQrBKmReijENXIehcGrHbYw/AzyfZ6niX/Vescni9l3KcDiKsPQRRIegFt1mnWvMYX
 tA54WOoYNLy8sLMqB4AZs2Z1Q6aomXPgqdnoFzoX3x9kxxdCmMErSm6tPWgizObsyiEc
 xousl5bf9s6dDHiqJNjqoFbAoLfTnai+WSlHnYH1ZRvQo/LzI36PXY9jttBjI0na1zal
 wL/BCKQde6uS/6vpsc3W94C54xp4mlgK4elVrFZWlhweKicQobhwJnU9A0MJOinNIPx5
 RAYQ==
X-Gm-Message-State: AOJu0YxbEjaq/JyyaFvCmyPn+OvU+Lm6co1AFlQ41hGbeuQbVz3PSMtf
 mxQaVzAhN1AA3Aq3T/8I6lA2vq4CFIMrtYCZBzxLY9jG8Yf/flYty9RQitadoKZl
X-Gm-Gg: Acq92OHh7Mo3I4XZbJCMz5zHF4cILvXYn/SR3/RTXgPg8T1a+KaP5eJo8/fVdTkHOSZ
 RFk1W9kznJ0I8dKLUaDjtqjJbmOwkJ+IxWsPZuyiJYMIbzpfJUxWYd2hvvBuLk0iBeQpwKkV090
 z/Y04mm+KoMlq7P4hcoGFbsqVieBbqzkMa9lTb2ghkzS1qsmlUzGIN4CkH5pw4PMdseJ9LvTB2c
 dj06/L2Wcq3Mg2bl7rFDAKtKN5ONH3POUThLywecSRIu1X6POVVXz0aCiwaqcoqjI3RkUVkjU2g
 ca5mDE/uBVV2L5RinpGLq66/GYpTi2J3piGmiriyOC8B2rscp4eYXNMooa7rve9R8Z/Z6/+HX6s
 So0Dgaps8DPKa8e/DdamWlOvxBksjN5AxbIAGmX1fvlbHn4YHS+XME9oS524uq3VTyhDJcWS1BH
 YBd5Rsx6YVNc7K3utXXMk0KrxmtImrU80V0BTMBWSkoQlLG9O8N3rnbBo/94n0A1LIE6/21qGYS
 5zP7aZ/+lSOAJJh0eM6apzTDczG0hpvw5rmtjum7PKy5QhL32ZyAT/1UA6tvBbGpjfvG9Ngb9Ft
 jA==
X-Received: by 2002:a05:6214:23c6:b0:8ac:4fd1:2d5d with SMTP id
 6a1803df08f44-8d1dbbc32d1mr33900006d6.5.1781192716713; 
 Thu, 11 Jun 2026 08:45:16 -0700 (PDT)
Received: from debian-t14-gen1-fuhrysteve.fuhry.app
 (6.sub-75-230-138.myvzw.com. [75.230.138.6])
 by smtp.gmail.com with ESMTPSA id
 6a1803df08f44-8d1ea7c170csm21161846d6.28.2026.06.11.08.45.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Jun 2026 08:45:16 -0700 (PDT)
Message-ID: <6a2ad80c.dc7b3156.376f02.dea5@mx.google.com>
Date: Thu, 11 Jun 2026 08:45:16 -0700 (PDT)
From: Stephen J. Fuhry <fuhrysteve@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jouni =?utf-8?q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 Animesh Manna <animesh.manna@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: [PATCH] drm/i915/display: fix ALPM error handling in
 psr_alpm_check()
In-Reply-To: <20260611144956.710911-1-fuhrysteve@gmail.com>
References: <20260611125408.676626-1-fuhrysteve@gmail.com>
 <20260611144956.710911-1-fuhrysteve@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 12 Jun 2026 13:06:10 +0000
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
X-Spamd-Result: default: False [-0.51 / 15.00];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[fuhrysteve@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[4];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,mx.google.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 40D5C6799F9

Thanks for the explanation Jouni. I missed the has_psr guard in
intel_alpm_enable_lobf() -- LOBF can't be active while PSR2 is running,
so the double-read consequence is benign.

Dropping this patch.
