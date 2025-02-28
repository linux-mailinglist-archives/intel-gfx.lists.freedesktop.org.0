Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9CC4A48DF8
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2025 02:29:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CEC210E047;
	Fri, 28 Feb 2025 01:29:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H/iHoOI8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5419310E047;
 Fri, 28 Feb 2025 01:29:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740706180; x=1772242180;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=We6s3q6hNK3iPhf07bcSDg8k9sBGgjpKWl5LoF6d9kU=;
 b=H/iHoOI8Cx+gQkaBKLHU9zKfKGWnnQ/J3Io0GG6fy/XuS8/8GAbeRfXZ
 YpFaO9kXTwo01f/ijDcqylPeIL3td6thn98O9G+5GUTfJM1QO1ZrfaH9U
 j6mMhzJkaNHweW5ben7RJdpTOUxtEubBOlHCKJ+AFcASCFihcEygfn5DS
 CgiX04UJfps42EzEf1hCFUPLoVIg7GLyVLeAAO7M0aIhYLUMyLhHLzSys
 gzfzAEX6hVeNpJ3/T9ZX8Gdfrn1m8YlgedYY/8x/nfx5e3hf7VIl8GwQP
 dDLz7GpGJXQEUCKgl/IM2ju3VfEScHJZpFlyQ6q8nQ8d+GYdfGwBn2Or9 w==;
X-CSE-ConnectionGUID: 6TqMM7ZATOKWq4QjOCUPuw==
X-CSE-MsgGUID: p9d4/jo6QlCRrggwzs9SmQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11358"; a="40869410"
X-IronPort-AV: E=Sophos;i="6.13,320,1732608000"; d="scan'208";a="40869410"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 17:29:39 -0800
X-CSE-ConnectionGUID: riXgGMF1SM+XXUODeKHD0g==
X-CSE-MsgGUID: XWs5WksgSPqpeyIECFfnXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,320,1732608000"; d="scan'208";a="116992957"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 17:29:38 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 27 Feb 2025 17:29:37 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 27 Feb 2025 17:29:37 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.44) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 27 Feb 2025 17:29:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J0XAPuJadFXIA64tfIkYmGk/wXkoTy3T7SHkVp4QPI2P0NPtZoAqhxtbvTAl7yTsT6WgFkHxj7mV7Eq0Ae8a03Eb1ZMVTcQIofTKLJqWBGadpjHzlkMR7iZxLJnpv7AUWn/L5qeglvFn4OlasHfWcsru7i+0Ue+BD0RDrAUphUWWfQDWYmTE6YzQXv2rHb9DYImicEfzMc3sTpcHisDNYW/Vyi/ypsmddx4a84pOKY+VkFaClNNleQbPHc3lxrSaJ5ZbhvisdAcSUJ9qdh6x5ak8fvuPFMQ7EH7vReS/umPDELx2niNsBVRwUhBSr8ZLJ23gp3MMQVClStCaWOSDGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u/rHednhMbZuJCxXCrpskkSMcTZYOIw3FBUfcfY7HuY=;
 b=XN8r7aIPIdTuKKDGaWd7Oe5XeRUmjvCJC7CV9OIhwDu08jEyxPDXhXsPGSMloLci+Cy519GEyEvuAo9cKI4IIc1SyeRc+XR3xjN9bZZUFivzlXx9dY2T3NGi8uMCLWQfyDKr8qc1B7nk14aorI6BycWvFGa5QDm7tazpC3f1TREVCddk5fMqO47NVaZM8Vrmk2YNLp36YGKjymtF9o0x2Z19/cUwwlfF+ES99yjnjANuDPaWCQ/jiBqMwrKKpWpUj2KQf5FGHEwCQ2Frs1pTzSj0xgVq7HAYoHXGVncj9xwT+TrwufUMF+NwPTCQbccJEuRcF1S6JOymR8nAzy5Gxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6761.namprd11.prod.outlook.com (2603:10b6:303:20d::5)
 by DM4PR11MB5279.namprd11.prod.outlook.com (2603:10b6:5:38a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.23; Fri, 28 Feb
 2025 01:29:35 +0000
Received: from MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::6b8e:aea1:6960:2430]) by MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::6b8e:aea1:6960:2430%4]) with mapi id 15.20.8466.016; Fri, 28 Feb 2025
 01:29:35 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Yu, Gareth" <gareth.yu@intel.com>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Nikula,
 Jani" <jani.nikula@intel.com>, "Shankar, Uma" <uma.shankar@intel.com>,
 "Tseng, William" <william.tseng@intel.com>
Subject: RE: Re: [PATCH] drm/i915/vdsc: Use the DSC config tables for DSI
 panels
Thread-Topic: Re: [PATCH] drm/i915/vdsc: Use the DSC config tables for DSI
 panels
Thread-Index: AduJfPfJJ3vcV17vRXKXC1gCoa4bjQAAo0gQ
Date: Fri, 28 Feb 2025 01:29:35 +0000
Message-ID: <MW4PR11MB6761EF8A44F8A1F488FEF93DE3CC2@MW4PR11MB6761.namprd11.prod.outlook.com>
References: <PH0PR11MB5128D19AD9DE0515EC3C8823E0CC2@PH0PR11MB5128.namprd11.prod.outlook.com>
In-Reply-To: <PH0PR11MB5128D19AD9DE0515EC3C8823E0CC2@PH0PR11MB5128.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB6761:EE_|DM4PR11MB5279:EE_
x-ms-office365-filtering-correlation-id: fd150555-0114-44df-0bb5-08dd57975c13
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|4022899009|1800799024|376014|366016|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?1EUbyHfNRagMFjPTqh7DiFBQxGwXBglCx86RiG0bZP5rQ77puoxsRQmukY1x?=
 =?us-ascii?Q?aHwGpTJIw7ZcfnFYgz2LC/L5k6hb01JlemgYZnMwJ0K+IFvbTvwLHxhwA2PC?=
 =?us-ascii?Q?ZDbbEo3GDWB2Vn+u2QKz4vDvRdfOb3zBL2PDuaCYaxx6a4dlnl9ZxnfTub1F?=
 =?us-ascii?Q?pv+kxuY48k5d+jxNqsGJVZag0h85tsZSMI+EwBJ1Gw6PbIOFJLtXhVyenRuR?=
 =?us-ascii?Q?XbClfX354DPilmLATJMFyj3ysWnZ3nNX7NlWMoG1tECzxJDdzxYl496S4TJP?=
 =?us-ascii?Q?SJsrsC1Gspw+KTRSeY+fIyz+W/cJj7igmBftBDgY0cggOgEHaWzTkza7NREc?=
 =?us-ascii?Q?EKpTesNEvm05NEdjyhRfXnKhLo+9UAOq2KMdLOF8abSMg7EWIbUJ5qBTEnbx?=
 =?us-ascii?Q?2r9HBRCpgYn7oiRad8h+gccGXjSa7YJ4zUBgL5UBAcwY2f17LifwJlmB0mMk?=
 =?us-ascii?Q?rPZZcSj3C+TLyfqIdEHzlYu8UqjPvpNr3IcAtrOzm9rR3n5yfcfla2v+tZqi?=
 =?us-ascii?Q?KtEAh0SEXOZgXIha/3VD0z0Gq805cPObpp6QGqjgVytIeC5L7HtHooyVqY6s?=
 =?us-ascii?Q?lTOb7Ie4pkwB/5SrZ2Q7WTEP0BoG7wv61b5haBrhC51LFGZ2de+KEQeAZYrN?=
 =?us-ascii?Q?jZ9JvksdI45UMEx2xrjN9shV7bYJJA7jQTW+eIsG/SaVHdQWeqpaMeBIluG0?=
 =?us-ascii?Q?Yu0kscP7i0DmcseJEg+V8M5VON/4gW8B3fIJtHT5lU2NHOWHTTzbEQRBKdAt?=
 =?us-ascii?Q?qA8XCJyL5zo/k/VhHFxH6oAMcWoG/5H/qMOeG5pcfXiV34HM4GlMHWicb8gO?=
 =?us-ascii?Q?PRo95sTq6+DG1fDIfBSxy053ULWOGIj9DEsU72jdE20I62qRu2/gW1TJspq/?=
 =?us-ascii?Q?IIVz/onY4I6zb4R1iOf+lnhUD3JdZ8ZD6NEOIHhX8IR3lYZGsKwwny10vJbr?=
 =?us-ascii?Q?Mr99TWikxMBIjDPTx8adLfUhU+HjlgOLoBUEfOETRQI/r1/61dRLhAAgjp6M?=
 =?us-ascii?Q?4W5RsAsnxohjN8T6dSAyudUJSKhBAiIDtkYQi9rqCmcrHhgyzcazit/q5EH6?=
 =?us-ascii?Q?/gjJ2ykUZzIbGExYWxRVys2Ht5MQr9kNdOxm8wTzGxQ0OLEOmX0gV+p7JZHQ?=
 =?us-ascii?Q?1tAU5F4+EEnGyECExWcqSyan6ckHLgnd0ep1+C9+IAkR79rCD6aXtV3DeOeY?=
 =?us-ascii?Q?LllS9Q4pMrUf6Rl9hRJw2XZbcx3tkNeuIkEe9aZa8APOotZMJhpken1OPL9e?=
 =?us-ascii?Q?sOVXbVJX3X/RM+XLdkkeLMuVecuwigO/Iy80+i91iS09LLBzFMITX/cCFeGD?=
 =?us-ascii?Q?JkklfwZ5fhJfxYtdwji9ohVdSKYNNC88/E3UfdEsh3Be9NytDesy4xOf0YhH?=
 =?us-ascii?Q?fcfnRrQV4mPyNrYHvJ2WuFXOKBis?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6761.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(4022899009)(1800799024)(376014)(366016)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Ha9mqPAuKg3L9yuDhOIzHRUaH9GknUrLJzuCNJ+39T19jxZaj+elu0hE2Pyf?=
 =?us-ascii?Q?uUwh/uOLibmuS+f9QvgRDHvgt0H99miPjd9BBB7A7VEU9xdCx6r9nNBSRZ0L?=
 =?us-ascii?Q?NbO9HvM5JPbiA7c0OtVQy2oyL50wAW21NLY1ZDjWLZg+C99aKmFyFvM3ByXU?=
 =?us-ascii?Q?gIL0DItE8BVWcmEirj39AehBmIOTnz6/UgSs5mMCAOKhxQl9GsrujxsxRTsv?=
 =?us-ascii?Q?NlC/dCXiUIn+oNg/GCNjeD16MAJx01yp/nSsvQnHRV7jey71zj/bFOjFV2u3?=
 =?us-ascii?Q?HBW7pzyNTAip7cqRIqP77Zj4Ebay4TWR8qlQ/sxeez6bmqv8shxWbPokm1CD?=
 =?us-ascii?Q?0rrHK2RLfKkurr7wrdCvjANiZFCOqCevW3I/KacCKGTEvEiS0EjTRM9m4R1E?=
 =?us-ascii?Q?wUuOFTznbUnyjJwQ3++r2tePwIzlTPMX6SmaPOUzin+m7oSxgBIW4/A/LZCi?=
 =?us-ascii?Q?WIxsFAU+QNc1ph2rDC4z/w8z7WyK8C+mP0ExZMhybhT65SXLhvaOnGpy5NGL?=
 =?us-ascii?Q?n5gqQdDrGgbLmX9HJDWrVK8u+vsZMZZrkY+hLNjloaVI2jQV5nMmVNv+N7GQ?=
 =?us-ascii?Q?W94R1/hpJh+uMfkq9MculWGv8UTOKq/3dWA3rzsWc+5zdQi0n9LFnO/te9ko?=
 =?us-ascii?Q?m3r+cgKki722ckJnVRWHQNeSoT2j1b/iJW8MwoIytk3D7H8Kdnc64zNutQTK?=
 =?us-ascii?Q?l+Pzr3GRtRFg+6xrSMcE+abtToFjRccgpJe6RJKY+KZ4Sr7hU/k2kjsEv4VR?=
 =?us-ascii?Q?0e+ibu7A7ljaBNWAMKtcfXwft/KQOIyZlNmXAUFRttdP89jtqMjnJ0Xq8M8K?=
 =?us-ascii?Q?sw1Vr1TJFn4P5Z6BbfftYy9l8a7y8Bmuo52JjdDm8VhGs/j77z4FgaC8Bd7K?=
 =?us-ascii?Q?L706QWVhKT9LyuEOBpbHcFXlSGiT2Jfyd7+cur8SQCteQQnRdOuOsWb+Tqjk?=
 =?us-ascii?Q?1ouGFCCHTF/GoOS6RJGGKPW+M+XV6uIxKCIsqLnYpsZryy2azUQY4bqNzF37?=
 =?us-ascii?Q?5VNh5zJij3LRMemoLpNsFnLFohovnSgjbPkNlo8reVvqnIq8+C0SGYaiPlHX?=
 =?us-ascii?Q?p4EB7flZlmOME4Z59+Sl1WAzwjD/VEztZsPjfsplNyiw6V5jDOQRGOZhGOku?=
 =?us-ascii?Q?ST9kZ9mM/8Zd1QG+kFTvEMqBFWYiUAx3o8r6ioEODp6kYJt0D/rV4Chx82lm?=
 =?us-ascii?Q?1PpUkVvr1yx5bRd1m1FbVcSUgAxG5MJEami+Swgbv73y0OD5HPcbi2SVFHjE?=
 =?us-ascii?Q?xGZihhIrC9+zZRAgFvrCi6Poqod13Yk+HMdsSEcseOou0Ni/1BAIy+Hjmnmx?=
 =?us-ascii?Q?2MbnUwC7b9/QRC2u1unUeqEU+C/drG0hFbvWOiojGdYyDzAn2UwlgIHZD0vH?=
 =?us-ascii?Q?n9ehbUFnU7yLsSmMQRX6q3EUT7HLc5dbUtGMBjfZQcsg4B69IiAgyi7zNV3J?=
 =?us-ascii?Q?Sxanc0RhQVgbL82GTSh0v9mwOkK4ZUO7WmI+lyAM5kBJJqn3tlycKweneLU4?=
 =?us-ascii?Q?f8ysD9S1MyikycyTp5RYAqNVd2yzE28DpzorqJ+xT+ipfz73uUC8YpLJlxgW?=
 =?us-ascii?Q?TIFd93CvaEy1qrtCE4h9fK1ZQ7ML063aRaya+Bdc?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6761.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fd150555-0114-44df-0bb5-08dd57975c13
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Feb 2025 01:29:35.2692 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +T3mCHIyrPKlT3bmPDkZ+A4iRv2dKcGBQaDryXMajTGpMerva8f4fXms5k3Zdth8O+x5cXtyIZArnQzeu4zdpw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5279
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
> From: Yu, Gareth <gareth.yu@intel.com>
> Sent: Friday, February 28, 2025 6:46 AM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; intel-
> gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org; Nikula, Jani
> <jani.nikula@intel.com>; Shankar, Uma <uma.shankar@intel.com>; Tseng,
> William <william.tseng@intel.com>
> Subject: Re: [PATCH] drm/i915/vdsc: Use the DSC config tables for DSI pan=
els
>=20
> > From mboxrd@z Thu Jan  1 00:00:00 1970
> > Return-Path: mailto:intel-xe-bounces@lists.freedesktop.org
> > X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
> > 	aws-us-west-2-korg-lkml-1.web.codeaurora.org
> > Received: from gabe.freedesktop.org (gabe.freedesktop.org
> [131.252.210.177])
> > 	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
> bits))
> > 	(No client certificate requested)
> > 	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3D23C19F2E
> > 	for mailto:intel-xe@archiver.kernel.org; Thu, 27 Feb 2025 11:26:56
> > +0000 (UTC)
> > Received: from gabe.freedesktop.org (localhost [127.0.0.1])
> > 	by gabe.freedesktop.org (Postfix) with ESMTP id A7C1C10EAB7;
> > 	Thu, 27 Feb 2025 11:26:56 +0000 (UTC)
> > Authentication-Results: gabe.freedesktop.org;
> > 	dkim=3Dpass (2048-bit key; unprotected) header.d=3Dintel.com
> mailto:header.i=3D@intel.com header.b=3D"MY6Bt0hC";
> > 	dkim-atps=3Dneutral
> > Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
> > by gabe.freedesktop.org (Postfix) with ESMTPS id A87DB10EA9E;  Thu, 27
> > Feb 2025 11:26:55 +0000 (UTC)
> > DKIM-Signature: v=3D1; a=3Drsa-sha256; c=3Drelaxed/simple;  d=3Dintel.c=
om;
> > mailto:i=3D@intel.com; q=3Ddns/txt; s=3DIntel;  t=3D1740655616; x=3D177=
2191616;
> >  h=3Dfrom:to:cc:subject:date:message-id:mime-version:
> >  content-transfer-encoding;
> >  bh=3D8+o+KH5SGXJL9pbefqym6H7zNpSc5021IPN/PdKwNsU=3D;
> >  b=3DMY6Bt0hCjt+GFDT82nKYuYZ8t3ShCcp4URQO/YXiWFVIhZbAZpbiMYzZ
> >  dpzC9aG2zCv1V3KglhDw6BgmJjGcnY/GDf0KD0me4MN1098RLXCbY3Zlo
> >  g68++M+uiF699gmgAasdx1BWFkcYysaszs8DBcyyFE7zNw7OM9f6Q5dzD
> >  VPmG6XxflXUYU7Mpij3Wn8vBQ9DPqwXzbPy1Iv5Ojis2Rb5CmpnP82HWK
> >  SJU6CUlgcuF1b7d0XTyBkYaQ/KjmdRVNsHW8cSMLvpzum54UtY2cmsrM3
> >  dCeE+isV4RtwPDaWmX1SeEF9F7Y4cL+9vDj4NTM2INZqCfAY+UCM4aKiZ Q=3D=3D;
> > X-CSE-ConnectionGUID: gR/d5ikPS82kkQ2JSyF2KA=3D=3D
> > X-CSE-MsgGUID: GUC8x5VDRo+UNdtKbxA6/Q=3D=3D
> > X-IronPort-AV: E=3DMcAfee;i=3D"6700,10204,11357"; a=3D"52527215"
> > X-IronPort-AV: E=3DSophos;i=3D"6.13,319,1732608000";
> d=3D"scan'208";a=3D"52527215"
> > Received: from orviesa001.jf.intel.com ([10.64.159.141])  by
> > orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
> >  27 Feb 2025 03:26:56 -0800
> > X-CSE-ConnectionGUID: mUJY05jTSP2Aj3LHisZ5pw=3D=3D
> > X-CSE-MsgGUID: TtB54KpmQjOcHenFYonybQ=3D=3D
> > X-ExtLoop1: 1
> > X-IronPort-AV: E=3DSophos;i=3D"6.12,224,1728975600";
> d=3D"scan'208";a=3D"154180517"
> > Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
> > by orviesa001.jf.intel.com with ESMTP; 27 Feb 2025 03:26:53 -0800
> > From: Suraj Kandpal mailto:suraj.kandpal@intel.com
> > To: mailto:intel-xe@lists.freedesktop.org,
> > 	mailto:intel-gfx@lists.freedesktop.org
> > Cc: mailto:ankit.k.nautiyal@intel.com, mailto:uma.shankar@intel.com,
> > mailto:william.tseng@intel.com,  mailto:jani.nikula@intel.com, Suraj
> > Kandpal mailto:suraj.kandpal@intel.com
> > Subject: [PATCH] drm/i915/vdsc: Use the DSC config tables for DSI
> > panels
> > Date: Thu, 27 Feb 2025 16:56:54 +0530
> > Message-Id: mailto:20250227112654.279160-1-suraj.kandpal@intel.com
> > X-Mailer: git-send-email 2.34.1
> > MIME-Version: 1.0
> > Content-Transfer-Encoding: 8bit
> > X-BeenThere: mailto:intel-xe@lists.freedesktop.org
> > X-Mailman-Version: 2.1.29
> > Precedence: list
> > List-Id: Intel Xe graphics driver <intel-xe.lists.freedesktop.org>
> > List-Unsubscribe:
> > https://lists.freedesktop.org/mailman/options/intel-xe,
> >  mailto:intel-xe-request@lists.freedesktop.org?subject=3Dunsubscribe
> > List-Archive: https://lists.freedesktop.org/archives/intel-xe
> > List-Post: mailto:intel-xe@lists.freedesktop.org
> > List-Help: mailto:intel-xe-request@lists.freedesktop.org?subject=3Dhelp
> > List-Subscribe:
> > https://lists.freedesktop.org/mailman/listinfo/intel-xe,
> >  mailto:intel-xe-request@lists.freedesktop.org?subject=3Dsubscribe
> > Errors-To: mailto:intel-xe-bounces@lists.freedesktop.org
> > Sender: "Intel-xe" mailto:intel-xe-bounces@lists.freedesktop.org
> >
> > Some DSI panel vendors end up hardcoding PPS params because of which
> > it does not listen to the params sent from the source. We use the
> > default config tables for DSI panels when using DSC 1.1 rather than
> > calculate our own rc parameters.
> >
> > --v2
> > -Use intel_crtc_has_type [Jani]
> >
> > --v3
> > -Add Signed-off-by from William too [Ankit]
> >
> > Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13719
> > Signed-off-by: Suraj Kandpal mailto:suraj.kandpal@intel.com
> > Signed-off-by: William Tseng mailto:william.tseng@intel.com
> > ---
> >  drivers/gpu/drm/i915/display/intel_vdsc.c | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > index 6e7151346382..affe9913f1ee 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > @@ -320,7 +320,9 @@ int intel_dsc_compute_params(struct intel_crtc_stat=
e
> *pipe_config)
> >  	 * upto uncompressed bpp-1, hence add calculations for all the rc
> >  	 * parameters
> >  	 */
> > -	if (DISPLAY_VER(dev_priv) >=3D 13) {
> > +	if (DISPLAY_VER(dev_priv) >=3D 13 &&
>=20
> Please change to "if (DISPLAY_VER(dev_priv) >=3D 14 &&" because MTL begin=
s to
> support DSC 1.2a according bspec 49259.

As mentioned in the gitlab issue calculate_rc_params works for both DSC 1.1=
 and 1.2a because of which
DISPLAY_VER>=3D13 works check commit message db514cac.
The reason we saw the issue in DSI panels was individual DSI panel vendors =
hardcoding DSC params and not the driver
Miscalculating them which would also explain why it worked for all other pa=
nels in platforms >=3D13.
So won't be changing the display_ver() check.

Regards,
Suraj Kandpal

>=20
> > +	    (vdsc_cfg->dsc_version_minor !=3D 1 ||
> > +	     intel_crtc_has_type(pipe_config, INTEL_OUTPUT_DSI))) {
> >  		calculate_rc_params(vdsc_cfg);
> >  	} else {
> >  		if ((compressed_bpp =3D=3D 8 ||
> > --
> > 2.34.1
>=20

