Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 372BB55FAB5
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jun 2022 10:37:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83D2A10F783;
	Wed, 29 Jun 2022 08:37:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A125910F783
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jun 2022 08:37:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656491834; x=1688027834;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AyjMVTaQTJCbb9rBYdh6t7GNExFz5BIYwoEuevlJ+Cg=;
 b=DvX5+KqOPeXFwynNZOJBPdGwHdkELHNw09G602gNO/WW2JY3RR88HSDx
 cJoTKuhVJv4H4mWiu+6WrUPieTegUx3f+pM2QE0+XRPaMp9edF8WCQBBx
 kTvIVSsruMAxouRBD1OGAKqFOKGkJ+57otzKddZOuxpWpy2MW95qGuYN5
 tfC0Tn91xeVXcehKgfJaVZwrVxVGoP6w9JkilmuOL0N23nQyDp/wmDvFu
 3qCSUJe0IAWp5E9VShwpNoFXeI7Ea07A2JiB4njS7D6TIv7SeEVXSnBQ+
 igKJYK41gzYaITO+w4zmc18JvJBxTPa+bLjDtQ7RwAiWJfYy82W8e+3cS Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10392"; a="343660815"
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="343660815"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2022 01:37:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="588228562"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP; 29 Jun 2022 01:37:14 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 29 Jun 2022 01:37:13 -0700
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15]) by
 ORSMSX602.amr.corp.intel.com ([10.22.229.15]) with mapi id 15.01.2308.027;
 Wed, 29 Jun 2022 01:37:13 -0700
From: "Winkler, Tomas" <tomas.winkler@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Usyskin, Alexander"
 <alexander.usyskin@intel.com>
Thread-Topic: [PATCH v3 13/14] mei: debugfs: add pxp mode to devstate in
 debugfs
Thread-Index: AQHYii6cshzBS1Jzdke8w99Tn+SqLa1mD+iw
Date: Wed, 29 Jun 2022 08:37:13 +0000
Message-ID: <c23228be48c0416fbec7937c6008a204@intel.com>
References: <20220619133721.523546-1-alexander.usyskin@intel.com>
 <20220619133721.523546-14-alexander.usyskin@intel.com>
 <Yrm4aZa4y6nwJBva@kroah.com>
In-Reply-To: <Yrm4aZa4y6nwJBva@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
x-originating-ip: [10.184.70.1]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 13/14] mei: debugfs: add pxp mode to
 devstate in debugfs
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
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>, "Lubart, Vitaly" <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

>=20
> On Sun, Jun 19, 2022 at 04:37:20PM +0300, Alexander Usyskin wrote:
> > From: Tomas Winkler <tomas.winkler@intel.com>
> >
> > CC: Vitaly Lubart <vitaly.lubart@intel.com>
> > Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
>=20
> We can not take patches without any changelog text, you know this :(

Okay, will add some more info.=20
>=20
> > ---
> >  drivers/misc/mei/debugfs.c | 17 +++++++++++++++++
> >  1 file changed, 17 insertions(+)
> >
> > diff --git a/drivers/misc/mei/debugfs.c b/drivers/misc/mei/debugfs.c
> > index 1ce61e9e24fc..4074fec866a6 100644
> > --- a/drivers/misc/mei/debugfs.c
> > +++ b/drivers/misc/mei/debugfs.c
> > @@ -86,6 +86,20 @@ static int mei_dbgfs_active_show(struct seq_file
> > *m, void *unused)  }  DEFINE_SHOW_ATTRIBUTE(mei_dbgfs_active);
> >
> > +static const char *mei_dev_pxp_mode_str(enum mei_dev_pxp_mode
> state)
> > +{ #define MEI_PXP_MODE(state) case MEI_DEV_PXP_##state: return
> #state
> > +	switch (state) {
> > +	MEI_PXP_MODE(DEFAULT);
> > +	MEI_PXP_MODE(INIT);
> > +	MEI_PXP_MODE(SETUP);
> > +	MEI_PXP_MODE(READY);
>=20
> Just spell out the case and return lines, don't create macros for no good
> reason please.

We use those print macros paradigm consistently int the code, the macro has=
 a very limited scope.
We are aware of wrong sides of macros but this just little of synthetic sug=
ar  no some wild usage.
We believe it helps readability, and it keeps the code consistent.

Other usages:

hbm.c:#define MEI_HBM_STATUS(status) case MEI_HBMS_##status: return #status
hbm.c:#define MEI_CL_CS(status) case MEI_CL_CONN_##status: return #status
hbm.c:#define MEI_HBM_STATE(state) case MEI_HBM_##state: return #state
init.c:#define MEI_DEV_STATE(state) case MEI_DEV_##state: return #state
init.c:#define MEI_PG_STATE(state) case MEI_PG_##state: return #state


Thanks
Tomas

