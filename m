Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id SlqAHBKLTGonmAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 07:13:54 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B724871763D
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 07:13:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=SW34kFfM;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E189510E41F;
	Tue,  7 Jul 2026 05:13:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E3FA10E41B;
 Tue,  7 Jul 2026 05:13:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783401231; x=1814937231;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=gCENvn3SPZONWmoz92oDjCXZaCxyfLMdPHmsqRim8Kc=;
 b=SW34kFfMZHh14DONGqU1m48jjB5mmCUdYsarT8Qiz8MuolFZE3CwXwIh
 64FK5Jh0eJ9vQt3zWONsE6KdTu8OTjeqlzeU5uuB4FAyrULRsQtVhBjUq
 x23WPUYUHixfA6/U4DjI8ADHr6O1HSV7nWsm6eBwoKpoUPQrNi82esv2T
 cDC6GZYrL3Nf0wjso16FkPs0v7aub3hNzGMaANHuUxYB21Zk06n7o6YHz
 p4S0W2yABngEYIUg2zNGWtPUQd6dt7mG80CbcmUmXpbWKhrPYxOINBH9c
 18DQAZ8CgcvUxVIdoP+L6vTJnOFUCjigMjAb4QzIkqU+GZQcV/FxnLsW+ A==;
X-CSE-ConnectionGUID: oro95cgrSCKHpt4WcH+AXA==
X-CSE-MsgGUID: DJe/Ce2lTqO/ytRPSTJFAg==
X-IronPort-AV: E=McAfee;i="6800,10657,11839"; a="83812591"
X-IronPort-AV: E=Sophos;i="6.25,151,1779174000"; d="scan'208";a="83812591"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 22:13:51 -0700
X-CSE-ConnectionGUID: QIUqq6pnSrqngU0ePpRvhA==
X-CSE-MsgGUID: a6ZZ7HAqTtOWLaJ1HRupHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,151,1779174000"; d="scan'208";a="249905673"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 22:13:51 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 22:13:50 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 6 Jul 2026 22:13:50 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.69) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 22:13:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GDH5cPIq+C9xqkvpDtszz14NcQMQ7dQ+mX6hP5KctDfiyv9MLiXvTx5Mc4ooRgp+GZUqVOcy6x8xDEgpt7SHPEXs/YmbX5Pvnhl4Qe4VKSHvRZmZxQnyvSzYV/AwPAYFov7exxbcHKzETkU2lABjKtVWdEKfP6quDE5g8VdKJnjkl17Tsjp6Fc7xOtnBchsbAyStxs+5o05hayJo9DlTr3eDaKLupDcWLii5rcHD1nwmH/bkNLwIl6lq0A86b/m44eG1vFX1YH5etN/j6yEmpFeqRkKqrrQWldadaot4pwplGoulL0cXYarKnOrmjH51T0KxXmjJwHYzxb9LS0aevw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B+SvwQFpwNUWjWxR4Ngg63Auces9bqWtPmSH4iO+hhg=;
 b=jDP0BhJAzfz1SjFeAl6O7Bxh7/j3FRYM4WYMdqlnjefPi7RVgLGmL3JkV5515ShsphuzbaaOfL/GrSBse3E2AAxElIw3lnQF10P0889AMBkj5XwBsjO6JgyHKLn07qmGRJSzBQtN/OMwFg06LS/IShzI3YCLRxaDFq8WWbLNpIAC4sKBhW7//Jh7tVChj6y0otU/mALY2qb5sraD014KaZoivl/AzzH/ZwBb4BBgAsm2Ix3jK/UJuXnsvrf+9iqucoE1IPAaHtXVca3OlGbIq7gAqU4HhRpdWkhfTSbT8BrEr+toETYZXyu3x3QQK9vEoGtRoj9LVGeZD5C9Y0G96g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::5b) by CHAPR11MB9679.namprd11.prod.outlook.com
 (2603:10b6:610:2ff::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.19; Tue, 7 Jul
 2026 05:13:48 +0000
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6]) by DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6%6]) with mapi id 15.21.0181.012; Tue, 7 Jul 2026
 05:13:47 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 05/34] drm/i915/dp_link_caps: Add helper to get
 iteration order for a connector
Thread-Topic: [PATCH v2 05/34] drm/i915/dp_link_caps: Add helper to get
 iteration order for a connector
Thread-Index: AQHdCW7yMC5twhHKTE+lkGG5rUV157Zhi7jg
Date: Tue, 7 Jul 2026 05:13:47 +0000
Message-ID: <DS4PPFE901A304FEE64639437C671A5164EE3F02@DS4PPFE901A304F.namprd11.prod.outlook.com>
References: <20260701153204.4124150-1-imre.deak@intel.com>
 <20260701153204.4124150-6-imre.deak@intel.com>
In-Reply-To: <20260701153204.4124150-6-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPFE901A304F:EE_|CHAPR11MB9679:EE_
x-ms-office365-filtering-correlation-id: 5677c504-98e7-416b-c0a0-08dedbe6868d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|23010399003|22082099003|18002099003|38070700021|4143699003|6133799003|56012099006|11063799006;
x-microsoft-antispam-message-info: KM2OOUfWQ2duHmnj/EG8sgrPzg1niyI7tPbtSKQPRXhvM8nLR2jNYu6PYZLZ4w6rtwnObCGm/X5bCDEd9aMTADf8xvUIYAq2GDHWT7iBNTL4SFG8mCJvoKEA8CEulBkNSQfVT2rGrDO3erHyAssqXRm1R6gIueJ5euVc6vgqOcC0KIPI0T7ahfEPLLUqzulhwq3JfnznSvupDL2FAIqLRYExEtObMIzgPd4Vzin6FUvx0sNqfNXfBKIYU99i5I4dA4+toFTOtIlb37eUhkKA/A4GClRA0T+61FJtxaxFAY5FXQQxtYohxgQdauo99CaU2fBBWsarGrTOmpTI1VWtXCzxLpqbKnalV5m9eH9Xmlhhz6SMezJSy139pJVRjwq2bed2QtEaARi3MP7mTkZ0mA3a6eSJdc0T9IN1ioZSPXPbOa0Tp7+aaHEMSGWidfyFYg4hGVS9uFVovRnNkihtWG3/2FZe2Rb9eFj/wL4cDQsa49HtxtTv+gy5Jjt21fWex8aizjmrRBl8uBgBCWwVgZAJ/RKQ5KLZ6fHiYpE82xtH4x9D5MKO9ikvkXRDohTFUoj2/HinxpvdsdeMbhnkClTXulnw4HsQulBEP0eos4lNhHIpSCztJFIM1ZKMnDrJFrYrxp4w4tF94oNe/QH0/vuY5ju0RhiPExeyK7p9Ipr+nOsoCw+spakw9k8xbVQXTaIrz3w5jCEnbz+ReyGO37tqBdvR5TwsGKsCJeVMPrQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPFE901A304F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(23010399003)(22082099003)(18002099003)(38070700021)(4143699003)(6133799003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dEE0VwDrI+pmrgHmj8PlqXKrdx82yXFl74xCwRt7MpV54V0SJQqFGHMk1/4f?=
 =?us-ascii?Q?wLtBVJ89YxHseLis4XCmTRk+JMGpCT4xcN/jgH8jIkaIGCKZS/b6YHcmY6yw?=
 =?us-ascii?Q?9fFxcQQVZytbha3nAt4UnMlu22KP/92WlBzXqpYYLCtBJPrWUboLpATgEZSd?=
 =?us-ascii?Q?G0ISK6MYjsc5zB3H8DRKeDwzqKS6DF5rl0vOsQc7MEiRxw/WWQcGL/jpe2ph?=
 =?us-ascii?Q?MJY16C6J2o46ib9EoI/lByFccPk9F9gVxka4tc8MKOFiCgAgkTyTfqcfWj62?=
 =?us-ascii?Q?Id4VB7PQSup7h9d6X28hI0vGhpKM9p014x/QgUalXn1bEsqczBA95++aBI1+?=
 =?us-ascii?Q?p+aoiXcYmgMyDEX9sNSwkmLF7mS4bd6g6Vt2uoMehkT0eQ2T90T305sjRzmC?=
 =?us-ascii?Q?v8BBXmDBFg4kekp1yUgD2vvGrbJVNOvoS62UBV6qilo3haIzq1yk/Vob5UeG?=
 =?us-ascii?Q?gUCEMYYZna9Z/ytfpNgN7sJlLl16zaU9zGpVXquzrCmKGktP9f8O1bFbdc2D?=
 =?us-ascii?Q?9ywhvBDDVgbbcZlUD/DIfoYyr/Gcupso53K7eNE6Pxz+2fJxmXBgy1cjoAjA?=
 =?us-ascii?Q?CEBRM+hQ7XnrA1WtZgeQamJWoUHL95hJmR4vJ+22Of+mHLA25te7Xvqa4YTw?=
 =?us-ascii?Q?qeNIA0bnhd4GQ4+PshGihkF/D5dbB5MM7ya4+siRHsxeyTF3xdmzkwBvSO0I?=
 =?us-ascii?Q?Ky+MQg7nhtrVCTDc0Dk40AuCbjHGy8Im43MbD+gfi2cq2Xzlw0b36OZpc8q+?=
 =?us-ascii?Q?hMJkjIjqhTnVpTDFwi4C8Guw8SRVXCvSg36k2vQijA1+bF6/fot++4/cCdnq?=
 =?us-ascii?Q?duRvzaHa4q3W5KZTRfWC5SWyUDvl5gLjbOFRBqLiiPGZyP89O1UOGiMtLKgE?=
 =?us-ascii?Q?nQUvK53Crd3B7qcON6LjNO6ZhbiyyqVMzlPLdIAB+NpqD7V6M8nifI+CaN2O?=
 =?us-ascii?Q?OymlJJNR2X+YXrGQP33t1J6sdQSVyJfQVRipp9K29IGAaSP2Chrd4NP/Ytui?=
 =?us-ascii?Q?MzJTAyNR/evS9D5sszFmDAR8+FedSMtCulgPYuuNPGPYjr+9YcwKUD1aWw6N?=
 =?us-ascii?Q?5kQQW/YxO0jrFSbxgQ1mWgV1L3qgFAlLh9GYv1sx0k/sZDOHJlfu4Jpogvg4?=
 =?us-ascii?Q?jnLCNuf0yGKJ73WHq5uz9SmzlPxe0zPKqc3NOwIn1i3V1bNL5MzxXpIOeDd0?=
 =?us-ascii?Q?fF8bfNawJX5l8KgLhRfnIVKKgjEaCosfR9u1hAC4G0J7/cR/gen0XtgBHVKS?=
 =?us-ascii?Q?q1w/mzbTaeSlIMcEeunFuvUeXt4Y8XrgP/QaDCLOG++bGZwOlCZ2C8TNMJvn?=
 =?us-ascii?Q?Zf/GYBb3HuR+776CxexZLxy2RCFCHi60Gz/BrsEEAH1HlH20uQOHlfSzJgJc?=
 =?us-ascii?Q?g/gRFrJAFu7vT3yh+mULqVT5jZCg5SaOQuif/RXrNUd7HG7FKYPsmo8I8pBe?=
 =?us-ascii?Q?gW5sQmjB728MgzPk01ydoKueMSWpvSOsUC5nXjj7kSRZ1VTc3c3aQlf94xTU?=
 =?us-ascii?Q?4spMYstM/ASk/q/MKxfn+YVg8ODikAPMIqd/DhjqG3yq9ZdSFL/HBPGBvhS+?=
 =?us-ascii?Q?BQ1k4SjtXO1inX+nsN0OzWU/HWgJxlzk76a7CvVXpxLWO1ylQLwx2aqPM3Fv?=
 =?us-ascii?Q?SVW3V614i84ndlKRKe/aRfI/cUZnmqbbQXSQLTFRwbsb2qrIvnh8mF9D5zqe?=
 =?us-ascii?Q?QbOG0pLYuO3svmjST6CQjJnOpRFNRe5qWXTmUdjPD3UpbZTzurtjivkMYYuA?=
 =?us-ascii?Q?rqPrhKyIng=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: T/oTvPuSUOCaK391STpzvm/IweANHCEB2lQXjWpMZEm4ng2voi8OK0cTIPaHX34u3cBcrk291C1r4YA+yugy0/SJZXEFtctdxebNKc0mwUHYaepkuKQGMKZmaAfiiRalwntCQa4smEj2yDusPDqfOTX9kkO5z/bkzIbFCUjc//vzcd5QvguMvLmjsYq8+piUCL3k170bmLNGzUwM5pppb0SUnX9aZHlutP1vObwhwkSEUHdqwzDpsV84Wt/Tcep5xQmO4qRGL01oeP8kk2X8FJnMIeJe5gw9ojqR8xyLksHDB3FSSTvPS0TOwuttXvj8KzGFalw7V7IGNnPRmsARxA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPFE901A304F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5677c504-98e7-416b-c0a0-08dedbe6868d
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jul 2026 05:13:47.8967 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: t/Qv3Q3i6s1b2yANTkgFJhIhvJ0txWz4sagi1xom5QEqGuNKRnmDmx87NiPe/tPoCpazBj6xz+/xc/WE+J/HOw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CHAPR11MB9679
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:email,intel.com:dkim];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B724871763D

> Subject: [PATCH v2 05/34] drm/i915/dp_link_caps: Add helper to get iterat=
ion
> order for a connector
>=20
> Add helper to select the link configuration iteration order for a connect=
or
> during state computation and fallback selection. This keeps the connector=
-
> specific ordering policy in the link caps module.
>=20
> v2: Add helper to get the order for fallback selection as well.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  .../gpu/drm/i915/display/intel_dp_link_caps.c | 50 +++++++++++++++++++
> .../gpu/drm/i915/display/intel_dp_link_caps.h |  5 ++
>  2 files changed, 55 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> index d46b9d505a847..36895dd9d6c81 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> @@ -160,6 +160,56 @@ static struct intel_dp_link_caps_order
> bw_desc_config_order(void)
>  	return order;
>  }
>=20
> +static enum intel_dp_link_caps_order_key
> +connector_compute_order_key(bool is_mst) {
> +	if (is_mst)
> +		return INTEL_DP_LINK_CAPS_ORDER_KEY_BW;
> +	else
> +		return INTEL_DP_LINK_CAPS_ORDER_KEY_RATE_LANE;
> +}
> +
> +static enum intel_dp_link_caps_order_key
> +connector_fallback_order_key(bool is_mst) {
> +	if (is_mst)
> +		return INTEL_DP_LINK_CAPS_ORDER_KEY_BW;
> +	else
> +		return INTEL_DP_LINK_CAPS_ORDER_KEY_LANE_RATE;
> +}
> +
> +static enum intel_dp_link_caps_order_direction
> +connector_compute_order_dir(bool is_mst, bool use_max_params) {
> +	if (is_mst || use_max_params)
> +		return INTEL_DP_LINK_CAPS_ORDER_DIR_DESC;
> +	else
> +		return INTEL_DP_LINK_CAPS_ORDER_DIR_ASC; }
> +
> +struct intel_dp_link_caps_order
> +intel_dp_link_caps_connector_compute_order(struct intel_connector
> +*connector) {
> +	struct intel_dp *intel_dp =3D intel_attached_dp(connector);
> +	struct intel_dp_link_caps_order order =3D {
> +		.key =3D connector_compute_order_key(connector->mst.dp),
> +		.dir =3D connector_compute_order_dir(connector->mst.dp,
> intel_dp->use_max_params)
> +	};
> +
> +	return order;
> +}
> +
> +struct intel_dp_link_caps_order
> +intel_dp_link_caps_connector_fallback_order(bool is_mst) {
> +	struct intel_dp_link_caps_order order =3D {
> +		.key =3D connector_fallback_order_key(is_mst),
> +		.dir =3D INTEL_DP_LINK_CAPS_ORDER_DIR_DESC,
> +	};
> +
> +	return order;
> +}
> +
>  /* Get length of common rates array potentially limited by max_rate. */ =
 int
> intel_dp_common_len_rate_limit(struct intel_dp_link_caps *link_caps,
>  				   int max_rate)
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
> b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
> index 5ea87f112c13a..79aca74ad9eee 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
> @@ -113,6 +113,11 @@ void intel_dp_link_caps_iter_start(struct
> intel_dp_link_caps_iter *iter,
>=20
>  void intel_dp_link_caps_iter_end(struct intel_dp_link_caps_iter *iter);
>=20
> +struct intel_dp_link_caps_order
> +intel_dp_link_caps_connector_compute_order(struct intel_connector
> +*connector); struct intel_dp_link_caps_order
> +intel_dp_link_caps_connector_fallback_order(bool is_mst);
> +
>  int intel_dp_common_len_rate_limit(struct intel_dp_link_caps *link_caps,
>  				   int max_rate);
>  int intel_dp_common_rate(struct intel_dp_link_caps *link_caps, int index=
);
> --
> 2.49.1

