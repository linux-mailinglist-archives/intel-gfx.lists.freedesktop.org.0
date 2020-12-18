Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D8FE82DE537
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Dec 2020 15:58:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16C1C6E1BA;
	Fri, 18 Dec 2020 14:58:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E92F36E1BA
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Dec 2020 14:58:55 +0000 (UTC)
IronPort-SDR: Sm9Xga4zwMY8wV6pzQ8umjE/5/N61ZH0Qcvu+dmJ6o6XKuhUzSfPM7EC/gmx7teWN370nljTu3
 zxg/LjBV+hgw==
X-IronPort-AV: E=McAfee;i="6000,8403,9839"; a="154669634"
X-IronPort-AV: E=Sophos;i="5.78,430,1599548400"; d="scan'208";a="154669634"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2020 06:58:55 -0800
IronPort-SDR: kEWaZQObf6T79yZkag1CNZTmtRBJPFUEseEI3i9ZFxQC4iDsRcUrCqacdf09Me3szI/zIPoDi1
 SQs9hq/1ewcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,430,1599548400"; d="scan'208";a="454003979"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 18 Dec 2020 06:58:53 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 18 Dec 2020 16:58:52 +0200
Date: Fri, 18 Dec 2020 16:58:52 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Dave Airlie <airlied@gmail.com>
Message-ID: <X9zDrBU79dSgddWq@intel.com>
References: <20201218060420.3203-1-airlied@gmail.com>
 <20201218060420.3203-9-airlied@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201218060420.3203-9-airlied@gmail.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 08/13] drm/i915: split fdi code out from
 intel_display.c
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 18, 2020 at 04:04:15PM +1000, Dave Airlie wrote:
> From: Dave Airlie <airlied@redhat.com>
> =

> This just refactors out the fdi code to a separate file.
> =

> Signed-off-by: Dave Airlie <airlied@redhat.com>
> [Jani: cleaned up intel_fdi.h a bit.]
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
