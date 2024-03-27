Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC1E88D554
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Mar 2024 05:07:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A5B110F7B1;
	Wed, 27 Mar 2024 04:07:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d0NTm+I3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 901B210F7AF
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Mar 2024 04:07:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711512433; x=1743048433;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=3tVI3qiSxhhMBpbCP13Nl78C2HEH+FG33J5iAPGvsuY=;
 b=d0NTm+I3K0TfY//OMfh80Jhn/K2m4JbUa2SvKiPEeV6/JhUSMz73QB5c
 vvggP3xYtNsBkC3vztDyoIcTLvHLQaIhZQ+YgajL/P9BO/Fy+j7RC2yvi
 VPtmMsuYGGMOvGEwtS/+fWb2ptfaxX3HN02lD8K5wPJfFjZF7H1BP2/XA
 YnVmq7NRLx48ZCgwK5W7h9FDv22qNyeBIuYSc3Mfx5dDpv/JsnQo4FVLf
 25a/f6rqhQHRzrt65zuHJKLytOehSuB7edL3aq4CakVFV7jINeBaA9+H+
 LymvhuCS0NX6oLdjg33yf7Uaf6e2WSmVGEQW8yfOppf9tLkZM2R0SHjlq w==;
X-CSE-ConnectionGUID: 598tm+MOTnq8FsY/moGiEA==
X-CSE-MsgGUID: 5Rwz+S1CSBmgZr/Wd9QXFQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11025"; a="17737120"
X-IronPort-AV: E=Sophos;i="6.07,157,1708416000"; d="scan'208";a="17737120"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 21:07:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,157,1708416000"; d="scan'208";a="16817094"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Mar 2024 21:07:13 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 26 Mar 2024 21:07:12 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 26 Mar 2024 21:07:12 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 26 Mar 2024 21:07:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XiM56ydUQkzyijg1NmbNi/cBQmlwgvoNClsO7+6C5Xxm0Z5VuTTi/Wpb9bMSPE2DBo0i2AGagHkzraXFMVCZdrEmbXe10muyIxElr5of0eqZYfRJXb2OS5t3abnSFfpUb/1MkI+k8V8pLH1XRAsYleno6jmzsP2gT8LQqKeQHLnendHmQ6xXjCCTnj2pHoMXThzCfXZyPhO2F0Kddd9qbWwQSeGCCPn/6Xes9uNwf5gym2wQhuQ4qvD/Na2SL25qowTqc4JkgkZ7WS1Z9kOsP6U9AZ3I7eW6GKkD374/vPAw0HXYlKxo+MKqhhDFO4CW8XXnoSyClo3yCuarUDGdDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=20h8/UL/Ejvmul4drdGdA50NGWeAlB2J5bSW4NMGrSY=;
 b=g4LAFFEQx3AYG0I5REubOuN9u5yLyxN+xwDE8YGfcUBqy/NLTgojSKYijyxLM/TUtYfxRn4KYpAkMfgWtHyKsy4Rm2X75y08JA0lCAZceiT8FZO4Ke1dBLN0uC6UfTK5sJ8bp8ZrcQXVSQRzUZ2JsThZOYgXlYk0cON8R3f5iKKR6sF/SOWFIdcXKDlSUISfFK6axuApvS6EfJDFImghAV70TJ+zVlR/v4csAS/b0+rBYwiuqS2rU9itzHfi67ySrg+R3KHr7lzbqPE4zN5wyidgzz8F6VCKlSqPyPYf2I1nc4DGLEWUxPAa2t2dFynH3Kse3Fr3F2wZ3ZhW6JOMcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH7PR11MB7663.namprd11.prod.outlook.com (2603:10b6:510:27c::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.32; Wed, 27 Mar
 2024 04:07:09 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::4b13:ba21:57e8:6da8]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::4b13:ba21:57e8:6da8%5]) with mapi id 15.20.7409.028; Wed, 27 Mar 2024
 04:07:09 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/display: Initalizalize capability variables
Thread-Topic: [PATCH] drm/i915/display: Initalizalize capability variables
Thread-Index: AQHafz0Da+fu82lBsUG5nT70HOSPDLFJ3cSAgAETPeCAAAeXAIAAASfQ
Date: Wed, 27 Mar 2024 04:07:09 +0000
Message-ID: <SN7PR11MB675015A61EBFE7913ECDDF56E3342@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240326051454.193181-2-suraj.kandpal@intel.com>
 <SJ1PR11MB61291435D7434453169B69C8B9352@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <SN7PR11MB675089A18EC04F96917196FBE3342@SN7PR11MB6750.namprd11.prod.outlook.com>
 <SJ1PR11MB6129A43CCB4BC98C701CC6C2B9342@SJ1PR11MB6129.namprd11.prod.outlook.com>
In-Reply-To: <SJ1PR11MB6129A43CCB4BC98C701CC6C2B9342@SJ1PR11MB6129.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH7PR11MB7663:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: G6oD/PUeCkg/ddwf8I8JqBnlu2KP9cAdnGYF0atx7esX5eQfKQXlW4SNVe4tYx/mLkn/9zbhvWdeF3JKbhboWg7A/LXSxEfae7NPJ6vzSdmQdjPIs4ag5TsuUtqO0GKOKrcwjqC/vDiCYutokRh8/8tg3fmxKMkfNvrcg8yCe8Dyf9cp2mBArKrX10Y+TL42hs6UNj1nhmWPCQvLn+DlGnnv5rJaKqcz1HlE0D3cJEGmScie/j6stb7ZH7AyzT8H61qIORU/Z2nlskVApAPVEIIfKXRgH92zb3lna2ZSPdRpmShw1xJIuao4QRxwuJrylLW27KxjN+w8mi1ewYVmow0cwAPkibXUtT5+LLb1h42ULqKo6ddGamjHiz1CzgnnGGZ8uH1FPjL/Ll+q1ODDCJFSr8XbIJNMsyBO454+G0jDOuVZ0z8bEDdSnhtsu07mnPC+GUQ+xKWJDJYL5o+vSzUFJcEVleahgEjZecMiOzQVpJobxtJaPCVUzsBc5PHZTSdLL36fLHylmkDcITRqqVNuS0RAVXAALbiFbMneBd3GHJOdzbKY9BEFuIGJv+bqeVWMR6hVeVRmv5hoiPQ+K8esLgaeGbWLy8YSCOtYqGOS3OP+hDWzEfxUcG6OjFQ/40Tt02Un+Gm1OLpeoPV83zB0CuajHqkpuCGydvtle/o=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ot+AVkWxnQyhJ7xSfRacDQn7o1HcCrgsNfEVa/c/AVxavClZBCoL/f1YPGJu?=
 =?us-ascii?Q?o/99LeYdbSGlhRWUH02F/3sCxqoQpOdeXzK1BPeyMSg+v1EajutiHtAoCEbA?=
 =?us-ascii?Q?q8gGDIKiJXwRudUUVJUfr1b994l0dRHZcYkCplx4lzcZ7nVbTrr80T/E7VHG?=
 =?us-ascii?Q?aitNVqpqHDIFcQTZq3BjXi2ACzLeMfszbScY0eEddhH8VFuWhWtpG1yskuKj?=
 =?us-ascii?Q?rws5jgz9BIZsQQGkeu5iRJSS/wOv5QW1EbpgEzhsPPAIRPLwyoCQgcK2Hq4G?=
 =?us-ascii?Q?NwrciH4SXEv+TDqaseR7BqzFHv9Njp3XAXJVGpRAtN1LEb3lS2YOMEkqaRRq?=
 =?us-ascii?Q?9lEv+u9Q1OyAeemzojYd9RIs6tQB9Irm8kfEmbC9O65h6ZJMhFbZR75gZKlh?=
 =?us-ascii?Q?+gAE6PUSMO7ENIUPLC3VOqUXV3DZNNKCt/fiOCbv3yBeSR35h7r7qjeQz29s?=
 =?us-ascii?Q?4UcV6QMXno5NMYvk/DCnQr8rb724K9zZNL/iN2nb5EKyUR37tSiRqOha+oej?=
 =?us-ascii?Q?UNafzFmgmwlCTcXFjXEw58uvSPoD0Oy6PWKCSd1RjrEN8aYR67B9ZYBh+seo?=
 =?us-ascii?Q?zCSRhebxmUILdCAdz9uWqEG0xItPCIm0mo6vLi1wCxA9kqtK3roJl+yYHpFv?=
 =?us-ascii?Q?XK6LkhKFCvdHRiOzoDxLA1w3+Whc1eRjoLPYUA21X8tZfWA2j4xBa3VIBBTi?=
 =?us-ascii?Q?YEpJ9qxHNUOgrvnE1zpGdDNL5tYs/WAUX2Vkh4XqOFTSdqVGxAScF563YMai?=
 =?us-ascii?Q?8n64gpboKhmyLegnjQ5582mVDuKVCdymWZi1QqU75WL8Qz7ULcani0sLl6x5?=
 =?us-ascii?Q?ERbUdYNEdjePDL+qNcATw7hmHlR0S53NUlGGZv3HPS8BAHpEN3/bWEVZdH9X?=
 =?us-ascii?Q?gpVuH948EM6tJFxF984Xphw6U6D3Qotp1QcyU9BkG3gYXfeH253vRzvIoegn?=
 =?us-ascii?Q?m0qwEsXdZGnf5risAkMuOdxUzPOl6Z//AeP6dX6NekxrAIKLDhCmO1tpUO3f?=
 =?us-ascii?Q?YL7j6ARixfIgWALn5Z7H7m71MONObgvYPBgytpiA43n7H/nUZRoVxm4zfocu?=
 =?us-ascii?Q?hDXStWQ/O9CuLLoaEfna8qF6yx1be6N31vrbPtvWq/OFrsTOmG+CRrsR0BVj?=
 =?us-ascii?Q?SXOzdRlP5uiM7WT75UTt1f4ajkxR4WobLz7prNvN8ijVY3jkBvGhcH3eeZz2?=
 =?us-ascii?Q?ENmW+US560RZucnPwUA6Gno+JP9rd7jhL+onmsQGgK7b+6DDAAO/6NcPco5E?=
 =?us-ascii?Q?FI5NcUQ+G6e1p+RRMC/el2wYc5UYyvLKcbcmvFG7814r+nDZgDJmDIl6NufZ?=
 =?us-ascii?Q?RHTYq+Xcb1BUZniTnXs2DA2PYffrMJbflQqyWJyDQ2m72/PxCMuEo95ZfFx9?=
 =?us-ascii?Q?4+2vY1FGJYO9+/a0qyqNg9qYz4NDAXSjkKHA9Oy4qKRBF13AqkwytOafoCc7?=
 =?us-ascii?Q?US0cFkFNOWSUYo7JREuTIsO34TkOrFwBbfPfGz7ox3j1S4+tPO7h4YYUkX7l?=
 =?us-ascii?Q?nxKB/fAy+uy9Ix4pXABT/i4hI2IM29hwv2YQX2Q/FEI+fUw9sqSFrnERVUo7?=
 =?us-ascii?Q?xQhsuEMo5hUcD+/aNixKN69Y9dL74v6GwrpmdxJZ?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 75679cad-b003-471e-f7df-08dc4e135f88
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2024 04:07:09.3392 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iUyPq/pecJBPtsV+soqA3SN8xp4zI8FGiK9SL7BaEm/O4iHzovsTIuNRbQBpdjvQGiviMdw2OBH55c5MobBEhw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7663
X-OriginatorOrg: intel.com
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



> -----Original Message-----
> From: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Sent: Wednesday, March 27, 2024 9:32 AM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-gfx@lists.freedesktop=
.org
> Subject: RE: [PATCH] drm/i915/display: Initalizalize capability variables
>=20
>=20
>=20
> > -----Original Message-----
> > From: Kandpal, Suraj <suraj.kandpal@intel.com>
> > Sent: Wednesday, March 27, 2024 9:06 AM
> > To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; intel-
> > gfx@lists.freedesktop.org
> > Subject: RE: [PATCH] drm/i915/display: Initalizalize capability
> > variables
> >
> > > Hello Suraj,
> > >
> > > > -----Original Message-----
> > > > From: Kandpal, Suraj <suraj.kandpal@intel.com>
> > > > Sent: Tuesday, March 26, 2024 10:45 AM
> > > > To: intel-gfx@lists.freedesktop.org
> > > > Cc: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>;
> > > > Kandpal, Suraj <suraj.kandpal@intel.com>
> > > > Subject: [PATCH] drm/i915/display: Initalizalize capability
> > > > variables
> > >
> > > Typo: Initialize
> > >
> >
> > Sure will fix
> >
> > > > Initialize HDCP capability variables to false to avoid UBSAN
> > > > warning in boolean value.
> > > >
> > >
> > > I can see a case where hdcp_cap remains unassigned in case
> > > intel_dp_hdcp_get_remote_capability() returns without assigning it a
> value.
> > >
> > > Is that intended/expected?
> > >
> >
> > That is not intentional but this patch makes sure hdcp_capable will be
> > false when this function gets called.
> >
>=20
> This patch makes sense for sure but what I am getting at is if UBSAN is
> revealing a bug in our code.
>=20
> intel_dp_hdcp_get_remote_capability() returns if
> _intel_dp_hdcp2_get_capability() fails. In that case we never check for h=
dcp
> 1.4 capability.
> If a remote sink can be hdcp 1.4 capable but not hdcp 2 capable, this log=
ic is
> problematic.

True let me add a patch that fixes that too.
 Regards,
Suraj Kandpal
>=20
> Regards
>=20
> Chaitanya
>=20
> > Regards,
> > Suraj Kandpal
> >
> > > Regards
> > >
> > > Chaitanya
> > >
> > > > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_display_debugfs.c | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > > > b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > > > index b99c024b0934..95d14dab089e 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > > > @@ -191,7 +191,7 @@ static void intel_hdcp_info(struct seq_file *m,
> > > >  			    struct intel_connector *intel_connector,
> > > >  			    bool remote_req)
> > > >  {
> > > > -	bool hdcp_cap, hdcp2_cap;
> > > > +	bool hdcp_cap =3D false, hdcp2_cap =3D false;
> > > >
> > > >  	if (!intel_connector->hdcp.shim) {
> > > >  		seq_puts(m, "No Connector Support");
> > > > --
> > > > 2.43.2

