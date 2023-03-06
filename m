Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 692F76ABFDD
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Mar 2023 13:50:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D47C810E363;
	Mon,  6 Mar 2023 12:50:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02EB710E363
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Mar 2023 12:50:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678107028; x=1709643028;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FTm4oiNSCjkWUZ7h4LZ7bcFR2NXtamkbRI+4xKsaDzM=;
 b=l+NFeOUORODhH4SCclX0hhnzNbFWowYBu9Id0OqQb72ivBfYf4H7fUJ2
 JXXbiDlpCHdS/oF3KYR0AB/xNCE5V4BDcG0gvy7cGZcJdEBk1e9aG2ikt
 SxFHjtfH/hoypXsOshr08JYpVDO3BFIZjXtKTaT7iMPr4qwIhqKyOTxxd
 92JpVPTzri9jq+D/sX1xGDAouqAQWxZTx+pWSHolaWugqfwIeNR4RRavZ
 fngRmVakC5QUhVsZTv88slkQox3yP9lHueMvdXd+9Am0Bw09I0d6B9HvG
 dgHN9nG3TCrM6swznJz/4P6gIn92DAE2XnO4biuFbVaVznkgWJu/4HGxz Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10640"; a="335565301"
X-IronPort-AV: E=Sophos;i="5.98,236,1673942400"; d="scan'208";a="335565301"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2023 04:50:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10640"; a="786214406"
X-IronPort-AV: E=Sophos;i="5.98,236,1673942400"; d="scan'208";a="786214406"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP; 06 Mar 2023 04:50:27 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 6 Mar 2023 04:50:26 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 6 Mar 2023 04:50:26 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 6 Mar 2023 04:50:26 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 6 Mar 2023 04:50:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JrP9G5kbaoX63vuhWd6ga3LwPoGvbB+oAVxRdeV4Y+7F0kH/WYIabjzuQYzWtVTGdOEZFZsC528+MHHQsKjLtDR5CdDJJyXAFVUbVSJjUHPA8KkKfFj+ckC4xdO6FFRYc/d2cJHX63pTuertHKzlzOKZYEkBETbJeiufHDIinC9i8P3Q9vbzsddXFMFUTTdlkwveDhKYz+wXeN3B9PRS0vhRUteSV+BPgSZaLI/2SHGtDvBgr1WblfHTb03ypf7pXyqhlQiffsUu19DiHauxj1+mRK7IuhuQbuk8mR6WUR/MLwBiMmBZUbI2KifIfmgmNysJrZTjF0NsX3ow/EVZSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xUVCv9ugSCfG+z0fzr+4iXHfX/HFsmE7dGPWdd+c1bo=;
 b=eRQiOb3RxQt1E1VhlEMAhFwD7JFfUeN1rxQEbpslHSK4+h71qRQlWSrtcI/NX8f0LcvZSfoiQ7i1jkm1gYGs4+sXJ0tuB4JYQCm+whbZel33i/JSor+hVSkPyAMPRynKqoSQ5WpuKdaI22MU4dzFnfooeAOtcCF5UkZ91UTa6mZ2qXiqJdtkYQiQ7QDchVkB4FhKwQ8ja067N3n0Aq2Md9KjLRMkIVvKWIJt3pM5ofCrxAFYYuOKrp/dqUk4+SvfyYKtLvY60FUEtrP/G7dMvwTwBW8dUXwTVeVXCU6ysFSvhQgLl8rZzsFdEZHVXvNwC5fn8hhZGjrh1+F/TJUwvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1741.namprd11.prod.outlook.com (2603:10b6:300:10d::20)
 by SN7PR11MB8112.namprd11.prod.outlook.com (2603:10b6:806:2ea::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.23; Mon, 6 Mar
 2023 12:50:23 +0000
Received: from MWHPR11MB1741.namprd11.prod.outlook.com
 ([fe80::469:cdec:dfa7:2c73]) by MWHPR11MB1741.namprd11.prod.outlook.com
 ([fe80::469:cdec:dfa7:2c73%7]) with mapi id 15.20.6156.028; Mon, 6 Mar 2023
 12:50:23 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v10 2/6] drm/i915/hdcp: Keep hdcp agonstic naming
 convention
Thread-Index: AQHZNhzgpyOjf3vnE0yl74Odq3eglq7t1CyAgAARKSA=
Date: Mon, 6 Mar 2023 12:50:23 +0000
Message-ID: <MWHPR11MB17413E114A18BCF17F48A0E9E3B69@MWHPR11MB1741.namprd11.prod.outlook.com>
References: <20230201090806.3008619-1-suraj.kandpal@intel.com>
 <20230201090806.3008619-3-suraj.kandpal@intel.com>
 <DM4PR11MB6360059DB3B31D8DE29A9DCDF4B69@DM4PR11MB6360.namprd11.prod.outlook.com>
In-Reply-To: <DM4PR11MB6360059DB3B31D8DE29A9DCDF4B69@DM4PR11MB6360.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR11MB1741:EE_|SN7PR11MB8112:EE_
x-ms-office365-filtering-correlation-id: 7fce34e9-be79-4181-665a-08db1e4159e2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yjMyQiXBX1JpCVjAIZ7DPDPGY5GseantHfW/i4iVXigxlT9AfMOhqGMFNl1lvsnjDfh0OHV2lGreuFlfB5RYR771IiBqQ40PyZdML9Vr2wUg1D6k4Gl2z/sBGSBAgzwNncbfd2rs1MCtHK9EVWqgH7cr7JGDp+RNaSvzWaNuLXsw4l2RwxXEXjmrgTvNZy76ZeSag4Jsbi3JEWmpqOGvYlI6dEzhN8pWnnDkk0iUjf/iHKMplO4ghjPGV0M2Nw6PYVStUA2IK4MYuBIZSP1qISuief19QopRC4Sswk0dXxU2Aqqm0EkBn3S29ui7x0FO1bkJ5t8pM9BesxcSqQ5uP7JuaGtghtDH1z09lgemkir9wF19vFbpPzwrJtA8uZuKyLJLiENk1+6OoLoF/YmNUYKZXsCWu3t8ippF85EASBdFi48rF+glauTqOWeQOCv9udNfyRKz9cPG5exxNRyFQZKcPe4130jGYilv+XgCDJpmVL4QwqS0VgHQGtZ82RFCfqG0Vqbe/HISFNvXX8ASfPh00vwdIkG4cItUnMqoSZbF8LnvWAuPaoR7FSSlQ2kHrQ5qW+Bayi1lC3DmJ7WR7ezP64suaaLddrmscJoOCJzMQH04Qqqoi5P8OUuBTWxsM5HW5AfEfAWhmpblaeHGw3cH4zY6Antg6tMhLzH/OA+zsqV3uz1XXBFzIP9PhgUKVj6K/MLvP5LtKwiEcKYvVQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1741.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(136003)(376002)(366004)(346002)(396003)(451199018)(66476007)(66446008)(66946007)(71200400001)(76116006)(66556008)(26005)(186003)(9686003)(4326008)(8676002)(64756008)(6506007)(7696005)(83380400001)(478600001)(107886003)(53546011)(33656002)(55016003)(110136005)(54906003)(86362001)(38070700005)(30864003)(316002)(5660300002)(2906002)(41300700001)(82960400001)(52536014)(38100700002)(8936002)(122000001)(579004)(559001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?wm4T+vQKv4WSQkOgwhKlvUdEiw/+Sv75tNzNXcnmmeRbxCRVv+gkHXID5C0v?=
 =?us-ascii?Q?j/kfwDq4J5lyqW0axhf5Lv2F3Ryr9MXbtEPInSIQNFQeGR9eSBAHc9QpCXf3?=
 =?us-ascii?Q?HqMeF1GRExTbIjQ1qkC59XObVESob5GvvZ65faULZhVM1UPdXqCHr6E5kc1U?=
 =?us-ascii?Q?/LLhPh19HkkaFSyAt0kkfqUh1iNK5jesDWiWkDcdJPJR/qmyjrainU1OaUF4?=
 =?us-ascii?Q?FZkjRMAh5Vs5JKKq3VssG3SCcnGCvmD65W6gwIPlUJQZ2BRv2IGk0742l92u?=
 =?us-ascii?Q?O/IzHOuLCZKJPwUJqVC+YdLGK67AbHONhSa74tlEfezNC7S8ANjvvJGzsTe6?=
 =?us-ascii?Q?6jNmDwcryz5PcrhqaiDCC/bH8nU5Ew71ac9sUTqvaFqp55FqMzvFnGKJH2BU?=
 =?us-ascii?Q?KCS0UAmo8cGCOwDNRgfwsgYAHU269SE0+cQBqXF2suXtSM2mEl41B2P+D5dj?=
 =?us-ascii?Q?aWjPKl3iOiSSEdYDeUhGzOy96qq5Zf0CYJrBZPzCEKG7MyEeGp4mgOFDIcNo?=
 =?us-ascii?Q?KMhN13tDx+Y7aXbrtEn+qvLbjvdHb+lqDi603bwhXU4bOmXSEprHU5tEI5QM?=
 =?us-ascii?Q?ChDFzXb7l2CYSlnZeqCEyyga+KlLV+xQ00MlUyVUwEoDu484ts11EaJnP5d6?=
 =?us-ascii?Q?nDXVTNQydmV+wINVvSgZnzjsS0gR+Glq2K8PMMcKJ9y+ZcSNWjzoClhTc4tu?=
 =?us-ascii?Q?ZdNuSwaCS8KwstLw0Te5Uq5Y7aqStg6yJV2mORgH++iJh5wrIhyrvIJ/IY8w?=
 =?us-ascii?Q?48V0jbfeRmg4uGdYH+HWHlnHT0Bs2tbIskG1LBGt/gbtA1fkcxoGXCBp5GSk?=
 =?us-ascii?Q?GdmGe1VuzNl5K52lzcAMcQpyJWcyBavje2r/YSgiby3m2joHaf+qj+CQE0YG?=
 =?us-ascii?Q?I77ujNmcDkzqKPZlavn9FRv1TZySSqVp/PQjjZOkvyAAEx41wECy2f4CJib9?=
 =?us-ascii?Q?p3Ctxm6SjMY2Cpd/0H8uAyy3tcIY2z6D5lvvNalMIgq1ZbUvddsJ3rCvH4gg?=
 =?us-ascii?Q?FpBy6mCjI7DM6+vYlchtjbRDyLkaxkOYTP961W9LXc+8yYWrTuJomj5l44tT?=
 =?us-ascii?Q?FyWRxK/PuAAVoFuQE3YhCrawJjPB9IsGAHZnegjRMVz8pWUyM40E2BT9xobf?=
 =?us-ascii?Q?ZeMuoR/c+kkIQfGB/BuMgDTEP2WMOuRRWKc57IKLD+GeF84RMA63PqP4xX4w?=
 =?us-ascii?Q?Hz788gqV0m+IKTwILSG7m1Dt76keCe6rGFLYAkxGJyh5KPB2798uzAFHoK2G?=
 =?us-ascii?Q?b15/b9sL7aEZI3Ekxut/Y5+0t/iPtLmaEg5C5Um4c+HGHf72QDGtzunou9Q9?=
 =?us-ascii?Q?Ys8sBJ4pMywXBCu5tNUxxRssNvq4mfziMnR7s++hQbw0g32uiZllTpCwSOyF?=
 =?us-ascii?Q?BQPzdNIBSDBPhuYxjC/C0XSd7ksxKr1y7MOeuw34tQBShU3rUVuD9aRdyKjM?=
 =?us-ascii?Q?0mJknRo7YJo7V+ubqwYFWHkVab1nHQKzf6pcBX1mSKxQBMBj3krV3XwW3OOq?=
 =?us-ascii?Q?FAA8E9goM64HeUDbzWinqKce0zYtQCHauxQdSD4PeGUJMBldg1WPFMxbOc/N?=
 =?us-ascii?Q?Ank/RLBarpup+uPtMOx9f1N4Yoknd50sE2b52H3+?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1741.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7fce34e9-be79-4181-665a-08db1e4159e2
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Mar 2023 12:50:23.2305 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Bqg8yXCzTb3tdPSjDrYa8JkBtSI52fvb9tmzmV7jOJJmB9InfksTaHgzFWxBearJ/TVCd52NJQ6qSUFPJUKOIQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8112
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v10 2/6] drm/i915/hdcp: Keep hdcp agonstic
 naming convention
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
Cc: "Winkler, Tomas" <tomas.winkler@intel.com>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

>=20
>=20
> > -----Original Message-----
> > From: Kandpal, Suraj <suraj.kandpal@intel.com>
> > Sent: Wednesday, February 1, 2023 2:38 PM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Gupta, Anshuman
> > <anshuman.gupta@intel.com>; Winkler, Tomas
> <tomas.winkler@intel.com>;
> > Vivi, Rodrigo <rodrigo.vivi@intel.com>; Shankar, Uma
> > <uma.shankar@intel.com>; Kandpal, Suraj <suraj.kandpal@intel.com>
> > Subject: [PATCH v10 2/6] drm/i915/hdcp: Keep hdcp agonstic naming
> > convention
>=20
> Typo in agnostic.
>=20
> Also I feel this header can be re-phrased: "Use generic names for HDCP
> helpers and structs"
> Add the rationale why this is required, explain the legacy and new usage
> which is the cause for this patch.
>=20

Sure will add it in the next version

Regards,
Suraj Kandpal
> >
> > From: Anshuman Gupta <anshuman.gupta@intel.com>
> >
> > Change the include/drm/i915_mei_hdcp_interface.h to
> > include/drm/i915_hdcp_interface.h
> >
> > --v6
> > -make each patch build individually [Jani]
> >
> > --v8
> > -change ME FW to ME/GSC FW [Ankit]
> > -fix formatting issue [Ankit]
> >
> > Cc: Tomas Winkler <tomas.winkler@intel.com>
> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > Cc: Uma Shankar <uma.shankar@intel.com>
> > Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > Acked-by: Tomas Winkler <tomas.winkler@intel.com>
> > ---
> >  .../gpu/drm/i915/display/intel_display_core.h |  2 +-
> >  .../drm/i915/display/intel_display_types.h    |  2 +-
> >  drivers/gpu/drm/i915/display/intel_hdcp.c     | 81 ++++++++--------
> >  drivers/misc/mei/hdcp/mei_hdcp.c              | 61 ++++++------
> >  ...hdcp_interface.h =3D> i915_hdcp_interface.h} | 92
> > +++++++++----------
> >  5 files changed, 118 insertions(+), 120 deletions(-)  rename
> > include/drm/{i915_mei_hdcp_interface.h =3D> i915_hdcp_interface.h} (73%=
)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h
> > b/drivers/gpu/drm/i915/display/intel_display_core.h
> > index fb8670aa2932..8e7a68339876 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> > @@ -378,7 +378,7 @@ struct intel_display {
> >  	} gmbus;
> >
> >  	struct {
> > -		struct i915_hdcp_comp_master *master;
> > +		struct i915_hdcp_master *master;
>=20
> Since we are changing this up, can we drop the use of phrase like "master=
"
> etc, if feasible in the series, else this can be taken with a follow up c=
leanup
> series.

I actually plan on cleaning this up later on in a different hdcp cleanup se=
ries


>=20
> >  		bool comp_added;
> >
> >  		/* Mutex to protect the above hdcp component related
> values. */
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index 9ccae7a46020..7accd3a8877c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -43,7 +43,7 @@
> >  #include <drm/drm_rect.h>
> >  #include <drm/drm_vblank.h>
> >  #include <drm/drm_vblank_work.h>
> > -#include <drm/i915_mei_hdcp_interface.h>
> > +#include <drm/i915_hdcp_interface.h>
> >  #include <media/cec-notifier.h>
> >
> >  #include "i915_vma.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > index 6406fd487ee5..262c76f21801 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > @@ -1143,7 +1143,7 @@ hdcp2_prepare_ake_init(struct intel_connector
> > *connector,
> >  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
> >  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
> >  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> > -	struct i915_hdcp_comp_master *comp;
> > +	struct i915_hdcp_master *comp;
>=20
> comp name is relevant if we use component framework, having the name for
> a generic case doesn't seem right. Change it universally in patch.

I think I lost you here as the change here from my side was i915_hdcp_comp_=
master to
I915_hdcp_master and I left the variable name as is.
If you do want me to change the variable name what do you think would be be=
tter
>=20
> >  	int ret;
> >
> >  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> > @@ -1154,7 +1154,7 @@ hdcp2_prepare_ake_init(struct intel_connector
> > *connector,
> >  		return -EINVAL;
> >  	}
> >
> > -	ret =3D comp->ops->initiate_hdcp2_session(comp->mei_dev, data,
> ake_data);
> > +	ret =3D comp->ops->initiate_hdcp2_session(comp->hdcp_dev, data,
> > +ake_data);
> >  	if (ret)
> >  		drm_dbg_kms(&dev_priv->drm, "Prepare_ake_init failed.
> %d\n",
> >  			    ret);
> > @@ -1173,7 +1173,7 @@ hdcp2_verify_rx_cert_prepare_km(struct
> > intel_connector *connector,
> >  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
> >  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
> >  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> > -	struct i915_hdcp_comp_master *comp;
> > +	struct i915_hdcp_master *comp;
> >  	int ret;
> >
> >  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> > @@ -1184,7 +1184,7 @@ hdcp2_verify_rx_cert_prepare_km(struct
> > intel_connector *connector,
> >  		return -EINVAL;
> >  	}
> >
> > -	ret =3D comp->ops->verify_receiver_cert_prepare_km(comp->mei_dev,
> data,
> > +	ret =3D comp->ops->verify_receiver_cert_prepare_km(comp-
> >hdcp_dev,
> > +data,
> >  							 rx_cert, paired,
> >  							 ek_pub_km,
> msg_sz);
> >  	if (ret < 0)
> > @@ -1201,7 +1201,7 @@ static int hdcp2_verify_hprime(struct
> > intel_connector *connector,
> >  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
> >  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
> >  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> > -	struct i915_hdcp_comp_master *comp;
> > +	struct i915_hdcp_master *comp;
> >  	int ret;
> >
> >  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> > @@ -1212,7 +1212,7 @@ static int hdcp2_verify_hprime(struct
> > intel_connector *connector,
> >  		return -EINVAL;
> >  	}
> >
> > -	ret =3D comp->ops->verify_hprime(comp->mei_dev, data, rx_hprime);
> > +	ret =3D comp->ops->verify_hprime(comp->hdcp_dev, data, rx_hprime);
> >  	if (ret < 0)
> >  		drm_dbg_kms(&dev_priv->drm, "Verify hprime failed.
> %d\n", ret);
> >  	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> > @@ -1227,7 +1227,7 @@ hdcp2_store_pairing_info(struct intel_connector
> > *connector,
> >  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
> >  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
> >  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> > -	struct i915_hdcp_comp_master *comp;
> > +	struct i915_hdcp_master *comp;
> >  	int ret;
> >
> >  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> > @@ -1238,7 +1238,7 @@ hdcp2_store_pairing_info(struct intel_connector
> > *connector,
> >  		return -EINVAL;
> >  	}
> >
> > -	ret =3D comp->ops->store_pairing_info(comp->mei_dev, data,
> pairing_info);
> > +	ret =3D comp->ops->store_pairing_info(comp->hdcp_dev, data,
> > +pairing_info);
> >  	if (ret < 0)
> >  		drm_dbg_kms(&dev_priv->drm, "Store pairing info failed.
> %d\n",
> >  			    ret);
> > @@ -1254,7 +1254,7 @@ hdcp2_prepare_lc_init(struct intel_connector
> *connector,
> >  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
> >  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
> >  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> > -	struct i915_hdcp_comp_master *comp;
> > +	struct i915_hdcp_master *comp;
> >  	int ret;
> >
> >  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> > @@ -1265,7 +1265,7 @@ hdcp2_prepare_lc_init(struct intel_connector
> *connector,
> >  		return -EINVAL;
> >  	}
> >
> > -	ret =3D comp->ops->initiate_locality_check(comp->mei_dev, data,
> lc_init);
> > +	ret =3D comp->ops->initiate_locality_check(comp->hdcp_dev, data,
> > +lc_init);
> >  	if (ret < 0)
> >  		drm_dbg_kms(&dev_priv->drm, "Prepare lc_init failed.
> %d\n",
> >  			    ret);
> > @@ -1281,7 +1281,7 @@ hdcp2_verify_lprime(struct intel_connector
> *connector,
> >  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
> >  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
> >  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> > -	struct i915_hdcp_comp_master *comp;
> > +	struct i915_hdcp_master *comp;
> >  	int ret;
> >
> >  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> > @@ -1292,7 +1292,7 @@ hdcp2_verify_lprime(struct intel_connector
> *connector,
> >  		return -EINVAL;
> >  	}
> >
> > -	ret =3D comp->ops->verify_lprime(comp->mei_dev, data, rx_lprime);
> > +	ret =3D comp->ops->verify_lprime(comp->hdcp_dev, data, rx_lprime);
> >  	if (ret < 0)
> >  		drm_dbg_kms(&dev_priv->drm, "Verify L_Prime failed.
> %d\n",
> >  			    ret);
> > @@ -1307,7 +1307,7 @@ static int hdcp2_prepare_skey(struct
> > intel_connector *connector,
> >  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
> >  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
> >  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> > -	struct i915_hdcp_comp_master *comp;
> > +	struct i915_hdcp_master *comp;
> >  	int ret;
> >
> >  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> > @@ -1318,7 +1318,7 @@ static int hdcp2_prepare_skey(struct
> > intel_connector *connector,
> >  		return -EINVAL;
> >  	}
> >
> > -	ret =3D comp->ops->get_session_key(comp->mei_dev, data, ske_data);
> > +	ret =3D comp->ops->get_session_key(comp->hdcp_dev, data,
> ske_data);
> >  	if (ret < 0)
> >  		drm_dbg_kms(&dev_priv->drm, "Get session key failed.
> %d\n",
> >  			    ret);
> > @@ -1336,7 +1336,7 @@ hdcp2_verify_rep_topology_prepare_ack(struct
> > intel_connector *connector,
> >  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
> >  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
> >  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> > -	struct i915_hdcp_comp_master *comp;
> > +	struct i915_hdcp_master *comp;
> >  	int ret;
> >
> >  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> > @@ -1347,7 +1347,7 @@ hdcp2_verify_rep_topology_prepare_ack(struct
> > intel_connector *connector,
> >  		return -EINVAL;
> >  	}
> >
> > -	ret =3D comp->ops->repeater_check_flow_prepare_ack(comp-
> >mei_dev,
> > data,
> > +	ret =3D comp->ops->repeater_check_flow_prepare_ack(comp-
> >hdcp_dev,
> > data,
> >  							 rep_topology,
> >  							 rep_send_ack);
> >  	if (ret < 0)
> > @@ -1365,7 +1365,7 @@ hdcp2_verify_mprime(struct intel_connector
> *connector,
> >  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
> >  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
> >  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> > -	struct i915_hdcp_comp_master *comp;
> > +	struct i915_hdcp_master *comp;
> >  	int ret;
> >
> >  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> > @@ -1376,7 +1376,7 @@ hdcp2_verify_mprime(struct intel_connector
> *connector,
> >  		return -EINVAL;
> >  	}
> >
> > -	ret =3D comp->ops->verify_mprime(comp->mei_dev, data,
> stream_ready);
> > +	ret =3D comp->ops->verify_mprime(comp->hdcp_dev, data,
> stream_ready);
> >  	if (ret < 0)
> >  		drm_dbg_kms(&dev_priv->drm, "Verify mprime failed.
> %d\n", ret);
> >  	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> > @@ -1389,7 +1389,7 @@ static int hdcp2_authenticate_port(struct
> > intel_connector
> > *connector)
> >  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
> >  	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
> >  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> > -	struct i915_hdcp_comp_master *comp;
> > +	struct i915_hdcp_master *comp;
> >  	int ret;
> >
> >  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> > @@ -1400,7 +1400,7 @@ static int hdcp2_authenticate_port(struct
> > intel_connector
> > *connector)
> >  		return -EINVAL;
> >  	}
> >
> > -	ret =3D comp->ops->enable_hdcp_authentication(comp->mei_dev,
> data);
> > +	ret =3D comp->ops->enable_hdcp_authentication(comp->hdcp_dev,
> data);
> >  	if (ret < 0)
> >  		drm_dbg_kms(&dev_priv->drm, "Enable hdcp auth failed.
> %d\n",
> >  			    ret);
> > @@ -1413,7 +1413,7 @@ static int hdcp2_close_mei_session(struct
> > intel_connector
> > *connector)  {
> >  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
> >  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> > -	struct i915_hdcp_comp_master *comp;
> > +	struct i915_hdcp_master *comp;
> >  	int ret;
> >
> >  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> > @@ -1424,7 +1424,7 @@ static int hdcp2_close_mei_session(struct
> > intel_connector
> > *connector)
> >  		return -EINVAL;
> >  	}
> >
> > -	ret =3D comp->ops->close_hdcp_session(comp->mei_dev,
> > +	ret =3D comp->ops->close_hdcp_session(comp->hdcp_dev,
> >  					     &dig_port->hdcp_port_data);
> >  	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> >
> > @@ -2145,8 +2145,8 @@ static int i915_hdcp_component_bind(struct
> > device *i915_kdev,
> >
> >  	drm_dbg(&dev_priv->drm, "I915 HDCP comp bind\n");
> >  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> > -	dev_priv->display.hdcp.master =3D (struct i915_hdcp_comp_master
> *)data;
> > -	dev_priv->display.hdcp.master->mei_dev =3D mei_kdev;
> > +	dev_priv->display.hdcp.master =3D (struct i915_hdcp_master *)data;
> > +	dev_priv->display.hdcp.master->hdcp_dev =3D mei_kdev;
> >  	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> >
> >  	return 0;
> > @@ -2163,30 +2163,30 @@ static void
> i915_hdcp_component_unbind(struct
> > device *i915_kdev,
> >  	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> >  }
> >
> > -static const struct component_ops i915_hdcp_component_ops =3D {
> > +static const struct component_ops i915_hdcp_ops =3D {
> >  	.bind   =3D i915_hdcp_component_bind,
> >  	.unbind =3D i915_hdcp_component_unbind,  };
> >
> > -static enum mei_fw_ddi intel_get_mei_fw_ddi_index(enum port port)
> > +static enum hdcp_ddi intel_get_hdcp_ddi_index(enum port port)
> >  {
> >  	switch (port) {
> >  	case PORT_A:
> > -		return MEI_DDI_A;
> > +		return HDCP_DDI_A;
> >  	case PORT_B ... PORT_F:
> > -		return (enum mei_fw_ddi)port;
> > +		return (enum hdcp_ddi)port;
> >  	default:
> > -		return MEI_DDI_INVALID_PORT;
> > +		return HDCP_DDI_INVALID_PORT;
> >  	}
> >  }
> >
> > -static enum mei_fw_tc intel_get_mei_fw_tc(enum transcoder
> > cpu_transcoder)
> > +static enum hdcp_transcoder intel_get_hdcp_transcoder(enum
> transcoder
> > +cpu_transcoder)
> >  {
> >  	switch (cpu_transcoder) {
> >  	case TRANSCODER_A ... TRANSCODER_D:
> > -		return (enum mei_fw_tc)(cpu_transcoder | 0x10);
> > +		return (enum hdcp_transcoder)(cpu_transcoder | 0x10);
> >  	default: /* eDP, DSI TRANSCODERS are non HDCP capable */
> > -		return MEI_INVALID_TRANSCODER;
> > +		return HDCP_INVALID_TRANSCODER;
> >  	}
> >  }
> >
> > @@ -2200,20 +2200,20 @@ static int initialize_hdcp_port_data(struct
> > intel_connector *connector,
> >  	enum port port =3D dig_port->base.port;
> >
> >  	if (DISPLAY_VER(dev_priv) < 12)
> > -		data->fw_ddi =3D intel_get_mei_fw_ddi_index(port);
> > +		data->hdcp_ddi =3D intel_get_hdcp_ddi_index(port);
> >  	else
> >  		/*
> > -		 * As per ME FW API expectation, for GEN 12+, fw_ddi is filled
> > +		 * As per ME FW API expectation, for GEN 12+, hdcp_ddi is
> filled
> >  		 * with zero(INVALID PORT index).
> >  		 */
> > -		data->fw_ddi =3D MEI_DDI_INVALID_PORT;
> > +		data->hdcp_ddi =3D HDCP_DDI_INVALID_PORT;
> >
> >  	/*
> > -	 * As associated transcoder is set and modified at modeset, here
> fw_tc
> > +	 * As associated transcoder is set and modified at modeset, here
> > +hdcp_transcoder
> >  	 * is initialized to zero (invalid transcoder index). This will be
> >  	 * retained for <Gen12 forever.
> >  	 */
> > -	data->fw_tc =3D MEI_INVALID_TRANSCODER;
> > +	data->hdcp_transcoder =3D HDCP_INVALID_TRANSCODER;
> >
> >  	data->port_type =3D (u8)HDCP_PORT_TYPE_INTEGRATED;
> >  	data->protocol =3D (u8)shim->protocol; @@ -2256,7 +2256,7 @@ void
> > intel_hdcp_component_init(struct drm_i915_private
> > *dev_priv)
> >
> >  	dev_priv->display.hdcp.comp_added =3D true;
> >  	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> > -	ret =3D component_add_typed(dev_priv->drm.dev,
> > &i915_hdcp_component_ops,
> > +	ret =3D component_add_typed(dev_priv->drm.dev, &i915_hdcp_ops,
> >  				  I915_COMPONENT_HDCP);
> >  	if (ret < 0) {
> >  		drm_dbg_kms(&dev_priv->drm, "Failed at component
> add(%d)\n", @@
> > -2350,7 +2350,8 @@ int intel_hdcp_enable(struct intel_connector
> *connector,
> >  	}
> >
> >  	if (DISPLAY_VER(dev_priv) >=3D 12)
> > -		dig_port->hdcp_port_data.fw_tc =3D
> intel_get_mei_fw_tc(hdcp-
> > >cpu_transcoder);
> > +		dig_port->hdcp_port_data.hdcp_transcoder =3D
> > +			intel_get_hdcp_transcoder(hdcp->cpu_transcoder);
> >
> >  	/*
> >  	 * Considering that HDCP2.2 is more secure than HDCP1.4, If the
> > setup @@ -
> > 2485,7 +2486,7 @@ void intel_hdcp_component_fini(struct
> > drm_i915_private
> > *dev_priv)
> >  	dev_priv->display.hdcp.comp_added =3D false;
> >  	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> >
> > -	component_del(dev_priv->drm.dev, &i915_hdcp_component_ops);
> > +	component_del(dev_priv->drm.dev, &i915_hdcp_ops);
> >  }
> >
> >  void intel_hdcp_cleanup(struct intel_connector *connector) diff --git
> > a/drivers/misc/mei/hdcp/mei_hdcp.c
> b/drivers/misc/mei/hdcp/mei_hdcp.c
> > index e889a8bd7ac8..b2c49599809c 100644
> > --- a/drivers/misc/mei/hdcp/mei_hdcp.c
> > +++ b/drivers/misc/mei/hdcp/mei_hdcp.c
> > @@ -23,7 +23,7 @@
> >  #include <linux/component.h>
> >  #include <drm/drm_connector.h>
> >  #include <drm/i915_component.h>
> > -#include <drm/i915_mei_hdcp_interface.h>
> > +#include <drm/i915_hdcp_interface.h>
> >
> >  #include "mei_hdcp.h"
> >
> > @@ -57,8 +57,8 @@ mei_hdcp_initiate_session(struct device *dev, struct
> > hdcp_port_data *data,
> >
> > 	WIRED_CMD_BUF_LEN_INITIATE_HDCP2_SESSION_IN;
> >
> >  	session_init_in.port.integrated_port_type =3D data->port_type;
> > -	session_init_in.port.physical_port =3D (u8)data->fw_ddi;
> > -	session_init_in.port.attached_transcoder =3D (u8)data->fw_tc;
> > +	session_init_in.port.physical_port =3D (u8)data->hdcp_ddi;
> > +	session_init_in.port.attached_transcoder =3D
> > +(u8)data->hdcp_transcoder;
> >  	session_init_in.protocol =3D data->protocol;
> >
> >  	byte =3D mei_cldev_send(cldev, (u8 *)&session_init_in, @@ -127,8
> > +127,8 @@ mei_hdcp_verify_receiver_cert_prepare_km(struct device
> *dev,
> >
> > 	WIRED_CMD_BUF_LEN_VERIFY_RECEIVER_CERT_IN;
> >
> >  	verify_rxcert_in.port.integrated_port_type =3D data->port_type;
> > -	verify_rxcert_in.port.physical_port =3D (u8)data->fw_ddi;
> > -	verify_rxcert_in.port.attached_transcoder =3D (u8)data->fw_tc;
> > +	verify_rxcert_in.port.physical_port =3D (u8)data->hdcp_ddi;
> > +	verify_rxcert_in.port.attached_transcoder =3D
> > +(u8)data->hdcp_transcoder;
> >
> >  	verify_rxcert_in.cert_rx =3D rx_cert->cert_rx;
> >  	memcpy(verify_rxcert_in.r_rx, &rx_cert->r_rx, HDCP_2_2_RRX_LEN);
> @@
> > -
> > 198,8 +198,8 @@ mei_hdcp_verify_hprime(struct device *dev, struct
> > hdcp_port_data *data,
> >  	send_hprime_in.header.buffer_len =3D
> > WIRED_CMD_BUF_LEN_AKE_SEND_HPRIME_IN;
> >
> >  	send_hprime_in.port.integrated_port_type =3D data->port_type;
> > -	send_hprime_in.port.physical_port =3D (u8)data->fw_ddi;
> > -	send_hprime_in.port.attached_transcoder =3D (u8)data->fw_tc;
> > +	send_hprime_in.port.physical_port =3D (u8)data->hdcp_ddi;
> > +	send_hprime_in.port.attached_transcoder =3D (u8)data-
> >hdcp_transcoder;
> >
> >  	memcpy(send_hprime_in.h_prime, rx_hprime->h_prime,
> >  	       HDCP_2_2_H_PRIME_LEN);
> > @@ -256,8 +256,8 @@ mei_hdcp_store_pairing_info(struct device *dev,
> > struct hdcp_port_data *data,
> >
> > 	WIRED_CMD_BUF_LEN_SEND_PAIRING_INFO_IN;
> >
> >  	pairing_info_in.port.integrated_port_type =3D data->port_type;
> > -	pairing_info_in.port.physical_port =3D (u8)data->fw_ddi;
> > -	pairing_info_in.port.attached_transcoder =3D (u8)data->fw_tc;
> > +	pairing_info_in.port.physical_port =3D (u8)data->hdcp_ddi;
> > +	pairing_info_in.port.attached_transcoder =3D
> > +(u8)data->hdcp_transcoder;
> >
> >  	memcpy(pairing_info_in.e_kh_km, pairing_info->e_kh_km,
> >  	       HDCP_2_2_E_KH_KM_LEN);
> > @@ -315,8 +315,8 @@ mei_hdcp_initiate_locality_check(struct device
> *dev,
> >  	lc_init_in.header.buffer_len =3D
> > WIRED_CMD_BUF_LEN_INIT_LOCALITY_CHECK_IN;
> >
> >  	lc_init_in.port.integrated_port_type =3D data->port_type;
> > -	lc_init_in.port.physical_port =3D (u8)data->fw_ddi;
> > -	lc_init_in.port.attached_transcoder =3D (u8)data->fw_tc;
> > +	lc_init_in.port.physical_port =3D (u8)data->hdcp_ddi;
> > +	lc_init_in.port.attached_transcoder =3D (u8)data->hdcp_transcoder;
> >
> >  	byte =3D mei_cldev_send(cldev, (u8 *)&lc_init_in, sizeof(lc_init_in))=
;
> >  	if (byte < 0) {
> > @@ -371,8 +371,8 @@ mei_hdcp_verify_lprime(struct device *dev, struct
> > hdcp_port_data *data,
> >
> > 	WIRED_CMD_BUF_LEN_VALIDATE_LOCALITY_IN;
> >
> >  	verify_lprime_in.port.integrated_port_type =3D data->port_type;
> > -	verify_lprime_in.port.physical_port =3D (u8)data->fw_ddi;
> > -	verify_lprime_in.port.attached_transcoder =3D (u8)data->fw_tc;
> > +	verify_lprime_in.port.physical_port =3D (u8)data->hdcp_ddi;
> > +	verify_lprime_in.port.attached_transcoder =3D
> > +(u8)data->hdcp_transcoder;
> >
> >  	memcpy(verify_lprime_in.l_prime, rx_lprime->l_prime,
> >  	       HDCP_2_2_L_PRIME_LEN);
> > @@ -429,8 +429,8 @@ static int mei_hdcp_get_session_key(struct device
> *dev,
> >  	get_skey_in.header.buffer_len =3D
> > WIRED_CMD_BUF_LEN_GET_SESSION_KEY_IN;
> >
> >  	get_skey_in.port.integrated_port_type =3D data->port_type;
> > -	get_skey_in.port.physical_port =3D (u8)data->fw_ddi;
> > -	get_skey_in.port.attached_transcoder =3D (u8)data->fw_tc;
> > +	get_skey_in.port.physical_port =3D (u8)data->hdcp_ddi;
> > +	get_skey_in.port.attached_transcoder =3D (u8)data->hdcp_transcoder;
> >
> >  	byte =3D mei_cldev_send(cldev, (u8 *)&get_skey_in,
> sizeof(get_skey_in));
> >  	if (byte < 0) {
> > @@ -494,8 +494,8 @@
> mei_hdcp_repeater_check_flow_prepare_ack(struct
> > device *dev,
> >
> > 	WIRED_CMD_BUF_LEN_VERIFY_REPEATER_IN;
> >
> >  	verify_repeater_in.port.integrated_port_type =3D data->port_type;
> > -	verify_repeater_in.port.physical_port =3D (u8)data->fw_ddi;
> > -	verify_repeater_in.port.attached_transcoder =3D (u8)data->fw_tc;
> > +	verify_repeater_in.port.physical_port =3D (u8)data->hdcp_ddi;
> > +	verify_repeater_in.port.attached_transcoder =3D
> > +(u8)data->hdcp_transcoder;
> >
> >  	memcpy(verify_repeater_in.rx_info, rep_topology->rx_info,
> >  	       HDCP_2_2_RXINFO_LEN);
> > @@ -572,8 +572,8 @@ static int mei_hdcp_verify_mprime(struct device
> *dev,
> >  	verify_mprime_in->header.buffer_len =3D cmd_size  -
> > sizeof(verify_mprime_in-
> > >header);
> >
> >  	verify_mprime_in->port.integrated_port_type =3D data->port_type;
> > -	verify_mprime_in->port.physical_port =3D (u8)data->fw_ddi;
> > -	verify_mprime_in->port.attached_transcoder =3D (u8)data->fw_tc;
> > +	verify_mprime_in->port.physical_port =3D (u8)data->hdcp_ddi;
> > +	verify_mprime_in->port.attached_transcoder =3D
> > +(u8)data->hdcp_transcoder;
> >
> >  	memcpy(verify_mprime_in->m_prime, stream_ready->m_prime,
> > HDCP_2_2_MPRIME_LEN);
> >  	drm_hdcp_cpu_to_be24(verify_mprime_in->seq_num_m, data-
> > >seq_num_m); @@ -634,8 +634,8 @@ static int
> > mei_hdcp_enable_authentication(struct device *dev,
> >  	enable_auth_in.header.buffer_len =3D
> > WIRED_CMD_BUF_LEN_ENABLE_AUTH_IN;
> >
> >  	enable_auth_in.port.integrated_port_type =3D data->port_type;
> > -	enable_auth_in.port.physical_port =3D (u8)data->fw_ddi;
> > -	enable_auth_in.port.attached_transcoder =3D (u8)data->fw_tc;
> > +	enable_auth_in.port.physical_port =3D (u8)data->hdcp_ddi;
> > +	enable_auth_in.port.attached_transcoder =3D (u8)data-
> >hdcp_transcoder;
> >  	enable_auth_in.stream_type =3D data->streams[0].stream_type;
> >
> >  	byte =3D mei_cldev_send(cldev, (u8 *)&enable_auth_in, @@ -689,8
> +689,8
> > @@ mei_hdcp_close_session(struct device *dev, struct hdcp_port_data
> *data)
> >  				WIRED_CMD_BUF_LEN_CLOSE_SESSION_IN;
> >
> >  	session_close_in.port.integrated_port_type =3D data->port_type;
> > -	session_close_in.port.physical_port =3D (u8)data->fw_ddi;
> > -	session_close_in.port.attached_transcoder =3D (u8)data->fw_tc;
> > +	session_close_in.port.physical_port =3D (u8)data->hdcp_ddi;
> > +	session_close_in.port.attached_transcoder =3D
> > +(u8)data->hdcp_transcoder;
> >
> >  	byte =3D mei_cldev_send(cldev, (u8 *)&session_close_in,
> >  			      sizeof(session_close_in));
> > @@ -715,7 +715,7 @@ mei_hdcp_close_session(struct device *dev, struct
> > hdcp_port_data *data)
> >  	return 0;
> >  }
> >
> > -static const struct i915_hdcp_component_ops mei_hdcp_ops =3D {
> > +static const struct i915_hdcp_ops mei_hdcp_ops =3D {
> >  	.owner =3D THIS_MODULE,
> >  	.initiate_hdcp2_session =3D mei_hdcp_initiate_session,
> >  	.verify_receiver_cert_prepare_km =3D
> > @@ -735,13 +735,12 @@ static const struct i915_hdcp_component_ops
> > mei_hdcp_ops =3D {  static int mei_component_master_bind(struct device
> *dev)  {
> >  	struct mei_cl_device *cldev =3D to_mei_cl_device(dev);
> > -	struct i915_hdcp_comp_master *comp_master =3D
> > -
> 	mei_cldev_get_drvdata(cldev);
> > +	struct i915_hdcp_master *comp_master =3D
> mei_cldev_get_drvdata(cldev);
> >  	int ret;
> >
> >  	dev_dbg(dev, "%s\n", __func__);
> >  	comp_master->ops =3D &mei_hdcp_ops;
> > -	comp_master->mei_dev =3D dev;
> > +	comp_master->hdcp_dev =3D dev;
> >  	ret =3D component_bind_all(dev, comp_master);
> >  	if (ret < 0)
> >  		return ret;
> > @@ -752,8 +751,7 @@ static int mei_component_master_bind(struct
> device
> > *dev) static void mei_component_master_unbind(struct device *dev)  {
> >  	struct mei_cl_device *cldev =3D to_mei_cl_device(dev);
> > -	struct i915_hdcp_comp_master *comp_master =3D
> > -
> 	mei_cldev_get_drvdata(cldev);
> > +	struct i915_hdcp_master *comp_master =3D
> mei_cldev_get_drvdata(cldev);
> >
> >  	dev_dbg(dev, "%s\n", __func__);
> >  	component_unbind_all(dev, comp_master); @@ -801,7 +799,7 @@
> static
> > int mei_hdcp_component_match(struct device *dev, int subcomponent,
> > static int mei_hdcp_probe(struct mei_cl_device *cldev,
> >  			  const struct mei_cl_device_id *id)  {
> > -	struct i915_hdcp_comp_master *comp_master;
> > +	struct i915_hdcp_master *comp_master;
> >  	struct component_match *master_match;
> >  	int ret;
> >
> > @@ -846,8 +844,7 @@ static int mei_hdcp_probe(struct mei_cl_device
> > *cldev,
> >
> >  static void mei_hdcp_remove(struct mei_cl_device *cldev)  {
> > -	struct i915_hdcp_comp_master *comp_master =3D
> > -
> 	mei_cldev_get_drvdata(cldev);
> > +	struct i915_hdcp_master *comp_master =3D
> mei_cldev_get_drvdata(cldev);
> >  	int ret;
> >
> >  	component_master_del(&cldev->dev,
> &mei_component_master_ops); diff -
> > -git a/include/drm/i915_mei_hdcp_interface.h
> > b/include/drm/i915_hdcp_interface.h
> > similarity index 73%
> > rename from include/drm/i915_mei_hdcp_interface.h
> > rename to include/drm/i915_hdcp_interface.h index
> > f441cbcd95a4..75c75f52ab1b
> > 100644
> > --- a/include/drm/i915_mei_hdcp_interface.h
> > +++ b/include/drm/i915_hdcp_interface.h
> > @@ -6,15 +6,15 @@
> >   * Ramalingam C <ramalingam.c@intel.com>
> >   */
> >
> > -#ifndef _I915_MEI_HDCP_INTERFACE_H_
> > -#define _I915_MEI_HDCP_INTERFACE_H_
> > +#ifndef _I915_HDCP_INTERFACE_H_
> > +#define _I915_HDCP_INTERFACE_H_
> >
> >  #include <linux/mutex.h>
> >  #include <linux/device.h>
> >  #include <drm/display/drm_hdcp.h>
> >
> >  /**
> > - * enum hdcp_port_type - HDCP port implementation type defined by ME
> > FW
> > + * enum hdcp_port_type - HDCP port implementation type defined by
> > + ME/GSC FW
> >   * @HDCP_PORT_TYPE_INVALID: Invalid hdcp port type
> >   * @HDCP_PORT_TYPE_INTEGRATED: In-Host HDCP2.x port
> >   * @HDCP_PORT_TYPE_LSPCON: HDCP2.2 discrete wired Tx port with
> LSPCON
> > @@
> > -41,46 +41,46 @@ enum hdcp_wired_protocol {
> >  	HDCP_PROTOCOL_DP
> >  };
> >
> > -enum mei_fw_ddi {
> > -	MEI_DDI_INVALID_PORT =3D 0x0,
> > +enum hdcp_ddi {
> > +	HDCP_DDI_INVALID_PORT =3D 0x0,
> >
> > -	MEI_DDI_B =3D 1,
> > -	MEI_DDI_C,
> > -	MEI_DDI_D,
> > -	MEI_DDI_E,
> > -	MEI_DDI_F,
> > -	MEI_DDI_A =3D 7,
> > -	MEI_DDI_RANGE_END =3D MEI_DDI_A,
> > +	HDCP_DDI_B =3D 1,
> > +	HDCP_DDI_C,
> > +	HDCP_DDI_D,
> > +	HDCP_DDI_E,
> > +	HDCP_DDI_F,
> > +	HDCP_DDI_A =3D 7,
> > +	HDCP_DDI_RANGE_END =3D HDCP_DDI_A,
> >  };
> >
> >  /**
> > - * enum mei_fw_tc - ME Firmware defined index for transcoders
> > - * @MEI_INVALID_TRANSCODER: Index for Invalid transcoder
> > - * @MEI_TRANSCODER_EDP: Index for EDP Transcoder
> > - * @MEI_TRANSCODER_DSI0: Index for DSI0 Transcoder
> > - * @MEI_TRANSCODER_DSI1: Index for DSI1 Transcoder
> > - * @MEI_TRANSCODER_A: Index for Transcoder A
> > - * @MEI_TRANSCODER_B: Index for Transcoder B
> > - * @MEI_TRANSCODER_C: Index for Transcoder C
> > - * @MEI_TRANSCODER_D: Index for Transcoder D
> > + * enum hdcp_tc - ME/GSC Firmware defined index for transcoders
> > + * @HDCP_INVALID_TRANSCODER: Index for Invalid transcoder
> > + * @HDCP_TRANSCODER_EDP: Index for EDP Transcoder
> > + * @HDCP_TRANSCODER_DSI0: Index for DSI0 Transcoder
> > + * @HDCP_TRANSCODER_DSI1: Index for DSI1 Transcoder
> > + * @HDCP_TRANSCODER_A: Index for Transcoder A
> > + * @HDCP_TRANSCODER_B: Index for Transcoder B
> > + * @HDCP_TRANSCODER_C: Index for Transcoder C
> > + * @HDCP_TRANSCODER_D: Index for Transcoder D
> >   */
> > -enum mei_fw_tc {
> > -	MEI_INVALID_TRANSCODER =3D 0x00,
> > -	MEI_TRANSCODER_EDP,
> > -	MEI_TRANSCODER_DSI0,
> > -	MEI_TRANSCODER_DSI1,
> > -	MEI_TRANSCODER_A =3D 0x10,
> > -	MEI_TRANSCODER_B,
> > -	MEI_TRANSCODER_C,
> > -	MEI_TRANSCODER_D
> > +enum hdcp_transcoder {
> > +	HDCP_INVALID_TRANSCODER =3D 0x00,
> > +	HDCP_TRANSCODER_EDP,
> > +	HDCP_TRANSCODER_DSI0,
> > +	HDCP_TRANSCODER_DSI1,
> > +	HDCP_TRANSCODER_A =3D 0x10,
> > +	HDCP_TRANSCODER_B,
> > +	HDCP_TRANSCODER_C,
> > +	HDCP_TRANSCODER_D
> >  };
> >
> >  /**
> >   * struct hdcp_port_data - intel specific HDCP port data
> > - * @fw_ddi: ddi index as per ME FW
> > - * @fw_tc: transcoder index as per ME FW
> > - * @port_type: HDCP port type as per ME FW classification
> > - * @protocol: HDCP adaptation as per ME FW
> > + * @hdcp_ddi: ddi index as per ME/GSC FW
> > + * @hdcp_transcoder: transcoder index as per ME/GSC FW
> > + * @port_type: HDCP port type as per ME/GSC FW classification
> > + * @protocol: HDCP adaptation as per ME/GSC FW
> >   * @k: No of streams transmitted on a port. Only on DP MST this is !=
=3D 1
> >   * @seq_num_m: Count of RepeaterAuth_Stream_Manage msg
> propagated.
> >   *	       Initialized to 0 on AKE_INIT. Incremented after every succes=
sful
> > @@ -90,8 +90,8 @@ enum mei_fw_tc {
> >   *	     streams
> >   */
> >  struct hdcp_port_data {
> > -	enum mei_fw_ddi fw_ddi;
> > -	enum mei_fw_tc fw_tc;
> > +	enum hdcp_ddi hdcp_ddi;
> > +	enum hdcp_transcoder hdcp_transcoder;
> >  	u8 port_type;
> >  	u8 protocol;
> >  	u16 k;
> > @@ -100,7 +100,7 @@ struct hdcp_port_data {  };
> >
> >  /**
> > - * struct i915_hdcp_component_ops- ops for HDCP2.2 services.
> > + * struct i915_hdcp_ops- ops for HDCP2.2 services.
> >   * @owner: Module providing the ops
> >   * @initiate_hdcp2_session: Initiate a Wired HDCP2.2 Tx Session.
> >   *			    And Prepare AKE_Init.
> > @@ -119,9 +119,9 @@ struct hdcp_port_data {
> >   * @close_hdcp_session: Close the Wired HDCP Tx session per port.
> >   *			This also disables the authenticated state of the port.
> >   */
> > -struct i915_hdcp_component_ops {
> > +struct i915_hdcp_ops {
> >  	/**
> > -	 * @owner: mei_hdcp module
> > +	 * @owner: hdcp module
> >  	 */
> >  	struct module *owner;
> >
> > @@ -169,16 +169,16 @@ struct i915_hdcp_component_ops {
> >
> >  /**
> >   * struct i915_hdcp_component_master - Used for communication
> between
> > i915
>=20
> Name doesn't match with the structure, please fix.
>=20

Okay it missed this will do

Regards,
Suraj Kandpal
> > - * and mei_hdcp drivers for the HDCP2.2 services
> > - * @mei_dev: device that provide the HDCP2.2 service from MEI Bus.
> > - * @hdcp_ops: Ops implemented by mei_hdcp driver, used by i915 driver.
> > + * and hdcp drivers for the HDCP2.2 services
> > + * @hdcp_dev: device that provide the HDCP2.2 service from MEI Bus.
> > + * @hdcp_ops: Ops implemented by hdcp driver or intel_hdcp_gsc , used
> > + by i915
> > driver.
> >   */
> > -struct i915_hdcp_comp_master {
> > -	struct device *mei_dev;
> > -	const struct i915_hdcp_component_ops *ops;
> > +struct i915_hdcp_master {
> > +	struct device *hdcp_dev;
> > +	const struct i915_hdcp_ops *ops;
> >
> >  	/* To protect the above members. */
> >  	struct mutex mutex;
> >  };
> >
> > -#endif /* _I915_MEI_HDCP_INTERFACE_H_ */
> > +#endif /* _I915_HDCP_INTERFACE_H_ */
> > --
> > 2.25.1

