Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YFrnHIYS1GmEqgcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 22:07:34 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B58613A6DFF
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 22:07:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65C4D10E29C;
	Mon,  6 Apr 2026 20:07:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="arStwHYV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B16110E08F;
 Mon,  6 Apr 2026 20:07:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775506049; x=1807042049;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pma7GFT5NkDbk2W5NYOea4WcYIjNnYNrcwadO8FMGW0=;
 b=arStwHYVIeodDVx5uw2Qz28QrNYM1NfSPuCzJxfTr8mCmCTh56sS8WBR
 5FjYi6Ql4VPKJ4wpGhaNLVtIkmlg/oG9EhhMhd9YEI00mUp8vHHu22Zvn
 1xqoZSrqSg28CdbhG9zhAhy1rXv69Y7G6NwJh/iB8kQ8JeDU1LoX7Kt7C
 KHotmvMYjvDBbvjjBu0OlgP84V0nMUi9Lg+r7eqxYhDhjw6nCUaquxAq+
 jCMgr+yPjysGZG2N23TKmUqz18Fp9vI7sf9WkPqqz4Sdfd11C3J/mCvqY
 16GUBNedGMiwiL4zyr1YznJCmBIK34n/J2dlDpImk2QqKqyXBoYTsBBWt g==;
X-CSE-ConnectionGUID: 3GQ9aL/RTfimHKypMmRfRA==
X-CSE-MsgGUID: V0V8e6zLTnSfutqK0jI5BQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11751"; a="87085180"
X-IronPort-AV: E=Sophos;i="6.23,164,1770624000"; d="scan'208";a="87085180"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2026 13:07:21 -0700
X-CSE-ConnectionGUID: iYiQqqG1SoG1fTb9HSOILg==
X-CSE-MsgGUID: eEqT3x6rR5K+TPxj6GdA5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,164,1770624000"; d="scan'208";a="224740616"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2026 13:07:14 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 6 Apr 2026 13:07:13 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 6 Apr 2026 13:07:13 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.67)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 6 Apr 2026 13:07:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hq60tXYXydElk6c6UqpOH3dXwAOD4c8Y/FCtaPdC29HuAS/0yFkwiTKhdOcPLtumRjFJP2LFCICxR57K1MxncPzVgF5r0BZqdQZPUdhXWzZgbN0V2zlLmbUzhNA4Oo74YVSEsmV1DVsjzJD/2GQ5Mv5srWtH/yUbsr2PpLMcSbx22175p747I4KW0LwqWnmvSV02QskH2lC79fqUgMPsV4KO5tbqtD6/OjXGnsJon80lS/woksJbJGU7jF9vQOVOQJvMNVXrqSLniEF7vcu0XVH02R3cNxQIDzePYk1H6DyUgjy3P8G4eKHE92Lm7aS/DVtcLzt/nXce7V2S2pWnOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5+HSN6uPkT4XgUXgCtdtPEoJWIQTOtfWAQKj0omfNjo=;
 b=X0gJS1yqQpP6dnH1/lpyzKKCdnIXx+Sej68qmcIh4ZNrC6iLPiTkT5blGqGeFUFDx9zPVv2t/e7ozqnCzx6vPKVujOb6hGz3/dPa/+M83gnDYiXuZ1WZe4TgO8/cS7lpSo0OBdIcWQnWpyGPAJy/bTfKMWTqA3KqsYoggFZjiMCPgkfWLD/pPqF45ut3+RDea6n0NEMsAJHfGUJisSqVC+Vas/r072xrsk6rShpjdJmKlp4Lt8yOZu+XXgw/EfG+gvNsMbKJT59SDOR7TV+FwGJPEnX9+LeL/gvv9tWwtgNva2+HCnIYEa87tvqV/32bRjH8eQd5WCASxvl/w/ipvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CH0PR11MB5314.namprd11.prod.outlook.com (2603:10b6:610:bd::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9769.20; Mon, 6 Apr 2026 20:07:11 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.20.9769.016; Mon, 6 Apr 2026
 20:07:11 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, Dibin Moolakadan Subrahmanian
 <dibin.moolakadan.subrahmanian@intel.com>
Subject: RE: [PATCH v3 07/12] drm/i915/cmtg: add a hook to enable ddi for CMTG
Thread-Topic: [PATCH v3 07/12] drm/i915/cmtg: add a hook to enable ddi for CMTG
Thread-Index: AQHcswMSNOOHWD9XckSTEDqLa2U7kLXSm4Rw
Date: Mon, 6 Apr 2026 20:07:11 +0000
Message-ID: <DM4PR11MB6360EE39D5DC758EB02F4CF8F45DA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260313153300.3530695-1-animesh.manna@intel.com>
 <20260313153300.3530695-8-animesh.manna@intel.com>
In-Reply-To: <20260313153300.3530695-8-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CH0PR11MB5314:EE_
x-ms-office365-filtering-correlation-id: ea33f062-7160-4df9-edab-08de941816c5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|18002099003|38070700021|22082099003|56012099003;
x-microsoft-antispam-message-info: 365YNPvIQG6EtZmtSRrLEdU7yXeIdFHu7y6yo6+g2dZqMO0J1L/97KIDWAmgH5XjTCMcVCgSk5g9gEIZDifehPrscvPTtoYaGiP/gQ5XlgDw6OJSdlVXme78lNvfVcHeoBxaw5DscTzwFCOxXisXaxaUF93Ic+KgyWFPSzQlKTIwid8kwyszCwleBzzS/bOz/Ke/BgkYaCX8nW4QH00Kpo4hOq7QKfxkqZPP+7fKjoN37uire0zMQq2RUyHxDIuwMMEuSmJVh/MbG42my9yAVJ/gpadsdcASii8sDF2LzDba5dlSqq6jyUIVRbGy1blkr8jn3hyJUsVsF9iEQDKpBzGmbUCDAaZnbuE25ROw+FtN6I2hhnjv9Aat33N+MF88hAUMG6wAM6Ct5VSKEUgp+ZYvrR2MTPUzolAAt3rBoAvZKQfaqAPN64RvllnMoHvt1hXnlf4PW99CrGxrRQRXl/dpg/eoB8Tf23DcvlSgBIbfgA2qXgsJAqgxuyEXaM2xw1hkZomOQhQssu+kBxXPtSD9Soo6E4WVPvg/XnTLLlA6HxHW7a3B+qpG3pv+rc6sOUPaZKRrBb8eLKpeSaVOJHV2E1j3rKsvVUe2SUvpegiN16simKqGFu2Y52L8xklYmcpYwLZ6GuXkdo8g3H0EyF4cuIItztrgoGO4+6x8rbP4ZvfMArrpisupHzKCmPvY3mbx2PhWqwQkkPBa1bNaQRolZz8SHn59FqwDwfcfSjfFnICBLA62O3TFyCoE28yiUqkN1UrZ94gm1Get3cd5CccLNNt94KrnclpFsflkdw4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(18002099003)(38070700021)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?iAAzTuAIVuxMZ1psEiSRVbdnhDOwAn88OOdUwyRaVm1QOvlOmqYo4iYHvtvV?=
 =?us-ascii?Q?olO2u6iVcMlSOTBhjQqAnixL3r1UfZ2kWmzVAfJB7iEMvhiWW7YdIlIdWzn7?=
 =?us-ascii?Q?TpTha7IZBR88PXF6D/ZV2rTsLpfdoNlFZ7UwRFWFpAdJuUv7GSL1RwkPdvRJ?=
 =?us-ascii?Q?dHiFd4S2aDtS2l5cZzwSiZneAovDbCt1Hp7JkiDJu8b7SAEhuOlBD1oC7C2I?=
 =?us-ascii?Q?wUmwHZXzNTXrw8WriH6RgZQgs3KdUv6FWi9hPmcXNLZaCh4BFMP8k1ct86mE?=
 =?us-ascii?Q?XsLD/VMzCrDOXhfmRfBcVn2yANsZQAtVFtQS7SpE1pZ6TExXiBMHFqf+fx1V?=
 =?us-ascii?Q?OK0T+mladBo1JmJ4uEKaQaketzYAENA4CqGNaEbnZOPyS6utw7axZa7TyBuO?=
 =?us-ascii?Q?Sg1Eao4guPFVkNuq/ynBrI9nrtyHIO/9dxilmWwhzZXRTogSoRo2KzoLfrp6?=
 =?us-ascii?Q?MuEnTUyJ1twWgoW68NKCQ9Pk1+AmaheDF9lCqG075MGMIOjc4AZ/s0roFPvd?=
 =?us-ascii?Q?0/fQA6RY+60tqOsOdVuHlFVR+9UPbOa7a12PoFAvgauGPf1StekVtmzKo3QL?=
 =?us-ascii?Q?yTH0uBWw8wXGwD2GWIZ6a3p46h8icSfxMhhtOpq2m4BDADK126zbRPmNhvaK?=
 =?us-ascii?Q?500xUG1ZspWW4Xjq6SWRTAJBb/hLjN9bpgQxNHrdp/cpHY+tf30k65+5NCKk?=
 =?us-ascii?Q?r3MPOCTlfVPqZC2+gYhmBVt4KvPeuqzNOn0v1VsbNZQ6FfPCiXNjhnDlTheD?=
 =?us-ascii?Q?az3tBL+UG/Lxyd12eSIL66d5o+tBwRGmC8Emvq5aFEBvHVHUznafu+a6AjBJ?=
 =?us-ascii?Q?bbyFd/bHxZAW0HKAUK6OmtHAT375TSo5F/AtLyG+zh48+FmEb2I8zODDaBFQ?=
 =?us-ascii?Q?ooRpjBsrtJBFvNF/VVkzOql4N4FT8MBJRAgBhR1e3fDxluVI1hOWYXHu2XIu?=
 =?us-ascii?Q?x1ekkIrTJHnzggqvY59fkP6Xm4HtfeNXQsBVEdGoxOANpfGgXGUtGHINZEQf?=
 =?us-ascii?Q?77ApGa9SFuOHe2w4unZCapf6zyfiAsAM76hEOUUGufYTnOe2kPbBSFlqdbUw?=
 =?us-ascii?Q?SOEVuozTKrZs4cy/VDlH9bPqlqV1q6NvErUJtbmtRPsumyTkFQ+rYZMmJUFl?=
 =?us-ascii?Q?UCnPyWu7t4hd3tnghsNWYavTwJH5gP2d0RxA8fSMTtwXzD9Wuh7F/9Z+cOT1?=
 =?us-ascii?Q?4wUESFE+4H7aaDAClkM4gUMN3GOHzeWMfQqi5tT61LEX1wsk5rrlQW7Qrrgq?=
 =?us-ascii?Q?Ue0NPygm7CqpNy/k+mAso7lXPFNJ0Zn9gviHHNp1MMBAFOcFiAgyB6gmn+zq?=
 =?us-ascii?Q?TurbXUCEcH9pKN1gh54rBykQVf383ZXYhA5mcvFADNZkYbYXx68LcFA65sp9?=
 =?us-ascii?Q?5GD9eXIvLRiQuwqBy2hYAYzGyaS4bogeyPrvf+7Tm5mHyVDfXj4cXD4Ukcwb?=
 =?us-ascii?Q?oFNenfxdExltzsMDMBg1C+Rk0GQYDux+zBoEIcnuZKp5oigsPRL7FmWsd6/Q?=
 =?us-ascii?Q?ef0wVRMzw/tGubT1OJuo4WMft5Osp0CLFwqGxyCVULuHoNOWRzdowBkZDn10?=
 =?us-ascii?Q?vnvZDFGJJXJACkdZW8+wYaxqZjbhytRwaObiGcLFniUzO7gl64OKeNAwRzJc?=
 =?us-ascii?Q?1xZQWTLlCniKti6yYcks85bzO1t7xLWVeUr1NbagmiI1KvDzrMcgR7nXO5ll?=
 =?us-ascii?Q?1EoE+C3kT43bzk52FXwZ5jEEWafchEG/RatvQ6MoTaQCGY5Tt01KLlFJygVm?=
 =?us-ascii?Q?dsn6fEsTeg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: kQSA1SpoNXEE7BUJzj4Sllqc9w136hCltyaKsMy8DG5Ds1rmeru8SigucnKrHLCdNWpyFZZ2DTx30JFeSVzuOQzHrzRYcHv/+e9u0UvztzGGEmVSM2mcp6e2Bl5yUAFefLtyW+a6rzLOzG2SAk+o2ubjd4sf1Fi9tOP+9UtznBa57/TbQOSZXt4+8kayT7UMPXhVuZRv4TGW0mpkw3HPtEYd6NRZlU/ltMy8XfW6HeU3XeYip4kUvC8z299xOnn/yMBjp6UCtMt+NJd76C30j77p6POKrK7Bq5Ynoyl5eIEs7xv0fck3K+7maYBIKBDlr2ZA0CESX8ZM6jYQixyXJA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea33f062-7160-4df9-edab-08de941816c5
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Apr 2026 20:07:11.5258 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VqI6Z+Wsx20/BvopLALmoWta5SF5J2K36CW7MjT69GGZ7frmwtzLx9Wd+ZtLAT0et/bleVOXPhyVDlWjdL3bAg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5314
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DM4PR11MB6360.namprd11.prod.outlook.com:mid,intel.com:dkim,intel.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: B58613A6DFF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Manna, Animesh <animesh.manna@intel.com>
> Sent: Friday, March 13, 2026 9:03 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>
> Subject: [PATCH v3 07/12] drm/i915/cmtg: add a hook to enable ddi for CMT=
G

Commit header can be updated, this is not enabling DDI bit making it second=
ary.

With above fixed,
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Program DDI_FUNC_CTL2 to configure the eDP transcoder as secondary to the
> CMTG transcoder.
>=20
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cmtg.c | 13 +++++++++++++
> drivers/gpu/drm/i915/display/intel_cmtg.h |  1 +
>  2 files changed, 14 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
> b/drivers/gpu/drm/i915/display/intel_cmtg.c
> index a802bf3e52e9..703828339d4d 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> @@ -334,3 +334,16 @@ void intel_cmtg_enable_sync(const struct
> intel_crtc_state *crtc_state)
>  			 transcoder_name(cpu_transcoder));
>  	}
>  }
> +
> +void intel_cmtg_enable_ddi(const struct intel_crtc_state *crtc_state) {
> +	struct intel_display *display =3D to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> +
> +	if (!intel_cmtg_is_allowed(crtc_state))
> +		return;
> +
> +	intel_de_rmw(display, TRANS_DDI_FUNC_CTL2(display,
> cpu_transcoder), 0,
> +CMTG_SECONDARY_MODE);
> +
> +	drm_dbg_kms(display->drm, "CMTG: %s enabled\n",
> +transcoder_name(cpu_transcoder)); }
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h
> b/drivers/gpu/drm/i915/display/intel_cmtg.h
> index 64ff6a19948a..12abbafa7d08 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.h
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
> @@ -11,6 +11,7 @@
>  struct intel_display;
>  struct intel_crtc_state;
>=20
> +void intel_cmtg_enable_ddi(const struct intel_crtc_state *crtc_state);
>  void intel_cmtg_enable_sync(const struct intel_crtc_state *crtc_state); =
 void
> intel_cmtg_set_m_n(const struct intel_crtc_state *crtc_state);  void
> intel_cmtg_set_vrr_timings(const struct intel_crtc_state *crtc_state);
> --
> 2.29.0

