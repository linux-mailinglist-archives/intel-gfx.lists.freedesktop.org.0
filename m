Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21CE0B42318
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Sep 2025 16:08:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8BAE10E8AB;
	Wed,  3 Sep 2025 14:08:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aBRYOmzq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBDCE10E0EB;
 Wed,  3 Sep 2025 14:08:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756908491; x=1788444491;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IHInxIsI+IYYUnF0AEED+SCQXKtrrZKb6CfKCdpozO0=;
 b=aBRYOmzq64TxCDyFpJ/hpBoS31E7Gw+B35+VmGkAx1of5p9jY5tuwql2
 dp1tpQbZzzSvJfr02Tu9GnM4bblHdrj1E7EKB91QzlrE58xGURXcNEQUD
 PmJBbKUahJkzSkrHQIPnfLD8bbDLyg2yezQxxFvPI85MMn604UTnMIKgk
 F0L/flu6J4TbCJiBKk49tOvyUFjY+7D167YbWefTbrc3qPlCsVLWT6Nf8
 5vgxu3JKG/HPrLfzfOf+13Mwy0pasid9f1NkjqWbgQQfdlbcDbjECg/0G
 inXQQ9EjO6ZIywTCwJf8awgaEWAZ5ibbrDFQTYGb8sdw5WYuIs3ILeNy2 g==;
X-CSE-ConnectionGUID: HhLfYfvqRvG3sSVy7sR4Zg==
X-CSE-MsgGUID: Q49MembtSBSNEkUCDY17sA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="59175773"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="59175773"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 07:08:09 -0700
X-CSE-ConnectionGUID: 3sHw0akxTbGoYZKe/GuqJA==
X-CSE-MsgGUID: nmAzlKuyScuiOIUK76LsiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,236,1751266800"; d="scan'208";a="171160329"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 07:08:01 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 07:08:01 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 3 Sep 2025 07:08:01 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (40.107.100.84)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 07:08:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Nj4QSxQwP3WD9L3CCtbMZQ42rovAMwvpRTT9lIKlOq7PX+0gjYJ3syZq/+mQgz/eGqt0iRtFk13Q2C/m3Xi9K3ptA12vvmBOntFxnrYzyCfh8P6fO4clJ/ZgUxgAmG6J2TawUaxEx25xep+dPSJ5jmcxx/t0wwt80oCEpNmkQGJFCFSmTMNKVCVW8OfNRsrogTzgTp18YE3uZFM4GkYFESU7U/EBz/hiCIzTSeFVKpvbIeQ0CgTEiHOB+pjcdzrTQeuUn5nk1FwLsMqx12JwBK5YnrjJlBCqYZ8WsMifBv9H0PRNjQXVDdASPO/RbRZTV0uFClwRqKhGsXhCvTvrnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sru8jfsTnRXtWf9tFKj5991x5HFyk4Fz/mnUYNLFVcA=;
 b=Hfzes21DVbxX8N85/FOPZSQqc4v9ynay3E96ZJk0vmmOy99IDuZ4so1mJ46JDFF/mSS/EYHIXq3CI5JhKoDyezPfDBvlr0848GRdYmJ+lA2yaQ3zKpm3CKKWqeGyNze6lMoRnqNfv5wF33h9/c2yjWjTg2XYfe/ZWtxR3CLdrsK/yw3QB21kZkCDr+rq/iH3ITgw55zlw+ys17NO+b6YM62aHACfP5+YHl5UR1WVznW2KeW7dlP81fdX09MR+T40rpaBzX3LNWk2XZDWLlctr8/jq1bZcVOesjkFXkg9eJrScrmr19t/gTjuYmMpHb4y9qlxT6k/jwKUwCa4Gxahfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by SN7PR11MB7976.namprd11.prod.outlook.com (2603:10b6:806:2ec::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.17; Wed, 3 Sep
 2025 14:07:59 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5081:cd4:1a4b:a73e]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5081:cd4:1a4b:a73e%3]) with mapi id 15.20.9094.016; Wed, 3 Sep 2025
 14:07:58 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "Govindapillai, Vinod" <vinod.govindapillai@intel.com>, "Srinivas, Vidya"
 <vidya.srinivas@intel.com>, "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [v3 1/1] drm/i915/display: Remove FBC modulo 4 restriction for
 ADL-P+
Thread-Topic: [v3 1/1] drm/i915/display: Remove FBC modulo 4 restriction for
 ADL-P+
Thread-Index: AQHcHKpcToqb83QY70CFwqYv3lZisrSBfncA
Date: Wed, 3 Sep 2025 14:07:58 +0000
Message-ID: <CH0PR11MB5444B414EEE22E02CD005BE2E501A@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20250903082323.283632-1-uma.shankar@intel.com>
 <20250903082323.283632-2-uma.shankar@intel.com>
In-Reply-To: <20250903082323.283632-2-uma.shankar@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|SN7PR11MB7976:EE_
x-ms-office365-filtering-correlation-id: b8b50a28-d7e6-4f6d-5861-08ddeaf3493d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|10070799003|376014|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?+naRHL2hvS8HW98yL3uC0vDGaAThFjHMYZQc3w4mvFelqo4KMfCR4TnEsgaD?=
 =?us-ascii?Q?HsLcWtKgq9lDFU/gdB3PRtlYZYZrDhpnmx2VjNsYcQIEGVapl3MROCyov97M?=
 =?us-ascii?Q?S8Msceu2YtYcuco04JFX2XKGv0UN2h+IN9B6Eoa/yckzBbXhJZQNV7BYVfWL?=
 =?us-ascii?Q?htngh3IGvl6+7jSgMiTLs9wd1tLDUto4hM3FDzv8FqR4yIHBKYjTUHCwjDpa?=
 =?us-ascii?Q?SGnPGDAOVq2hMQRIKJI76BL0BFJ/ZQ5+7rhHuw688UlE+Fvf9EqRvxC1nilB?=
 =?us-ascii?Q?+2jW5ZJduBE1SkZBRvMkf1jf3p7XrZ/juWPj+4+fs0t+RzW0ymQZJX+9iigy?=
 =?us-ascii?Q?eUEIdZS0e0mkBackFcLNTww97xbnHnCs+MtNiQdZJ0E4jYQfz1N3YIKw+iWi?=
 =?us-ascii?Q?BqnNUDCypD/dK0HpFkOS5Ki8xweG8EOjSHKS3CfrRxVKVnYZ+p+4WkFw1NtX?=
 =?us-ascii?Q?StyneHj1iM5e+naGo1iuJGCmzWbkIEZyfd/upTLrrHZGHemQ13LecSnQPRZJ?=
 =?us-ascii?Q?Qn89B62cqSpwE24Po3x2uX0l6p4aUfr4KtcyCDENTbOTf64lNS2S7wnsW5VG?=
 =?us-ascii?Q?dcilR1a8Q8uTfRO50kddrhhDKHNInpLZLL2bc9W9Qqdrtvi7GlnipAOswYGB?=
 =?us-ascii?Q?ByZoXiYXZuTwSlVhYjrJmGHUYnImxqGNfjrHHciJ6UQak4GHfZJrCwHD5Ek7?=
 =?us-ascii?Q?b3Ee+witKZQAuv5DhmANhtws9uxZwWRe0zIi3A1uHPn8LKJ+RJOjwdmybG39?=
 =?us-ascii?Q?sNNnq6jSJdN0kEt//fKPeYzNwwPqJj7Q1aonev0YsKknG4pnxsJrA084VMqZ?=
 =?us-ascii?Q?frJnGkg/wzvvgcUjsI8cS95e/XdTejfybu/Dy+7KmXxvYIiCMrFfmCNq1cYQ?=
 =?us-ascii?Q?1jiMoeOpu21GOtkCqBsRg+Q7BywBqlCZwevtgN8t7Mo+M/zqL10kxL0eN3RR?=
 =?us-ascii?Q?AAd/ZzLqssF8gIrj4b3UuPTfNkKqQrMBGSL9OZSjRMR0xO/3HGzdYsINtrbS?=
 =?us-ascii?Q?qTrnPw/Y8Y/j2OwMbEBIlvT56VT1RwBUHaAG9fFAmohtlYZWf7g2U0KNwf+O?=
 =?us-ascii?Q?A5AQsdZ25TSOAy0nK+FzaLeKPb8VxhBCzyrK1gCnVs0BMQ5McN5Md/wZrf8Y?=
 =?us-ascii?Q?VDKSFLmAPrmwhjQetLuz/1HEk5ZLSTgMfMT1AqfOCc2VeptI6QHCk1tFiSN2?=
 =?us-ascii?Q?U/76p5ke/zNnzR1WsRCrSFXRAJHlYq05QOsywrXN/aUF0yJ4y9JrCHU7Dslg?=
 =?us-ascii?Q?YnY0XG/gXra6IDaa0z0SbvlleMwfnvBGXWhVoKlAdaG/Y5GWu+S4Pi+PfFJf?=
 =?us-ascii?Q?Mv/14uwwUGDx8um4wZ/cS0DtHeHs2OWhNTIeBmWzq7KzWJJlzJO9wcwlTD4a?=
 =?us-ascii?Q?/TZUVm3OM5XTzcvn/EELRpuAzbcck4D4qBc7SLsVLSnIRTMtRAS07/EPCIOW?=
 =?us-ascii?Q?p7l9yKkGocENpBvRXEkvg8Ik0+iu23puPv9dG/JkagOhv08SHlItLMzrdRiv?=
 =?us-ascii?Q?pcVorS3LwWMrmbs=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(10070799003)(376014)(1800799024)(7053199007)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?wPG50f5GrWhb86RF9c5s5NrMoTT75k/2mds78H4Hmk8KTXlieghyQL5f6lMK?=
 =?us-ascii?Q?i9lzzkVBVfonqngHpNWhs9GIjHxwbPSVkgjKblS+OrVCVzVaAaI9GVzpvYdW?=
 =?us-ascii?Q?JhJllbODUg7togNPtQVwcmBsnorkAYOyEgq2qV3ZfcL74jvy0LqG/lLD6bYZ?=
 =?us-ascii?Q?nvBIdEmlvFh4DcNgWljEm4RaRdMp689nTQ4jgZjmIon+Epc6jWHgVYbDl0SL?=
 =?us-ascii?Q?MhZXDuOjDdm/Lw0ixzvkiMQXaDo1e7us/nqzp074W6ofPzhx+N8f74Ko6sWY?=
 =?us-ascii?Q?ClDCbwlc01QIHMj+tPTiZciYWxQ2LFzYpynyRMRhe9fnCuI7SATnjBeacbk4?=
 =?us-ascii?Q?dIkKBf43VA36wtFIX1vc/2mRLYQkBzIJsPHojXSFkfuBtEKOt8KC298Njuu7?=
 =?us-ascii?Q?/0DRcL8p9fp3AGngqDv66kBqLeJHhBfWa7bwYkNt34ReSbh4WxwbwZndWIVN?=
 =?us-ascii?Q?QfTmkaQ2OWVUyg9hQhgdEdR85++qHeBXm6he4m4HKn8jjQcabPRkcQCQvZbs?=
 =?us-ascii?Q?Suy/ssGZ/XQHwDR6RavXb/Gvhcg1KRyEcmEvQP1xGXs5TVLG7wX19Qxs9AN2?=
 =?us-ascii?Q?SZ0ydK1X8xizKIG9b0blrIbOpL60oKBRVVal3qwM0sU2RvpwRX6Y1AP3oA3k?=
 =?us-ascii?Q?NGUUEyjBzQCoTFEanSQWzAkotNfGB6IBxhIKL9XzTS3F1XW372vIqqNAorqI?=
 =?us-ascii?Q?6Z5Y35aiexcFcd0eS/dVZvcvXQOthdhBHrNz6GTL8ujclHnhWfHdJpkCeN8v?=
 =?us-ascii?Q?DROvLnJhcCIGEY6ENXriElNL/iYI20JVueRLLoDxjnpJUrkRQUY1z+bCYdVV?=
 =?us-ascii?Q?PHTOh1hT4+GY9QKwwFStTe73vot7mtTN7ASV8kKbQbiO0lLWf8NHvAncrXXw?=
 =?us-ascii?Q?KEdtUaERtzhE0FCYu7WoQHLKOzGezmKxaF8mAPc3W7qaFxqRssI7drJqi2rE?=
 =?us-ascii?Q?ch5hB8IOOyuxbeIF6yF0ISlESN/5y0IsrgaKC9Hi7PAYCjFVVwpWcEoGr91J?=
 =?us-ascii?Q?oN03y/GP7sXt3Ywu5zZftblQBlcYcNOAo4CVnjanv/8VwFuQChS9+M8Qk6JS?=
 =?us-ascii?Q?8zVQUhYLY2zwol1Wk45YTUTjbEMFab3eHpbT0lWOCQsbkjQrz3iC9wT7WW9G?=
 =?us-ascii?Q?bG8mUSwi37LDnjnzN5amRyEz3NMAcIHZcSslXFboak+ubA5nccDv74XhBPJY?=
 =?us-ascii?Q?TfVsNwU2UsYjih9VtSs+21whH+yowMWt3HaeVQvT7c4Xu36twlGqHhEU2gvO?=
 =?us-ascii?Q?gMcPjuqalWsVQvA4xpJBMw6sFbjPQiljwZaKR12Lku07OwTRm0TWpP06Mw2U?=
 =?us-ascii?Q?hcivtcBhK4QKFH5QcdjY0eGIFg6G6ZJIguOWI6fDyGzsmeBRfrLZx8eIrrbg?=
 =?us-ascii?Q?QCMl1wwot4VGtUQvuj2nIzFmszJlan3LuCfT0aQE3t4IObuele/VDThujPhT?=
 =?us-ascii?Q?JXFwpXmr0zhSFBNiHP+tFHovxi+mPoi/vFtosfwPcnU1ZEeAl2DSssSo7qQC?=
 =?us-ascii?Q?E0J5jKI9Mpua+/d4qjtUCkKXCy2QE4rHgqdDTwulpmVbekCW8MqGr9ctkOCV?=
 =?us-ascii?Q?+9NEtMe0lxtYaD1pl/cAGwK9AJILTd4tXX0Kk3sD9s28HwolOstJdsnciJ84?=
 =?us-ascii?Q?qpwplQRN5qduo78bv93v/QdUfHIMPfaEtUpuERW2+bw+?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b8b50a28-d7e6-4f6d-5861-08ddeaf3493d
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2025 14:07:58.2988 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pa6cv93YLyz9j6E3MP6rkZKB2yHBS6pA0LS5VmZa44un2/fiwMgLkBnBWrEpuyoUAAkCMNsWUd0zl7f4rqiBvI3+Zo0jwEoddWjWp2JJYmI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7976
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

-----Original Message-----
From: Shankar, Uma <uma.shankar@intel.com>=20
Sent: Wednesday, September 3, 2025 1:23 AM
To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com; Govindapillai, Vinod <vinod.govindapilla=
i@intel.com>; Cavitt, Jonathan <jonathan.cavitt@intel.com>; Shankar, Uma <u=
ma.shankar@intel.com>; Srinivas, Vidya <vidya.srinivas@intel.com>
Subject: [v3 1/1] drm/i915/display: Remove FBC modulo 4 restriction for ADL=
-P+
>=20
> FBC restriction where FBC is disabled for non-modulo 4 plane size
> (including plane size + yoffset) is fixed from ADL-P onwards in h/w.

NIT:
Since the above sentence is just a repeat of something said in the below
paragraph, we could debatably remove it from the commit message entirely.

It's not worth blocking over, though, so:
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt
>=20
> WA:22010751166 does not apply past display version 12.  Or, in
> other words, the FBC restriction where FBC is disabled for
> non-modulo 4 plane sizes (including plane size + yoffset) is fixed
> from display version 13 and onwards. Relax the restriction for the same.
>=20
> v3: Update comments for clarity (Jonathan Cavitt)
>=20
> v2: Update the macro for display version check (Vinod)
>=20
> Suggested-by: Vidya Srinivas <vidya.srinivas@intel.com>
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i=
915/display/intel_fbc.c
> index d4c5deff9cbe..9e097ed80bd1 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -1550,14 +1550,14 @@ static int intel_fbc_check_plane(struct intel_ato=
mic_state *state,
>  	 * having a Y offset that isn't divisible by 4 causes FIFO underrun
>  	 * and screen flicker.
>  	 */
> -	if (DISPLAY_VER(display) >=3D 9 &&
> +	if (IS_DISPLAY_VER(display, 9, 12) &&
>  	    plane_state->view.color_plane[0].y & 3) {
>  		plane_state->no_fbc_reason =3D "plane start Y offset misaligned";
>  		return 0;
>  	}
> =20
>  	/* Wa_22010751166: icl, ehl, tgl, dg1, rkl */
> -	if (DISPLAY_VER(display) >=3D 11 &&
> +	if (IS_DISPLAY_VER(display, 9, 12) &&
>  	    (plane_state->view.color_plane[0].y +
>  	     (drm_rect_height(&plane_state->uapi.src) >> 16)) & 3) {
>  		plane_state->no_fbc_reason =3D "plane end Y offset misaligned";
> --=20
> 2.42.0
>=20
>=20
