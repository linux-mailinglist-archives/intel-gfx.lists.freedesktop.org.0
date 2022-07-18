Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DE56578436
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jul 2022 15:47:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AC3E113563;
	Mon, 18 Jul 2022 13:47:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26A9A112721
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Jul 2022 13:47:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658152057; x=1689688057;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=E9AP2s70xFyX/Kx7r8Cy/LmGrjmh6rN1yf6uQ7FJICQ=;
 b=faDVnAO+ceojyrsaOq4w7Mx18ADCRqwqjvV2WDscVGQTnEN9Vj0PjnIn
 vkTrrvBVkg4FMU4GR5lXPGvbC3XDOb2ocDcCGTSCGb91xcQ7njFPtYIMK
 G7q14af9L5MLeuKO1HxjI2OViF3+Zf5AL4Pbe1oszSfX0mHjXU2yN6Pt7
 XHXw/GaERUETNhtZCX01NveRaMzfcG3LPuExo4zEYZwQsYDlgtn3Jhlj9
 wdBC8gomaUP6yYHOsrKX7pvhwAh1GwXxQoIDyYWry+0ZhZ4IZj4FTcdbZ
 o6TZtCzQgOPn8YLFGSCaTl/7qacktqKu+MkTjmWUq6oRrzJMf/bg9uYql A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10411"; a="350183948"
X-IronPort-AV: E=Sophos;i="5.92,281,1650956400"; d="scan'208";a="350183948"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2022 06:47:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,281,1650956400"; d="scan'208";a="624735226"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga008.jf.intel.com with ESMTP; 18 Jul 2022 06:47:36 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 18 Jul 2022 06:47:35 -0700
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15]) by
 ORSMSX602.amr.corp.intel.com ([10.22.229.15]) with mapi id 15.01.2375.028;
 Mon, 18 Jul 2022 06:47:35 -0700
From: "Winkler, Tomas" <tomas.winkler@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "Usyskin, Alexander"
 <alexander.usyskin@intel.com>
Thread-Topic: [PATCH v5 02/14] drm/i915/gsc: add slow_fw flag to the mei
 auxiliary device
Thread-Index: AQHYkS2y4nDoBS6zcUm7lJX3uj+Lia1zfVmAgA+SR+A=
Date: Mon, 18 Jul 2022 13:47:35 +0000
Message-ID: <c5cae0f43af84182b9539085012088d8@intel.com>
References: <20220706114345.1128018-1-alexander.usyskin@intel.com>
 <20220706114345.1128018-3-alexander.usyskin@intel.com>
 <Ysb5464dRPxPrp0d@intel.com>
In-Reply-To: <Ysb5464dRPxPrp0d@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v5 02/14] drm/i915/gsc: add slow_fw flag to
 the mei auxiliary device
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
Cc: David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Lubart,
 Vitaly" <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


>=20
> On Wed, Jul 06, 2022 at 02:43:33PM +0300, Alexander Usyskin wrote:
> > Add slow_fw flag to the mei auxiliary device info to inform the mei
> > driver about slow underlying firmware.
> > Such firmware will require to use larger operation timeouts.
> >
> > Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
> > Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
> > Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> > ---
> >  include/linux/mei_aux.h | 1 +
>=20
> This patch has a wrong subject since it doesn't touch i915.

This is in a shared file between drm and mei, but I can resend.

>=20
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/include/linux/mei_aux.h b/include/linux/mei_aux.h index
> > 587f25128848..a29f4064b9c0 100644
> > --- a/include/linux/mei_aux.h
> > +++ b/include/linux/mei_aux.h
> > @@ -11,6 +11,7 @@ struct mei_aux_device {
> >  	struct auxiliary_device aux_dev;
> >  	int irq;
> >  	struct resource bar;
> > +	bool slow_fw;
> >  };
> >
> >  #define auxiliary_dev_to_mei_aux_dev(auxiliary_dev) \
> > --
> > 2.34.1
> >
