Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3DD087204A
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Mar 2024 14:35:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61F3910E0A9;
	Tue,  5 Mar 2024 13:35:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="Jy1g5BMb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70D8B10E0A9
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Mar 2024 13:34:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="4057496"
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; d="asc'?scan'208";a="4057496"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 05:34:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; d="asc'?scan'208";a="9801538"
Received: from omakhlou-mobl4.amr.corp.intel.com (HELO localhost)
 ([10.252.51.143])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 05:34:57 -0800
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Tue, 05 Mar 2024 15:34:54 +0200
Resent-Message-ID: <877cig3ipt.fsf@intel.com>
X-Original-To: jani.nikula@linux.intel.com
Received: from fmviesa010.fm.intel.com (fmviesa010.fm.intel.com
 [10.60.135.150])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 6B27A580201;
 Tue,  5 Mar 2024 02:54:21 -0800 (PST)
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; d="asc'?scan'208";a="9275164"
Received: from orvoesa107.jf.intel.com ([10.18.183.147])
 by fmviesa010-1.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 02:54:21 -0800
X-IPAS-Result: =?us-ascii?q?A0ELAACU+OZlmLHS/INaHAEBAQEBAQcBARIBAQQEAQFAg?=
 =?us-ascii?q?TsHAQELAYFmUhkBYoFfA4xvX4ZJgiIZki8ciyYUgSwvCA8HAQEBAQEBAQEBB?=
 =?us-ascii?q?AMBAS4NBgECBAEBAwSMdAImNAkNAQECBAEBAQEDAgECAQEBAQEBCAEBAQICA?=
 =?us-ascii?q?QEBAgEBBgMBAQEBAhABAQEBAQEBAR4ZBRAOJ4UvPQ2CNyUBEIEOgSYBAQEBA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEXAg18AQEEAQEPLgEBBAopAQIDAQIGAjcNBAgDAS8BB?=
 =?us-ascii?q?QE6HYJeAYJfAwEEDKNmAW6BBUKKQAEBAQF1gTSBAYIKAQEGgVhBrwaBWgcDB?=
 =?us-ascii?q?hSBNAGBVoZECwGJN3onG4FJRHqFVYEPBIEXgQYOhXaBGINfW5JygmOGfoFvA?=
 =?us-ascii?q?4EFaxsQHjcREBMNAwhuHQIxOgMFAwQyChIMCx8FEkIDQwZJCwMCGgUDAwSBL?=
 =?us-ascii?q?gUNGgIQLCYDAxJJAhAUAxsdAwMGAwoxMIEWDFADTRcfMgk8DwwaAi8NJCMCL?=
 =?us-ascii?q?EoKEAIWAx0aMBEJCyYDKgY2AhIMBgYGXSAWCQQlAwgEA1QDIHQRAwQaBwsHO?=
 =?us-ascii?q?hgmgl9nBBNEA4FEiiSDRSqBWwNEHUADeD0WHxQbBqIYAYJOaAlOAiJOAYFXA?=
 =?us-ascii?q?i0DlXABrzSEHIwJlThFg3KMeoYyDDmSMZhbjXCaYgIKBwYQI4FBOgIsgSYBB?=
 =?us-ascii?q?zMaCBsVgyJSGQ+OIIN6j3pEMwIENQIHCwEBAwmFQwMBASETgyUBgUYBAQ?=
IronPort-PHdr: A9a23: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
 gqNETh5o2uDAu/ZEBKD8k5ix08=
IronPort-Data: A9a23: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
 us9vA5u3oBdabW4VoMNQAR51rKEXOQ5
IronPort-HdrOrdr: A9a23:SON/AaOe8fzVq8BcTlWjsMiBIKoaSvp037BK7SpMoNJuA7Glfu
 SV7YQmPH7P+UcssRQb9+xoV5PwOU80n6QY3WAuB8bpYOCLghrSEGmNhbGStQEJNUXFh6ZgPI
 1bAtxD4OSZNykysS4RiDPIWOrIueP3h5xA5t2usUuFLzsaFJ2ItD0Jfzpze3ceLGIoZOtbZe
 OhD+V81nedkB8sH7iG7xc+LpL+TxyiruOUXffEPW9D1OBNt0LL1Fc3KWn+4v+yOAku/V+smV
 K14TARi5/Pjxhz8G65pgnu06g=
X-Talos-CUID: =?us-ascii?q?9a23=3AotgxMGhy1/cRVOsRZx4lelQVaDJuUXnHkHPQEUq?=
 =?us-ascii?q?EJkk2FZi0dma9v7hinJ87?=
X-Talos-MUID: 9a23:i5ggxgpnko9Ea98iDUIezx88c+hSxvr2NGEQ1shXsuC5Nh13OB7I2Q==
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="7990154"
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; d="asc'?scan'208";a="7990154"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from gabe.freedesktop.org ([131.252.210.177])
 by mtab.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Mar 2024
 02:54:20 -0800
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4616910E45F;
 Tue,  5 Mar 2024 10:54:17 +0000 (UTC)
X-Original-To: dri-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BD1710E45F
 for <dri-devel@lists.freedesktop.org>; Tue,  5 Mar 2024 10:54:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1709636055;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=xBGQevaPbKkfZEzBHZzBFZQ2yVfLSWmrdiNZnOMaYqA=;
 b=Jy1g5BMbpIOrr1ucFMj+mpk7P1+o9Sl0ejNWA7fQ9HmwUaOV+jPCTRFxRz0vwPH3VjaIvy
 d5IZrgWWLp2dgIv8eVICVzR1C5VKbYWwylMDl/hfZ3eRrzNdGG2lhWeOX/e4cmC01T42Il
 cz92NcNFdx4fs1+iS0ZFY5nmlTi9v2g=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-7-u7A6V8EFP8iQG4yXwn0tog-1; Tue, 05 Mar 2024 05:54:13 -0500
X-MC-Unique: u7A6V8EFP8iQG4yXwn0tog-1
Received: by mail-wr1-f70.google.com with SMTP id
 ffacd0b85a97d-33deb1f7afdso2804207f8f.2
 for <dri-devel@lists.freedesktop.org>; Tue, 05 Mar 2024 02:54:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709636052; x=1710240852;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=xBGQevaPbKkfZEzBHZzBFZQ2yVfLSWmrdiNZnOMaYqA=;
 b=b+W1JiBRu5ssaw5eWME+rIe80Oj5jjF2mid6Vv5UMphG8XQoqa3ZfCQdB/VdjWAtl3
 FMV/veMLOSZSkmy6Sy1pzJ7IBHbCE005BNZKJ2cUTPSNVOt33kjwU9IT6kE4DZfgsOnv
 S5VhbBNZ8uMdiMmlKU7uHE4u+hQ8dF6QmsJzN7O0+4c/VN196tVY51sO1cvypLtXukOc
 UB6MuI8BCy8THqiq0kwpgzkWTltF0Egp05XqN6gQiarvnGBA2bu1wuXvPuGy3luq/dQz
 DhDBEDIeZg9ewcgi5l5kEfeTWaMQ6B8w0gUQ5Le6h+JlgRqVzKc6FN1EnN+5wraneyX4
 4wKw==
X-Gm-Message-State: AOJu0YwlpQBwa/dO0d0O4P4RphplF65bvHq1Q6sdEGttoGiX5NGtD5Gf
 42ZR9y72u/cP20Tm5mfwhYgXOroElMgtfTGDbU+UZyA7tBN8lIb1efbJUDdzWQQ1xqiueBX92Gh
 AyqzzeypFmX5RBexSfNYeVjPpXbB194+RnFuguqio9vQF6JMt722hvn4fK53nngbVbUev+SxMn9
 CwCc88Tld4wLfAUAFT2e1u3uJO5l5xvaXJduiFt9uToNZKHHN8
X-Received: by 2002:adf:a4c3:0:b0:33d:5484:e451 with SMTP id
 h3-20020adfa4c3000000b0033d5484e451mr7755802wrb.34.1709636051970; 
 Tue, 05 Mar 2024 02:54:11 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGNgoAP+8tkeXxunL2pSz2s2pcw5HRxs8RnRVS9c3od3mh/xU66tm2745lMfTylVo1dLTKtwQ==
X-Received: by 2002:adf:a4c3:0:b0:33d:5484:e451 with SMTP id
 h3-20020adfa4c3000000b0033d5484e451mr7755781wrb.34.1709636051619; 
 Tue, 05 Mar 2024 02:54:11 -0800 (PST)
Received: from localhost ([2a01:e0a:b25:f902::ff])
 by smtp.gmail.com with ESMTPSA id
 cr14-20020a05600004ee00b0033dd06e628asm14661488wrb.27.2024.03.05.02.54.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Mar 2024 02:54:11 -0800 (PST)
Date: Tue, 5 Mar 2024 11:54:11 +0100
From: Maxime Ripard <mripard@redhat.com>
To: dri-devel@lists.freedesktop.org
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, David Airlie <airlied@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, Maxime Ripard <mripard@kernel.org>, 
 Daniel Stone <daniels@collabora.com>, Benjamin Tissoires <bentiss@kernel.org>
Subject: drm-tip Migration to Gitlab
Message-ID: <20240305-congenial-powerful-tench-a3d5ef@houat>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="ss4pztxfiu46qvg2"
Content-Disposition: inline
X-BeenThere: dri-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
X-TUID: pnfgEKE3JP8U
X-BeenThere: intel-gfx@lists.freedesktop.org
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


--ss4pztxfiu46qvg2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

In order to prepare for the drm-misc migration that should happen next
week, Benjamin and I just migrated drm-tip to Gitlab.

It should be effective as of 5 minutes ago, the old cgit repo being
currently marked read-only, and will be setup as a mirror.

Thanks to the work done last week, we should be able to smoothly
transition any dim user after running dim ub twice.

However, this is the first time we're migrating a repository that users
write to, so it might cause some issues for people that haven't setup
their Gitlab account, and especially their SSH key.

If that's the case, you should add your SSH key in Gitlab. See the
documentation here:
https://docs.gitlab.com/ee/user/ssh.html#add-an-ssh-key-to-your-gitlab-account

If it still doesn't work, please reach out to me.

Maxime

--ss4pztxfiu46qvg2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZeb50gAKCRDj7w1vZxhR
xdUHAP46+ToWptRkyZvFbQI6B+VoOuThyHbEQCX+96U5hB0i1AD+MrXwzuBc9u5h
JzQKf64wy2o2Q/RztkdHwYEiGGP3Zgg=
=bo7B
-----END PGP SIGNATURE-----

--ss4pztxfiu46qvg2--

