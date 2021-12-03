Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E5BD4678FA
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Dec 2021 15:00:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4BC57AE5C;
	Fri,  3 Dec 2021 14:00:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25A237AE5C
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Dec 2021 14:00:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10186"; a="235710834"
X-IronPort-AV: E=Sophos;i="5.87,284,1631602800"; d="scan'208";a="235710834"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2021 06:00:50 -0800
X-IronPort-AV: E=Sophos;i="5.87,284,1631602800"; d="scan'208";a="597984875"
Received: from cwilso3-mobl.fi.intel.com (HELO localhost) ([10.252.2.122])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2021 06:00:47 -0800
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20211203132108.539496-1-janusz.krzysztofik@linux.intel.com>
References: <20211203132108.539496-1-janusz.krzysztofik@linux.intel.com>
From: Chris Wilson <chris.p.wilson@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Fri, 03 Dec 2021 14:00:45 +0000
Message-ID: <163854004560.17808.14355974584451078248@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 0/2] Backport upstream commit e49a8b2cc852
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Janusz Krzysztofik (2021-12-03 13:21:06)
> diff --git a/0001-drm-i915-gt-Cleanup-partial-engine-discovery-failure.pa=
tch b/0001-drm-i915-gt-Cleanup-partial-engine-discovery-failure.patch
> index efadd30d8cad..62b0a41d4aa4 100644
> --- a/0001-drm-i915-gt-Cleanup-partial-engine-discovery-failure.patch
> +++ b/0001-drm-i915-gt-Cleanup-partial-engine-discovery-failure.patch
> @@ -8,20 +8,20 @@ some engines will be fully setup and some not. Those in=
completely setup
>  engines only have 'engine->release =3D=3D NULL' and so will leak any of =
the
>  common objects allocated.
> =20
> -Incorporates some suggestions from Janusz for handling pinned context
> -cleanup.
> +v2: no longer incorporates suggestions from Janusz for handling pinned
> +    context cleanup since upstream version has been backported

Noting the absence of something not explained just adds confusion.

You've handled this appropriately as a standalone patch, no more needs
to be said here (and the chunk doesn't even appear in the patch
anymore).

The covernote explained why this chunk disappears, so we have a story
for the pile, which is a different story as that told by the series of
individual patches.

Reviewed-by: Chris Wilson <chris.p.wilson@intel.com>
-Chris
