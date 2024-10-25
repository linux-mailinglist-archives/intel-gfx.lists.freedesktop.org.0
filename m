Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 891629AF9E7
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 08:26:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D043810E9FD;
	Fri, 25 Oct 2024 06:26:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CxuQzqFY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E54D10E9FB;
 Fri, 25 Oct 2024 06:26:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729837576; x=1761373576;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QWznVbqk8Klay21GCbZavY9VHkxr95EX6C6BPTx38mw=;
 b=CxuQzqFYgN5AeDldw+bq8MduUVhX1EGberoZmYLD44GQg4S6iZ8zuvZT
 MA/Q/6wuJ4xyrruSGRNofZPOq6qI3nbHMIoHzHQ+P+ACxxkM8I3KaCXTu
 1XzOmeR3PYturYvg9AH8MxkPfwxPcyYyP0j5tChktQ1kwtx6sy/fdpED5
 SdsF5pkEcZkdFLnZrL8r/fv8UbaWjrkcdjRKcJRppSi9e9eMhLGVS8CFu
 pEUnj1qezH1c94lJjQDM5Th1s81OZqtIoBK/XSJhJpvwQELywZNBJf3sF
 50R62AkpPWAOhuZvwIvKn8h9eDXEIaqfQ5+Atu9kQHnWuMcwA2tO4gZBM Q==;
X-CSE-ConnectionGUID: kNiN+GB8ScGMoP+5kjYtRw==
X-CSE-MsgGUID: LX5TT0G+S0+xi3FYt0dGpw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="52050702"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="52050702"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 23:26:15 -0700
X-CSE-ConnectionGUID: /zlWUinTTYeG8cZwMYc8Rg==
X-CSE-MsgGUID: vo+oWSOqRku+PreGkVTPtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,231,1725346800"; d="scan'208";a="80828787"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Oct 2024 23:26:16 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 24 Oct 2024 23:26:14 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 24 Oct 2024 23:26:14 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 24 Oct 2024 23:26:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lwCvA+NzcE5UFjEeH8QfpSrD06uTtyYSQwig4fm7tp+mLP/6Yo7Gi5KqYZe2gNRullzhPA1XaisLTVh68i0yLk+JHuGLufO4bW6e+lAVZf47vYhawPpid/cppQFT2fZ8bFLe8hM0oYcFwna8WQySLMlWRH5c1S0pnEKQOoxeWGTr6flz5pR/OhbHGUd5xfcNMZ3m8sL1IseCOCHZEd01mwgYNzPZAsCQz//+TXiMKuo1O5/XOkOhXjzBa7Y3eC/T6vYEpD5bllkiSptavgW5H9r66FU8zitvFpgdpQLS+w2uZ+/FADxVkr/kJqPEl8RV3vJNFh7GSlQd2IEqy8aQow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LRmUZ720ISlbTkoXgR1X2gu/JnQyBWUbUOI0Isj6SUM=;
 b=ocB85YfJwbZRrhYB27mdwwkc8YzTQf2bLSB7AdkaaYoAOWq/hEjYGoe25I3HJByVFebVeZ0ZXAqHMQONfUClGMXl/7oldMRyOeZocBM/RDvItPZ/fTDlnjYoWZZTvDir5YS+7KgL4PFvCVNCdpzyWl5KIuANbtsj1uVW8DNXe6nMU9qwnhe58V4AXBvO9woeh6iPZ0rG/Pn2+VZMh6LcbZX+XTl5SQvG7s10VdT8dc3Oom+MMakTYYv3H/gMmi1Pd5pilTEibcBgCWr7kMu7VgqNk7zzAv0yiucipimVG5X5AgF8JDk0SotZMNIdkqnCMBCjNQlW0pRuIS/Dh0DW6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by IA1PR11MB8832.namprd11.prod.outlook.com (2603:10b6:208:59a::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.21; Fri, 25 Oct
 2024 06:26:10 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8093.014; Fri, 25 Oct 2024
 06:26:10 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>
Subject: RE: [PATCH 1/5] drm/i915/display: Fix the plane max height and width
 limits
Thread-Topic: [PATCH 1/5] drm/i915/display: Fix the plane max height and width
 limits
Thread-Index: AQHbJqN8EaBEVQhWEEqGgUK1puSZwrKW/t+AgAABK6A=
Date: Fri, 25 Oct 2024 06:26:10 +0000
Message-ID: <SN7PR11MB67508BC9455963CD8311ADCEE34F2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241025060136.9884-1-suraj.kandpal@intel.com>
 <20241025060136.9884-2-suraj.kandpal@intel.com> <Zxs40xP4Bo33fqe8@intel.com>
In-Reply-To: <Zxs40xP4Bo33fqe8@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|IA1PR11MB8832:EE_
x-ms-office365-filtering-correlation-id: 9e58676a-4e9e-41c4-06f4-08dcf4bdeadd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?oLkC8R4kf5OA4jFf50TceYsXP6+zGKWPh70O+3kpdv1I3NXYWizjFMVjRX?=
 =?iso-8859-1?Q?3+1kKRxYpd8PmPIbM6nySv9a4QRCRUHuz3Kwq9vjpPFV/A4OM4C+Ua7EXn?=
 =?iso-8859-1?Q?cO37ndvyBM/IpSRkE9W8eqpexvfXjuy0dy1LWf6sHXyx3/vn1DfXarGgUB?=
 =?iso-8859-1?Q?+F+mLe0CCiEqI0wYlfyQYHfM1Ib0otBosg2hufJ1AOrGUQqFnH6drs1Nyw?=
 =?iso-8859-1?Q?n8DbKxKyhXkr5XTkgYUJtizDDsrWd9jV6PAi4DFqnK/q9Q4cbHOcauhJd3?=
 =?iso-8859-1?Q?4tlNxdpDeJKwP+eVNFsUuC+vUAihSJoFpNFaDCe8QR3TAAa5r91niVwFUa?=
 =?iso-8859-1?Q?XUWiek+6g7UKcLfxnX/0mC1AtHFOgHPL/6ZIfqDIGyiCD2mSUn2XTgAjTt?=
 =?iso-8859-1?Q?gwKHcHjs1lcoGwGwwwHiGmBsugQDvLvZjQj2BtsFkhI05UfLqEbHfjOGu/?=
 =?iso-8859-1?Q?or+4cRLacvGxuNYVhYSFX0NNiDEJ9DIiDQte2VtflTsbMzQABk0C67enjI?=
 =?iso-8859-1?Q?gS37t2SeDcey48hkz+K/RCoPTbJkMLRcsvn1jQouLalSqswCv5eE+N60D1?=
 =?iso-8859-1?Q?LHFmIrUGBIQ+N9O1gkje3L8RtpGXmwJwEShlawQt4ZC/fkixvu3i51v8V3?=
 =?iso-8859-1?Q?M8Sj837hKAx8lpNgd23DkxYvyRqMROf2qxwZMd8XRx9ftMeulrOzayLk0X?=
 =?iso-8859-1?Q?75pMj9JMs0PdD5cRdWrJvJpVKbgEThrQT9sCJG4p9Anir6ORRJ4/EEDxyU?=
 =?iso-8859-1?Q?fCktOkDoHYNsyHLuQrp3+2kjsECLU9z37HFYZzxWCosB5aX8HElV5OeiPP?=
 =?iso-8859-1?Q?dAaT46ppW3STrW0DB4OT5DpP50q+ZDwYq+nOKNhxHTAfh1ugmdyCHNP121?=
 =?iso-8859-1?Q?Ve9Au2hKCKby60qA8Irehi9AbFjqt2a69zgbeJX1PMqbFb57usrEKg8S94?=
 =?iso-8859-1?Q?EmV1y3XQQCimIrQ7BxFLUNwK8IrOWkSTtcX0+ve+2gLxe3lDbbmVT0lvWz?=
 =?iso-8859-1?Q?R8oxynVLnF6IG6cLDbVdZn4VeOe/nAa2naEj3RWtUM4i5FWWEkKC8MWG6E?=
 =?iso-8859-1?Q?IS/tQSxjoVlfCH8/8EjAivsT+ZplvMrrk1Wz/hWOTWHotXz0tmEMZJeFbb?=
 =?iso-8859-1?Q?KFkntj9QvHiOFdny8Ojg7HVX2xR1lNrxtSwByujMKg+p4lcO7ApptwOz6A?=
 =?iso-8859-1?Q?fhwwM3Xvd3mTGClJy5/exUl4GtiedOTfE3HS79odvuE1689ufjH4Q+P225?=
 =?iso-8859-1?Q?fp/czskVSdtKYbPqYqkdP3e2xAqid7hRSpJUoCBxd1eVG5ApLvBG5QcfGN?=
 =?iso-8859-1?Q?T3CmPB/y0S/tOSi40sW/PQnJu+cCMOyo1oBkLYUrOtdxHDU3oZplVmByIk?=
 =?iso-8859-1?Q?JiJiVmREyK9NVDjlb65WJxGj2JJQgvZZforkyIJNbN03UjK7YnvXA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?4WStJ7BRbRDidihGPgM0wGsV61zLoyO8Z+juqs7CVjxe6Fmk0t+CPmVFb7?=
 =?iso-8859-1?Q?DmpbeKdWxWFmq1DQcpHVKEGFD+Zy0GicISGYfOZt9MMtAiOA31kOMtIxID?=
 =?iso-8859-1?Q?G0cy29KSKMDyX1E/5qtx7T5arEJhFDZhfYLXVtQ53/3mLE8hklhiOu3bJH?=
 =?iso-8859-1?Q?0PQvMaEs6y2UE8ldmPf9vKiQVztM3oV05Nyn51GAHpyuZYeYHF0IC6fdwp?=
 =?iso-8859-1?Q?GbcgpsxMJo3H5gNyC/WPDJ35x/EKDuAta1xGX2Qh//bYAPiUWcbIKD+yBx?=
 =?iso-8859-1?Q?XcGfe58G2T43Eraj12I47gZiwe/fGjCoAW94Vsrqp65fJJQMypfqvNxcej?=
 =?iso-8859-1?Q?cX5ouc0cCeBxhICXQ9B1SBsEAByBPmjCWuXsz2C90RmuHyK9t9U+Ab3QxS?=
 =?iso-8859-1?Q?hn2OJYUhC4Lb3mdg1VKcRC0Tmt3lt7+3tHjvbi3M4pWw911vTHu05PjYj6?=
 =?iso-8859-1?Q?zBcvBW/MhHD3Z8hXNG4+HYa4RaZlSEVckO0f7MJggkuruGBo5UD1v1chrY?=
 =?iso-8859-1?Q?PDH1BND3d3Jn2dMiYxaThp6eGkVLzdE+SBCNcVOJsclzcXE5rTQcWMTum1?=
 =?iso-8859-1?Q?YJ+M4RpAxQIzOp2DxkGk1LKetVSZVFIUDxv3BoIZQuZCKGdNPSevw27Sa6?=
 =?iso-8859-1?Q?wC2EA3P9LryGIoQ68eySiA2ybyo0bNCtHXGkfizaiPe8AqhOqlNxJvazWa?=
 =?iso-8859-1?Q?ZiVRKewUROPHMucPnlizns+4GPOzgWQtXMAGwzyhjXRFXW3S4nymrqqIJA?=
 =?iso-8859-1?Q?6pxWMGttb7VM5wJdnyqzf2zYeQLXqUUG8hGkJXJQ2NvJpA4AedyL5lTp4a?=
 =?iso-8859-1?Q?6j0JPrsMbvZ1eQ7hGvxBobnkw/CxkTitU/7/k+0e81vzUrybX7L4tWD1oZ?=
 =?iso-8859-1?Q?T2C2MoGUqVb6cw/f0u1L2BNeV5SBF2DBEBJBMU3VRmMRkb2lmilhKHaKzp?=
 =?iso-8859-1?Q?PlIHOkgFVE31N+//DIvUPXSj7Fju/bBWbAPdTAiAdjtEal1I7ekcSXK4nP?=
 =?iso-8859-1?Q?5gPUpUAa6JkoQM0M/G4ba0PuAJDz1eblwAoAnZNPJVX6V3kunv5JwKBWsh?=
 =?iso-8859-1?Q?/pHxyWrh2WVckXo2B+dFNGxdlNpU+ZfL042CnV3HsAVqVrowPqSJPDU9Gf?=
 =?iso-8859-1?Q?awQOzH3tmvdKBvg82C+5FQmcLGuPFP20EmM1NXEu4vVDMXdvq+ZJs/jJos?=
 =?iso-8859-1?Q?AT7UJEm+xCS86eA7xTYrXkFGaYLvTTKHCpZ3Uohl9zIURScIO3lAoWOjhA?=
 =?iso-8859-1?Q?qBOkazjPXcXeKBpNx6XF9HHdEVQ6TE9AFUdwwJhhmt/RRaeCKqtq5APZqr?=
 =?iso-8859-1?Q?MfaKVWKlEFJa0FlE9m9xjk2nsCIuOPDLp3Cx84V1hvddxBXixjzumlUT1A?=
 =?iso-8859-1?Q?wFxB3DHM47U0z5ZRJT1Ejv966QiWIOdgskpKmZq95abjGfU01W1P3LjnZ9?=
 =?iso-8859-1?Q?4g3zEzlEPMY0jPyPxXnBC/zNpU8SzvNyq4aXwVjXoxkxQtEzRUpkpFP6rY?=
 =?iso-8859-1?Q?NE4/ly0w9Ylz+mTFaDQk5dzwnFIh8KInzzQHChG4Gn8nAAc5mh0MYDrCFa?=
 =?iso-8859-1?Q?Gn2jelLVZMburxWS8tobBDwgbNeDvw/yrCMFVq1ZfG14au3jNy4c66X7rl?=
 =?iso-8859-1?Q?0Xa/aPowf/U5y63ydnNzvafamzvyCZAk4d?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e58676a-4e9e-41c4-06f4-08dcf4bdeadd
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Oct 2024 06:26:10.5774 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hKA441yFtEU1rfMIpHkeyf5R7TwH6A+JuRHkgW7iOv3ZG728sEqgowHn3S+zCwDgpRzzFMZW8NIBrlJRJzW9AQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8832
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
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Friday, October 25, 2024 11:51 AM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>
> Cc: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org; Naut=
iyal,
> Ankit K <ankit.k.nautiyal@intel.com>; Roper, Matthew D
> <matthew.d.roper@intel.com>
> Subject: Re: [PATCH 1/5] drm/i915/display: Fix the plane max height and w=
idth
> limits
>=20
> On Fri, Oct 25, 2024 at 11:31:32AM +0530, Suraj Kandpal wrote:
> > Fix the plane max height and width limits taking into account the
> > joined pipe limits too.
> >
> > Bspec: 28692, 49199, 68858
> > Fixes: 63dc014e37b9 ("drm/i915/dp: Allow big joiner modes in
> > intel_dp_mode_valid(), v3.")
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 19 ++++++++++++++++---
> >  1 file changed, 16 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index ef1436146325..fc578af4f394 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -8450,9 +8450,22 @@ intel_mode_valid_max_plane_size(struct
> drm_i915_private *dev_priv,
> >  	 * plane so let's not advertize modes that are
> >  	 * too big for that.
> >  	 */
> > -	if (DISPLAY_VER(dev_priv) >=3D 11) {
> > -		plane_width_max =3D 5120 * num_joined_pipes;
> > -		plane_height_max =3D 4320;
> > +	if (DISPLAY_VER(dev_priv) >=3D 20) {
> > +		if (num_joined_pipes > 1) {
> > +			plane_width_max =3D 8192;
> > +			plane_height_max =3D 4800;
> > +		} else {
> > +			plane_width_max =3D 5120;
> > +			plane_height_max =3D 4096;
>=20
> The joiner operates on horizontal lines. Why would the vertical resolutio=
n
> change here?
>=20

This is what I got from the bspec when pipe are joined the vertical resolut=
ion ends up
Changing=20

Regards,
Suraj Kandpal

> And this is breaking ultrajoiner now.
>=20
> Frankly I have a hard time believing that there are any extra limits on p=
lane
> size imposed by the hardware for joined pipes.
> If there is some kind of maximum width limit then it must be coming from =
the
> joiner itself (eg. max line buffer width) and not from the planes. So I t=
hink this
> is the wrong place to handle that.
>=20
> > +		}
> > +	} else if (DISPLAY_VER(dev_priv) >=3D 11) {
> > +		if (num_joined_pipes > 1) {
> > +			plane_width_max =3D 7680;
> > +			plane_height_max =3D 4320;
> > +		} else {
> > +			plane_width_max =3D 5120;
> > +			plane_height_max =3D 4096;
> > +		}
> >  	} else {
> >  		plane_width_max =3D 5120;
> >  		plane_height_max =3D 4096;
> > --
> > 2.34.1
>=20
> --
> Ville Syrj=E4l=E4
> Intel
