Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5206B73A32B
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jun 2023 16:36:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF65810E039;
	Thu, 22 Jun 2023 14:36:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C33A10E039
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jun 2023 14:36:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687444583; x=1718980583;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FyP+EGxdo5Z4aBC6H941yguFfxNtESEFgvPMt9q1PIw=;
 b=ebUkRGLq4use8GB+UIibzC+zzgFdlmlV0cSEwwFq5eCgNhJm9U6qZxpz
 /6GISdSjBd69srdhzwfLDfavQ1eENGRDinp/hYpUXMBSYM7wOZwjqWDZr
 1eOARDrUWpTLBdGW2JJo+rERbkPh98RWxx4x/zRF0wOHVsGC4AYpiXqLv
 qIqof+TLnK2qZBvjCsdSkZ5PwKO2aS7H1rZNHuR+ySaPKHT8kx36qxD+W
 Q/ArRdWkOuQXSdz+myDE/M/MFe1Dd+fAnwmmrAvKWj2k8pEGZtazNuJSR
 cBPPjbx8phPV5JC4NvmCChr/Ud8x8yJcCdzupaYvbzmizhwN6GPYlBGZt w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10749"; a="345251260"
X-IronPort-AV: E=Sophos;i="6.01,149,1684825200"; d="scan'208";a="345251260"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2023 07:11:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10749"; a="780233806"
X-IronPort-AV: E=Sophos;i="6.01,263,1684825200"; d="scan'208";a="780233806"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 22 Jun 2023 07:11:46 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 22 Jun 2023 07:11:45 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 22 Jun 2023 07:11:45 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 22 Jun 2023 07:11:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bydcHuGsSWj1dpLWvETsTUtoBOiybDIqVQl0TRUXiQ5gTY7M33gcf0swjhr3c9oQL7NAw80ksVDJodUo3Oi1o0qwGlE2Aa3oxhhInMuew/7F1pYDnfqzklKdlIms+PUd0rMXYMiTJdo7IRBce0vBHUD7PXy6cxdcQoAdvLQ444tA/J1ucu0HKqPzltfFu4w6HzonTS+fxA8T/N5/OmaxerTsnQaO+35apFKLE3zWLw9ggCyHzoGlHgTEv0lkPM8BHfmvxlG/2/tL3Xoi7qKOONzLHPJan0W6qRBs5WrQHmLTRt9SUF9Y2DBWPadWkOASRyahH3eawMZp0dqAvFAqfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EBB+xj0QMUJtuCQiDvMkiP6mJFRM12KwOVLw0JU0/qU=;
 b=PA59ChDltqU2z7LMqixRiLPvrOHqhPs6nd8Ef7qT6aGCZhbvx0PxhWeEez4ZiCcbr3ZNNUKZINDOfusFrCCu523d81StGbAnwBlVUfWp/I4VdGNuo1G6V+ZYC3Mh1QJSUdPSuRQBh3W+N0+iwDggOSSJyZYR5EJPjqCc1EGgMm0lB39MNMma48ZuQTjVUFk+2N+hVwh8vad9Oq4cengmICFfJyBRSkuKL/S5LaZ5q+PuUzwHTKBGYkA+8eHbx5N1mXKT71cXyyct8geXCz9ko0w618ERlmC6Upq3QnhQ3Q8mLeaUmaUKW2FM7KtLy4vSD6K7iDdtRoCjf4iWilnzjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by DS0PR11MB7926.namprd11.prod.outlook.com (2603:10b6:8:f9::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.23; Thu, 22 Jun
 2023 14:11:42 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::2b9:ed3a:1d10:7fa8]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::2b9:ed3a:1d10:7fa8%7]) with mapi id 15.20.6521.024; Thu, 22 Jun 2023
 14:11:42 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3] drm/i915/hdcp: Add a debug statement at hdcp2
 capability check
Thread-Index: AQHZpB5Is8c1MGCsRkqyMcwJpk0O0K+W2QWAgAACrACAAAKEoA==
Date: Thu, 22 Jun 2023 14:11:42 +0000
Message-ID: <SJ1PR11MB6129B8A2101EB6EF2DAA66B8B922A@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20230621014156.1994797-1-suraj.kandpal@intel.com>
 <20230621085453.1996166-1-suraj.kandpal@intel.com>
 <SJ1PR11MB61298B7FA1EB5421838C7D1CB922A@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <SN7PR11MB675078D3CA8F78D8DD50D0D4E322A@SN7PR11MB6750.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB675078D3CA8F78D8DD50D0D4E322A@SN7PR11MB6750.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|DS0PR11MB7926:EE_
x-ms-office365-filtering-correlation-id: e11ea469-4f01-4f3b-27b6-08db732a9ac1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9equf1eIS3L6y5n/cjgcFguhPlhfyRvuZBhsn6DJo8sGuTRtHJo6TGizzvNhWY10uUZX+JFQKlql/CzAQtJAMsXjdRKo6TAgVPCPStDTMBO/hDV+kGkh4kY7khR0DKrTM63gv8wEtWv7mMiig5Rer7UgopZyte1LAI0mpxHod7Gb95a/j69Dq2YB+GizXoEtj/A1YUt4uf7FbeAV2bwuelgVyumA9xDp+H0MTM1lpFKkipForHcb+2mQN7RohHfTkREK1mpR8jSQnJu6p5si4XAO+6ACyMeVt1xvsrK+ZgoK8xXDzePtR5tjm+R0oAXNrNtMGm2cR+GGxuxQbhU/N41qYJRqFQxHhlcGJRG593d+kpHO7YamSipIa9ezIs623p5cgvcmYmqp6LTi7fNLO3dc9cb3uZQRWNOSJpEV6sGZFzIki5Rziitp0wSIWA/czt3LCA63+jom9t64VEx/J/T6KfYTX+0JL55DpTVNgwStcVFrF75Qqb3SxEQ0tfH4VRO6DXh1vOTHZxnl7za1VMkzt4G63qLziNSfoA9SO7rOyfSvhCgy7Aab4Zl0/MERs9AQSjOf1147gLhvuG2Qe0/URExmkUZHdUP84FnutVt3zDUoXAr7Ipjc8d7LdJqp
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(136003)(39860400002)(396003)(376002)(346002)(451199021)(82960400001)(9686003)(38100700002)(122000001)(5660300002)(53546011)(26005)(6506007)(83380400001)(186003)(55016003)(33656002)(52536014)(41300700001)(2906002)(8936002)(71200400001)(66446008)(38070700005)(7696005)(4326008)(66476007)(478600001)(76116006)(64756008)(66556008)(66946007)(86362001)(110136005)(316002)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9Sn8fWo74lhj7WnAK8bc3l61FsAc82o8DWgfcubewzh1GryJ8Z8BTTcfm66a?=
 =?us-ascii?Q?q3lb4SzBly+qaTbTceWFFaNQMJlY8x5svyoDQdVXa8uLRGPSumd2Sb5BKejk?=
 =?us-ascii?Q?IswIzx4fgNhzz5BuhxHiq3bkzmbVgXOxk/oHqoUBIlB/EjnxSMEHm7s0uxAq?=
 =?us-ascii?Q?EfFz/m//qAQbPKkBsj3i2jX3cTi8r7FQi4CCrfQxVYoEu1lXzbNTFHstCjR9?=
 =?us-ascii?Q?DSmnldILoCoOpn2Rl8w/E7lB3vCvSn3ZwJK46s+ITgeylZZv7xELnv97sNOq?=
 =?us-ascii?Q?NxZWnoNRxGbiy++DPP/kioxQYzOU7orQd5HqexcFTVbbY9FMMq882TYAwSWF?=
 =?us-ascii?Q?lT94ws3lRaLaRv7Iy+Js2pFkMcdISzR/FNpZobNnHMuPHIrqvn5R7KzExIIf?=
 =?us-ascii?Q?pz2OdEGldxNnJ8lLk1R3oLaxJla0MW5BEvFCuXXMlAo33aVU8I7NkfChQYsL?=
 =?us-ascii?Q?8nh/gkH8mDqAfAg8GUxhf3afrsDbvf9pz98vfaXWrENb4ERJtpzONO5FAm1H?=
 =?us-ascii?Q?fvBFz87SmEvs6hvVMgxDua9Rmhw46XllPSpCigtLRSqp1f41DoTu47L8ZwS5?=
 =?us-ascii?Q?cIm+NAqExmMMHyeeJNN4tGzsC7Vl1JhtM3uCOkFXzw98EY8A4BWCQ4PDEyQH?=
 =?us-ascii?Q?FRud/dxxsMo9rZCLueus3bDr4Bx6GdV00rVqADOC+RRnMZqbJfo22+qQdjRC?=
 =?us-ascii?Q?Wp1lrcQex5filh7YhHlgO6U9oQxMJEc61I0nukgBUp/jhmAU3G45XGRB2uie?=
 =?us-ascii?Q?iwBjpQubjnaQf46oibnrKHgcvLeoE1UpTtyFkL0qo4Hc+vVy+U6dmkpjt9Jk?=
 =?us-ascii?Q?uMgxlm6tjGykaxtBFu2eHD3wShKZ1dkHKPFg81SEhS2FENZ5Ke6dWXM4IOk4?=
 =?us-ascii?Q?uvhoXEsBX/pp7TSS/w5M48YBNcQ8sJVmZh08cWnq+4RqWBTSB1dLiUkVRbfu?=
 =?us-ascii?Q?H/ZGH27PH7IYKm/oK6YgkyGJgVCSx/beMuZHPSESuRYQQ/WlESIqrUJtC3nU?=
 =?us-ascii?Q?apqSjylj2xyTZiDD3OHucREm+jRgrS00yltEIl1k7ihmjvif+jQ9rLoT9q/v?=
 =?us-ascii?Q?JFovanycVkudVhCFNtaEU88rO+05JR4NJSCefQyboz4CR0vfmyVQA1/DJiYj?=
 =?us-ascii?Q?8y7A+eWWbG3olC4Ep7ZSrBeWJecJ5U1rHmoFt3hqrD3MqW332t4yPuIeV6Xn?=
 =?us-ascii?Q?ySuCiGYxB5I1ab2uak6VPcmUBu619NwL5AEyWQJEb9hK2DrQAPhHO0kSfSqF?=
 =?us-ascii?Q?Vg6mjMn59jvM2fvM/wQBYmc4v/qvSXHcNMKVjIAblZExu+WZalbinEmVKw7g?=
 =?us-ascii?Q?lUuKGg+Ip9zvI23okgHUsutovLksoIb0Zprnb5/eV2ID9ObifE2Z1JzuHXpW?=
 =?us-ascii?Q?ReZs+LsLf8gZn6XqTpqyjybVCOV4t3laMj4VDFQqarDP13z6fmD73qwtjNQE?=
 =?us-ascii?Q?7UfWcMotXrDcyR3iiLx1g5niuh2oCcRRrwLyz1laJXdXqOLEi2V478DM/FHL?=
 =?us-ascii?Q?U1FbHltlz1saSogMR1Zd/xRkRw4VoL+L4PxjVzVpoJC3/nCVd8w/0OwjJDve?=
 =?us-ascii?Q?0gEEhc0Uv3G7Slt+CqAtJ9bdXeWJJ2UKe5YMakdIa+Sn18JFgOiqcuPZJlad?=
 =?us-ascii?Q?HA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e11ea469-4f01-4f3b-27b6-08db732a9ac1
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jun 2023 14:11:42.4670 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Eycu4ATEGi5Ggi/vZXRhBc3ezqJMdRs4zJxnW0TmeC+VZRhzhTMlRInc7qKAT7xhfcs5oZp/LWq6GZKlBb/FuK7E/lB7w0pR28tiUKLrjms=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7926
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/hdcp: Add a debug statement at
 hdcp2 capability check
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
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Thursday, June 22, 2023 7:31 PM
> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: jani.nikula@linux.intel.com
> Subject: RE: [PATCH v3] drm/i915/hdcp: Add a debug statement at hdcp2
> capability check
>=20
>=20
>=20
> > -----Original Message-----
> > From: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> > Sent: Thursday, June 22, 2023 7:23 PM
> > To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-
> > gfx@lists.freedesktop.org
> > Cc: jani.nikula@linux.intel.com
> > Subject: RE: [PATCH v3] drm/i915/hdcp: Add a debug statement at hdcp2
> > capability check
> >
> > Hello Suraj,
> >
> > > -----Original Message-----
> > > From: Kandpal, Suraj <suraj.kandpal@intel.com>
> > > Sent: Wednesday, June 21, 2023 2:25 PM
> > > To: intel-gfx@lists.freedesktop.org
> > > Cc: jani.nikula@linux.intel.com; Borah, Chaitanya Kumar
> > > <chaitanya.kumar.borah@intel.com>; Kandpal, Suraj
> > > <suraj.kandpal@intel.com>
> > > Subject: [PATCH v3] drm/i915/hdcp: Add a debug statement at hdcp2
> > > capability check
> > >
> > > Add a debug statement at hdcp2 capability check which indicates if
> > > GSC CS is causing hdcp2 incapability
> > >
> > > --v2
> > > -correcttypo in commit header
> > >
> > > --v3
> > > -correct the other typo in commit header [Jani]
> > >
> > > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_hdcp.c | 5 ++++-
> > >  1 file changed, 4 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > > b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > > index 5ed450111f77..73fe84fc9bf5 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > > @@ -177,8 +177,11 @@ bool intel_hdcp2_capable(struct intel_connector
> > > *connector)
> > >  		struct intel_gt *gt =3D i915->media_gt;
> > >  		struct intel_gsc_uc *gsc =3D gt ? &gt->uc.gsc : NULL;
> > >
> > > -		if (!gsc || !intel_uc_fw_is_running(&gsc->fw))
> > > +		if (!gsc || !intel_uc_fw_is_running(&gsc->fw)) {
> > > +			drm_dbg_kms(&i915->drm,
> > > +				    "GSC components required for HDCP2.2
> > are
> > > not ready\n");
> >
> > The change looks good to me. Only a small query, Is it important to
> > know at this point, for which condition out of the two, we actually fai=
l?
> >
>=20
> Normally we had a clear indication what caused hdcp2.2 incapability but w=
ith
> addition of gsc we needed a debug statement for this and both the above
> condition if failed point towards gsc being an issue which make me reason
> that we wouldn't need to differentiate which of the two conditions failed=
.
>=20

Noted. LGTM.

Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

> Regards,
> Suraj Kandpal
> > Regards
> >
> > Chaitanya
> >
> > >  			return false;
> > > +		}
> > >  	}
> > >
> > >  	/* MEI/GSC interface is solid depending on which is used */
> > > --
> > > 2.25.1

