Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 74EBF6FB5C3
	for <lists+intel-gfx@lfdr.de>; Mon,  8 May 2023 19:15:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2FB510E0FC;
	Mon,  8 May 2023 17:15:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D806710E0FC
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 May 2023 17:15:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683566110; x=1715102110;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yroJiIj7gmv5Dub3FFvztVRCXXQtKeYHWKYQ6syiPSM=;
 b=nlQGKQoF/d25zvetWHr7HcUYfpla9O7V7+Z0QvOLI0OUchS0o6AF5qx0
 ddPeKgNpPevCA7H39w/YPguS+s4Q+CY9ZyQta928ix4auwsrab+MiFQJe
 gizJqwx1TI8HFmjMIF7qbSAcZYIInClpRA+Bzphfj/cUkFL7Ve204Pay3
 bQrEZ0dtOTYGn830A8Q7PI5LVjJc4uUZixUFPBbmcqGX0uwKtC6uZAXZy
 hQXteW2RCNmmmVOoVyr6eyIbiFBJu0Ae1MD7JPfMmhV1kJDOHlTBhS9uQ
 9BqyFyBSykVnBzdbIazQA1Gff1ifxLjC1OvuvkOkPD4FM8RpVaA2G61Cn A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="436026106"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="436026106"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2023 10:15:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="822762248"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="822762248"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP; 08 May 2023 10:15:08 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 8 May 2023 10:15:08 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 8 May 2023 10:15:08 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 8 May 2023 10:15:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RjK1uJzkzUY3JRw8NJ2YcZOc5zBmQpXaOdfg7XcALM5Qqgfmd1eiF9q1MLLBcTqXBIAdAo8wzFyIrt2FJKCzmpwCsNCSb/UEmuNfEduGjdV0FFgU+EVoAuCMGwgTciH0r5FzP9lsH9MxnkV9SyQxWulLGOa/QpeX9dl5LLCSNbKEQW5gPoFohvqT2I72NT9262TC5Av82/TlMgdqVZh+ATkdWy+Tc+CkO8DpNEgMmJE1pv8lOlT9POJ9a7OvX6DMQJMmT7LBhOLUFgq2TiSZJVwyA9cTqLR8Sw7bGFUuSyG1Z0lA8WlehdytoyTYktrWG9nMKBI0V+panfhdcabOXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g2KEiH/JXCfHF3XoqoH81y3ksX6RIzCnLVunEutRz5A=;
 b=oaZWtENAwX/iVEc12XZBvi+vIJIUB26rrBS8+fk7c/MXkN5JRQZvNDQ2UWoJlom9ISXEc+Sb05prO39jVJfOQ4AUpFYbcqBKZGFioTPMAR/yix6XTiCFhygeIz2xThV6EN9hFTeB+NPUwGFaTz2jlGiuuiYUpUgcsevGjpSa1GFX/ARWPh5ZkIBUAiF+DGfdgmdkIr8RmB41aOiM9LkiKsjy3q9btjs/KQx8aj+syc5xRy9WvkOFn9jL4v848ZlcnVQRuQHkQYEHboQYh9ZUErxRY8FDjCFmzL7yvykbDSUuP7DTPcZv2BpYFN0/0gCQ7CT10u6LS7VjYFGKLtMq1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 SN7PR11MB7466.namprd11.prod.outlook.com (2603:10b6:806:34c::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6363.32; Mon, 8 May 2023 17:15:06 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e%9]) with mapi id 15.20.6363.032; Mon, 8 May 2023
 17:15:06 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Upadhyay, Tejas" <tejas.upadhyay@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/mtl: Fix the wa number for
 Wa_22016670082
Thread-Index: AQHZf6vmb3pbG8icj0qG+dnKH4ginK9QT/AAgABR4bA=
Date: Mon, 8 May 2023 17:15:05 +0000
Message-ID: <DM4PR11MB5971D85AACB046A664B9459D87719@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20230505234544.4029535-1-radhakrishna.sripada@intel.com>
 <SJ1PR11MB6204FAA51CCDEB35E62F718181719@SJ1PR11MB6204.namprd11.prod.outlook.com>
In-Reply-To: <SJ1PR11MB6204FAA51CCDEB35E62F718181719@SJ1PR11MB6204.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|SN7PR11MB7466:EE_
x-ms-office365-filtering-correlation-id: 01c2a547-385c-4a54-38dd-08db4fe7c4bd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SU6jMYKmaq/Dc1/ImZE0uHOLU9pb7nVFO22NuXYCa5ELzwBcpP9ewS5PaBVtieYEJPqj6qty6XyDx61y3nzZmRxfMUPxTypdMCrGiIlexuOvNK4VdXkQgeArFfeTHTrSNpFYsS58ndcrOhIiskujYjb+jfGNqulbMnxv9dMVHP5dYIQAxdpUqglAn56NTHuCaM1YveLS3TkYzwRMBrM4QTeQmYGFn1tqhCH/t8J6pz7L+bJxJOD/9FNQYt2JdbI+uY1O83Ed9wgZaMdRySHW1KY8dewE7iRaj9gFvB//kofayHv0twxCJwvVStdothLzkgV232TIX9Ra0fDdx4RmZ/F1Kr1MMhcGN8D71zbjBwxcw/R/uOlOWMvgH1xNFa+Hyuy96PytWwAXIOjzyQR3s/WJ9BP83FO3aD8wfqGyGumXus7sP/fClckvQAV4+/gGziCafGBdO3+Qy5ClE6hVfs+vzTxvrcVgbIIxry9JHHJv5mDPDnDe40vXnvUd3+tU1zBEC5sSIUYIvNC+A5GiQpGR973c9WFnqd5fLJcQz03f3PAxIwtsyK/sQEW6jMQLyEYKgwXKvHrBljOjwdZmeo0GACaUQwYxYHUDH7Vt/aGdqDguEfmfJOmsLGCxDhRU
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(366004)(136003)(39860400002)(376002)(346002)(451199021)(6506007)(107886003)(26005)(53546011)(9686003)(83380400001)(55016003)(38100700002)(86362001)(122000001)(33656002)(38070700005)(82960400001)(186003)(7696005)(71200400001)(110136005)(2906002)(8936002)(8676002)(316002)(41300700001)(478600001)(52536014)(66476007)(4326008)(66946007)(66446008)(5660300002)(66556008)(64756008)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?e77PfnABkp8xP36CRypYDiva8IFYhFN2WfTRpxs4LE1HrGvAEN0fzv8eXE+z?=
 =?us-ascii?Q?tmUqgDXlU7ojmCJtise3HmjSW5RtgXL3pbK0+nOXuFJermnEdx4dVLozvsaI?=
 =?us-ascii?Q?abZ6QLWnKqZe3vu6cP1C7wAoGkD0EAb3PkWaEc0Ui1kDSUqm1Vt2vONTQp1z?=
 =?us-ascii?Q?A+7auq59qKQXhuqLV7cO/MFwuqTHJB02ulrtnah6b+pcbNyGZdxt5f0YMDP5?=
 =?us-ascii?Q?FsPda/XlfnGd7x+6iM5y5+rVg9KdT6fU/uXcsim/lnln4TrSbt/unCzEHy8L?=
 =?us-ascii?Q?Ztvc9PFzYAUlx+f1IIHKXQNouyXYeFH2J6LHTizaqvxeDZrP7DRum7Tr1ga5?=
 =?us-ascii?Q?NSHDVuCYCPIKIKR1S+wns3aagcAU0IHZAEj2+J3fkvtOCGwP4TDUZnA14Eqv?=
 =?us-ascii?Q?X9ZRPD78iABAZK3b2oMzzk+BwG6IAbMTwiL9FAYxQybnOjpZTK3QDQl5LD+d?=
 =?us-ascii?Q?lC32pYB6ne1mqcx1rhkM2fv8F1zZbEnKi9j9LP/wFAeWuCXKm7O1r9CqsD+X?=
 =?us-ascii?Q?+bavVqyhdQQqkG5Cpe0IkoIvx7M+YNC0azNRzASVj9KxJd+X9p7thEvJWSZD?=
 =?us-ascii?Q?07ktdcJLDaUkNTNsekZBU7Us+s58phdg62BfD2X6Udbdvo7pafUiYaWSeVe7?=
 =?us-ascii?Q?eD9Xkjtg6++G00P2lLTlsOV7SSDH8eZ4adwlR7NYp5mD5YKLZ4ISX22HbWTy?=
 =?us-ascii?Q?jNsoznvjMgHBD0ssJyrrNDD95ue80HNtf7KEDTyWYMuc7zXKMeuL1Ss0AUJs?=
 =?us-ascii?Q?kN1jwtY24ax/02sbFJq7n7vgveRU5KHDqe9sBFp3bM7Xlb5Ax7sceyLh+fvS?=
 =?us-ascii?Q?1xya33UZiC0WZnykoQ0oVafqYrE64O5UAOI6g4vIcvsVgPhnxSLbj8sM9E2/?=
 =?us-ascii?Q?obDYBmc08hFQnErNpiIP5F9qjOW1O3Ui5mTkDElIUiGhQcr3Ap2K1rniPkcG?=
 =?us-ascii?Q?ZzhssYCYg0fnF93+xweyaQgJeoS3Jp4X3505vjXhD8TteOxwUSFHw24Op8Cj?=
 =?us-ascii?Q?Wt3BR6yej7eqVQ0OylxU25hrU+3aMsg51ZAFGGsxWHrYd5vc9McUhsBURpCO?=
 =?us-ascii?Q?7CqB1MjPdOUwyM0nOwnk2x4P4rdCkVrVVzTUpApA2hpw03KTzWiuEEa4tXMQ?=
 =?us-ascii?Q?32cs6C/cRqejqe7vVZ6fUHEgmIoc+QVSSzgah7BKSR/MckfgGuCatiTv7oXI?=
 =?us-ascii?Q?kvqyD0efx0K5O52jyDAAeZ9kGR7Gxq469W82yCyHDWv8SLQODeHYex+r2gK5?=
 =?us-ascii?Q?D/L3RnOU5rU19Sh1tfeRaDi79fVXXDAgwjO2kpE8MRtelggybGKxENA6JSPx?=
 =?us-ascii?Q?7GERTzpZpDdnfTx1Wq8oGrb0YrNRv+cYigPtqp4QRfZmzkDYC5t3xB1FPCFt?=
 =?us-ascii?Q?SqQ8BZw6iToQKGn9t0n/lV4TeWw0HNechStZrn/CGsVBiLoyKF/rJe9j5QVL?=
 =?us-ascii?Q?2v6nwgvXJWtbHS38I6p1fN6fJTSjVnYcW0fcN6woHyOYlFl+F3/QWAeeX9Gx?=
 =?us-ascii?Q?kWlDS/zwson2HfBOwsimhJneHFcxgfpfb/E9jS7X+O2GlwsZqWJECbX+2Wgl?=
 =?us-ascii?Q?ENvD7Z3Y4LsN7TW1q5tzxVtMin1CoP8Jrw244NAuEOTeJYc5TlpDWcDAj8EG?=
 =?us-ascii?Q?Hw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 01c2a547-385c-4a54-38dd-08db4fe7c4bd
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2023 17:15:05.9295 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Scv4eW7zW79e1f1Z/pOR+w+UAoVGkB3p/AqdxqmKcqHiJqsS5r6j4VkYN1ZRFjPQDhks4Ojj2I9AmqOUSWuUaEDf9P+9VpO/xPVBIS2gnYc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7466
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Fix the wa number for
 Wa_22016670082
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
Cc: "Roper, Matthew D" <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Thank you all for the reviews. Pushed the changes.

-Radhakrishna(RK) Sripada

> -----Original Message-----
> From: Upadhyay, Tejas <tejas.upadhyay@intel.com>
> Sent: Monday, May 8, 2023 5:22 AM
> To: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Roper, Matthew D <matthew.d.roper@intel.com>
> Subject: RE: [Intel-gfx] [PATCH] drm/i915/mtl: Fix the wa number for
> Wa_22016670082
>=20
>=20
>=20
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> > Radhakrishna Sripada
> > Sent: Saturday, May 6, 2023 5:16 AM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Roper, Matthew D <matthew.d.roper@intel.com>
> > Subject: [Intel-gfx] [PATCH] drm/i915/mtl: Fix the wa number for
> > Wa_22016670082
> >
> > Fixes the right lineage number for the workaround.
> >
> > Fixes: a7fa1537b791 ("drm/i915/mtl: Implement Wa_14019141245")
> > Cc: Matt Roper <matthew.d.roper@intel.com>
> > Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_workarounds.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > index ad9e7f49a6fa..786349e95487 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > @@ -1699,7 +1699,7 @@ xelpg_gt_workarounds_init(struct intel_gt *gt,
> > struct i915_wa_list *wal)
> >  	wa_mcr_write_or(wal, RENDER_MOD_CTRL, FORCE_MISS_FTLB);
> >  	wa_mcr_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
> >
> > -	/* Wa_14019141245 */
> > +	/* Wa_22016670082 */
>=20
> Lineage number looks correct to me. Thanks.
>=20
> Reviewed-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
>=20
> >  	wa_write_or(wal, GEN12_SQCNT1, GEN12_STRICT_RAR_ENABLE);
> >
> >  	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
> > --
> > 2.34.1

