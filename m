Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C7999BAB8B
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2024 04:45:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52C0D10E198;
	Mon,  4 Nov 2024 03:45:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K4ue0JHe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D770E10E198;
 Mon,  4 Nov 2024 03:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730691906; x=1762227906;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2PHP/fC+Xw63712zi0A4qpw8XXnH12aOQ5fhcwYC5Jw=;
 b=K4ue0JHeIwqVdeGSnsRHdKMPrVvI5/gYIQeK+ZsN41TeM/fJZVh1FIpe
 RKTkAUVVvlT8Va6Bjaww6DVC/ePkozCZT0IF0/07YNLk0ihzF8omTCwWV
 HQ8HaC9TvqvbPpOuI8zAfQnITksO6wGMC9jug70bjyd0K/iGpgHDq+X9U
 yEKxoeA5UK43zPENFr3ZuciCqe/CO5v+BqDZjr3ELeEY0kAIq7THK/2AZ
 Y0vgIeUClfU8gNwmPfKE6WGCse8ExMDSqwaBTX/PjdX1n5fXLSgPThXCc
 iocnakmqYIKa/vLXlVZ5TU0RjqfZXnFnjWtEfcPAc7Hd2b+V+yh/4iHWk w==;
X-CSE-ConnectionGUID: MrnoqYY9Q9KF3q6Zwr4epw==
X-CSE-MsgGUID: 874L/qssQEWJlCWzZBGPCw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="52934697"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="52934697"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2024 19:45:05 -0800
X-CSE-ConnectionGUID: u0qrSmYMSIKdc9Q5axhaNA==
X-CSE-MsgGUID: ZSuCrxi2Ri6rwsB73bv7Xg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,256,1725346800"; d="scan'208";a="88115952"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Nov 2024 19:45:05 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 3 Nov 2024 19:45:04 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 3 Nov 2024 19:45:04 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 3 Nov 2024 19:45:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aOV8Usa5ak8z+aq0pbAJ1sYicRfAEvVrAHat+DQgLNmgn8jq8jbHttNjatu8zYnZUsNTbtEYU6CRuw89NG+cnwPRpbcus8ArN/v8JZAAI8DKyUR+fABwf684SZmi/LFdmRg+6ebNRwlasYwoK+Qst2YhntLRbyYVAnFJzhEzMThAwEUcnyOya7XOU+myYRUj0h618NmnY0HSAbWPFkPZb84C0BCSI0scFLECfKh2YUgBqeNaGxd5SgkkxSDQZhmXbA1yEvldGzT5MsmY4xAG2g8ch1K0Bl2jSmhZzINVbGqdfaeEMyZ7PglugUrUpO8L6bgwe3Dx8X5XooFQU/S7NQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hhZJaTj3kNPsJUI/GfZEwd8tMdMUz05Vr7J2UjIENio=;
 b=w7pz6g0GzrFrmNyqE87bx5nvpPnrRtRmoUTTPbFMctYaezD9iPBmdRma5ldrDHWw63Q9OOW81IYhpCWw2oiZBy9XGPb3MsNfxOBdT1mSLDmfOYEgDfoM94tsGnO4UL+CXal/VRs3IxMbN16bIGBtEIB+cDvX/0MAp3b9Zeo55WYXkPJzc1EIOpXnPaIo1RoVTyeMb4swxKTvW3IOC+hIqWSIBk6pYg5t24kbaPd9pzdz/uCoX1+cWyPM1HjHPub/73cgM5CTqs6hQM9+w8P7s5uGNvWIPpqzpEEWZNl+ETvOABOdvD/c0pMkYUXOmoXt7keWzyvFcg9ji9JLHa/xtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SA0PR11MB4575.namprd11.prod.outlook.com (2603:10b6:806:9b::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.30; Mon, 4 Nov
 2024 03:45:00 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8114.028; Mon, 4 Nov 2024
 03:44:59 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Atwood, Matthew S"
 <matthew.s.atwood@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v4 3/7] drm/i915/xe3lpd: Disable HDCP Line Rekeying for Xe3
Thread-Topic: [PATCH v4 3/7] drm/i915/xe3lpd: Disable HDCP Line Rekeying for
 Xe3
Thread-Index: AQHbIZjVdt/ziriyKU6C6TcoqApVybKUpVSAgACV6ACAAqE7AIADuzjQgALjLwCACBj2sA==
Date: Mon, 4 Nov 2024 03:44:59 +0000
Message-ID: <SN7PR11MB6750A63C9D98B93FABBA524EE3512@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241018200311.67324-1-matthew.s.atwood@intel.com>
 <20241018200311.67324-4-matthew.s.atwood@intel.com>
 <20241023175201.GO4891@mdroper-desk1.amr.corp.intel.com>
 <SN7PR11MB67501BE6E81E6C9F14CD4C05E34E2@SN7PR11MB6750.namprd11.prod.outlook.com>
 <20241025185808.GR5725@mdroper-desk1.amr.corp.intel.com>
 <SN7PR11MB67502B95C2D42E5C43B74B6EE34A2@SN7PR11MB6750.namprd11.prod.outlook.com>
 <20241030000238.GB4891@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20241030000238.GB4891@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SA0PR11MB4575:EE_
x-ms-office365-filtering-correlation-id: e1a6fee2-f594-4aeb-0413-08dcfc830ecc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?MlQ9ryjatpSv5l2hsAr2dbycD6CWhhtJ2F0/tlauAru0nDm3pmKbhfpnfEJj?=
 =?us-ascii?Q?pBHP/Qx8yUzR+fHI2ii7vnriCvsMUhzOZ3/dM7MnFxz6M/QQAk88E6jdMgcN?=
 =?us-ascii?Q?5KfgGTiJEQIgOmXqd5yyMK6g969/G70/p8FSWbr8B0mBZh7n6rpdHnxczVXJ?=
 =?us-ascii?Q?EOfvbufDTdv6F72VYv/OBDqFj1ri9+mOiomq9UaCcsbRGyntj17uPVvYicgW?=
 =?us-ascii?Q?Pv4Gsu8S1tjJGh+7smcOzS6CtSecSSCJbhjijrAojfr2ATBQ5kZ+SlagLuHJ?=
 =?us-ascii?Q?qTc0dhxzmcpEz9d3fqyzK9PMM5V/zPaNzzUtIyxo20Dotwex2lXheHVpZSwl?=
 =?us-ascii?Q?7ewtsSfvbihyRxKdhd3XuX/osCxPcYOrEZ2P2SlWMBorELOTiDa5W1tk9YWr?=
 =?us-ascii?Q?1VspQOkMKk9hbwVkUQ+O8dTygiEs11PryvB9+89RYd6GPLhwN0NOtwu1S4Yc?=
 =?us-ascii?Q?DCDfYwHFGg3yeOEj/eUQXUxFDeEdYGi78h86KjU1WVmvCVLH2pB6/DqKUpKh?=
 =?us-ascii?Q?G0oqZUeqoAp1mfmyvnkywTNFGLI0gdxZxwg4FS+Lml/vGeEvtpf1GF3KG+h1?=
 =?us-ascii?Q?fG42rGcqYvyKxGGDLHN00paIPZ5iYYpmQ3cxHTo9zmmw/Rgotg/JmCi1Kkch?=
 =?us-ascii?Q?BjqmRU/MjHh+zLQ9xuKQnHpQcQ58y/gUYk3TPjwoVYxM+89thRbgzgmT1lLd?=
 =?us-ascii?Q?ANME448baF6R7et/cz7BLxQeWiV0jEamNnUQcsYnUH/Ldx7+InrIFFVrF+ep?=
 =?us-ascii?Q?GvxeqH6xzFG/5gBNhrAzqkp1lzhC/yRvaWhoLT8283fbRulIDx169Ejjlshh?=
 =?us-ascii?Q?q1+FZV08g039zGa27LiT7LrHEhLLxhgx58sLTMbDJaGZ3JItDpTSR0TgKxgj?=
 =?us-ascii?Q?+w7pKhwccMsrEGOxscnXLQY3bEV/aAmEx4WwcnukbHNT9dz+JlfwoQTf7kl8?=
 =?us-ascii?Q?ru+UU1ia75M8I6tFgSra/hnAxg5mWxIImLRP73sLbmOxljLOrLGTo/Efi7DN?=
 =?us-ascii?Q?bL0v7yKsArdEG/EZFjwkK9BOLmM/SxhiANJqL9oZd7ijkQRsi4CmkwEpE/WO?=
 =?us-ascii?Q?Kmrcx477iGJczFhn0A03Ik9w5vpqX0EEwQnEqPs3Nl0PwSqWSrFfdEynacrr?=
 =?us-ascii?Q?znxH0YT3bLpZTGpXAnWib0fpgCrGDxS1Pm/7SXekEvifwbDMzAuEP13dZ2jF?=
 =?us-ascii?Q?lF3bQW0LWsontrEXygucNYGdh6Pc+qxc3Erb/+/nvufX21yBsM6xrPCV3a1d?=
 =?us-ascii?Q?6dIgEPyEb/7sVvn01f60S5UCJv47C6o9pDwO9qfycpI9lzjwZH9f/6FkhfRb?=
 =?us-ascii?Q?aXpfwGaC/qqDl0JZB334I7JD?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?nVlNO1b8MIGDhtNHcFYOVmfPifJmIpO91LmsYIj7Ep620+V5yk1sZYbU4yO0?=
 =?us-ascii?Q?9zhr1VZg204tBf6d9KI9dQUnjT04DajBw4og5gKFDZvhsPUpnqdyUKJtp6E2?=
 =?us-ascii?Q?BHJYQWO4arCGD9FGM4sSNMogdrn7qinqf+nk722/YPHTyQpSv7yB3Ck3/RqV?=
 =?us-ascii?Q?gIJkCQCIGF3FdZJJ0POj2B54a2SvLro63nzsa9MeWxAyJNYvLRbsTQGqmH4L?=
 =?us-ascii?Q?BxkXZFrNaUupC8vXYQaz2X5aAVWXysIMLtm6BgrjnsZoAxCdCGTu9YI7uWJZ?=
 =?us-ascii?Q?lzWElb1nkbriySAM2qgwiW+LGcTPxmP13099XxNhhg8szjX3tWYJa8ZZGYg/?=
 =?us-ascii?Q?1hQUaXTGn0Lz1vjb1oC8XCYXXDNXCu8zbtf8Ej/v6o609Fs2M07Qbo8HSjzJ?=
 =?us-ascii?Q?K/4XJBKOp2Md7J3p9qYds7HLASj9VLsOK3j+dk7Uww3WCjkyh4xOppqzL1ku?=
 =?us-ascii?Q?IK63LoWFi3bGZ3gmyehhw5wz4APlPR3XklP3JFXUNNzaE0ui/doNVwt0q6v8?=
 =?us-ascii?Q?yQ2tLnriHssciWQaoU+bW8S55o8TVQwUdjMfZQpBPksPDhxx2w8FX9wCpjB+?=
 =?us-ascii?Q?vp2F9hyIfPzUFFw/EFV4CE5xfzoPTzPZ/J/pH+K4J+yUh3NNHSCHW/sXSRBw?=
 =?us-ascii?Q?gXK4TRrLs33bEKgbaRTeNC8gAfk0qn16rV7rE2fbAqpwYeTJPIQ2Yl5+Jypw?=
 =?us-ascii?Q?XEH6Wml6ehZ4l8Gjk0BBlzvcKw5UO8W9B1/JFqNZe4rxtHQc9DCYMniHpizX?=
 =?us-ascii?Q?tHvX2mHPt9Hr1lxVkxFEaBLdU3u06s6A+MMDTDCX1sK40E0PnpEbc0ZJfOCa?=
 =?us-ascii?Q?38EoktipsCHfI/BtrFDUye9jYR498YtJNWx0wxpmwH8WG87zhehN6Cu4VRWE?=
 =?us-ascii?Q?t9Nv/6jppOwQtcQvBwifaC+0wtGa34cycejtkRNu5Qjz61Ua6oPJl3n1f1ea?=
 =?us-ascii?Q?ld4wBVAO8+rjvC3kVhHEQ3FmWSBUlowjnXIfF78VVRj3ba723/gVAiObD5nh?=
 =?us-ascii?Q?AGmomGRYQ03eXU72a/KziiLuiPiUSbtzxxDHRleDnljznFIsF3tTIc0Q4nya?=
 =?us-ascii?Q?qCq6gbDOBT2I+PlTHcNLWD47OpvjHts5U/VVssdT3cBG5FUu7xsTFx4quhFq?=
 =?us-ascii?Q?kFB+vSNk30drVQyjMo5kSqZE386kB5hVVypH+/i9jA+zVTuhZGfb6FOY0SRU?=
 =?us-ascii?Q?5TNkNx6QAt37GSMaka8QtRRaddCE0fbaT4Tm9w2O4RZxyDsmqUl41zkqxefU?=
 =?us-ascii?Q?OR5S5EMHo0HRJEKb06+ynkkoa5GvxtCqcKVoGW89occdymKMVA1XjwoA+BGD?=
 =?us-ascii?Q?RrW9q2xV8NZwfc9zZ/NxYzVJasX+qHQBj/5u8tn/RT7c5is57F4lwEj73z16?=
 =?us-ascii?Q?c0p/fJ3bcp5II5PKAj8wgjCDTL6n/s8gvhIRdKMfKusHNJqnT4WLciNQYcB/?=
 =?us-ascii?Q?HmuQZjcMST2La9ob6ic+h6K9HMaJ3qK4kbcSXmEJASmo7BMSAhU+7MYmeZqA?=
 =?us-ascii?Q?oPU/UfeoI0WDvkFEsmUboW5TEBLopeUgFDn5QYP2GYJxzQw0OkDoOdKzG+P9?=
 =?us-ascii?Q?N8kZN2b7ZvSDumP+0rRWnSF9/iwohzWEPjWrZIze?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e1a6fee2-f594-4aeb-0413-08dcfc830ecc
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2024 03:44:59.8710 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +qNn/v9ZCJuu1O8yURYcejGA1Mv4BUNN2wdfDySzAKwS3fa7Sw93yVwWe86T773np28ZzNg4GfMh10kcOT8Z6A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4575
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
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Wednesday, October 30, 2024 5:33 AM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Atwood, Matthew S
> <matthew.s.atwood@intel.com>; intel-xe@lists.freedesktop.org; intel-
> gfx@lists.freedesktop.org
> Subject: Re: [PATCH v4 3/7] drm/i915/xe3lpd: Disable HDCP Line Rekeying f=
or
> Xe3
>=20
> On Sun, Oct 27, 2024 at 09:11:07PM -0700, Kandpal, Suraj wrote:
> >
> >
> > > -----Original Message-----
> > > From: Roper, Matthew D <matthew.d.roper@intel.com>
> > > Sent: Saturday, October 26, 2024 12:28 AM
> > > To: Kandpal, Suraj <suraj.kandpal@intel.com>
> > > Cc: Atwood, Matthew S <matthew.s.atwood@intel.com>; intel-
> > > xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> > > Subject: Re: [PATCH v4 3/7] drm/i915/xe3lpd: Disable HDCP Line
> > > Rekeying for
> > > Xe3
> > >
> > > On Thu, Oct 24, 2024 at 02:52:14AM +0000, Kandpal, Suraj wrote:
> > > >
> > > >
> > > > > -----Original Message-----
> > > > > From: Roper, Matthew D <matthew.d.roper@intel.com>
> > > > > Sent: Wednesday, October 23, 2024 11:22 PM
> > > > > To: Atwood, Matthew S <matthew.s.atwood@intel.com>
> > > > > Cc: intel-xe@lists.freedesktop.org;
> > > > > intel-gfx@lists.freedesktop.org; Kandpal, Suraj
> > > > > <suraj.kandpal@intel.com>
> > > > > Subject: Re: [PATCH v4 3/7] drm/i915/xe3lpd: Disable HDCP Line
> > > > > Rekeying for
> > > > > Xe3
> > > > >
> > > > > On Fri, Oct 18, 2024 at 01:03:07PM -0700, Matt Atwood wrote:
> > > > > > From: Suraj Kandpal <suraj.kandpal@intel.com>
> > > > > >
> > > > > > We need to disable HDCP Line Rekeying for Xe3 when we are
> > > > > > using an HDMI encoder.
> > > > >
> > > > > This is still missing the "why" for this change.  Is there a
> > > > > bspec reference that gives the details?  From the description of
> > > > > the bit itself, it sounds like the setting here (for both Xe3
> > > > > and earlier
> > > > > Xe2) should be based on the HDCP version rather than the
> > > platform/stepping.
> > > > >
> > > > > As mentioned previously, this entire function is labeled as "/* W=
A:
> > > > > 16022217614 */"  If we're now using this function for something
> > > > > other than that specific workaround, then we need to fix/move
> > > > > that
> > > comment.
> > > > >
> > > > >
> > > >
> > > > Bspec: 68933
> > >
> > > I think you pasted the wrong number here?  This is a generic page
> > > that just has links to four transcoder DDI registers and nothing
> > > else.  It doesn't have anything to do with HDCP rekeying.
> > >
> > > Maybe you meant 69964 (which is one of the four links from the page
> > > above) that gives the register definition of TRANS_DDI_FUNC_CTL?
> > > But the info there implies that we're not really handling this
> > > properly since it says that we need to enable/disable rekeying based
> > > on the HDCP version.  We're disabling for HDCP 2.0 and above here
> > > (correct), but I don't see where we're handling the enabling for HDCP=
 1.4
> and earlier?
> > > Unless I'm overlooking something, it seems like the driver always
> > > updates TRANS_DDI_FUNC_CTL with a rmw cycle rather than building a
> > > new value from scratch, so we can't really rely on the bit being 0
> > > by default for the cases where rekeying should be enabled.
> >
> > From what I can see TRANS_DDI_FUNC_CTL is written via
> > intel_ddi_enable_transcoder_func()
> > Which fills in the values to be written by
> > intel_ddi_transcoder_func_reg_val_get where the line rekey bit ends up
> being 0 by default which make me believe that separate handling for HDCP
> 1.4 case may not be required.
>=20

I think I get your point ill float a separate patch that takes care of enab=
ling HDCP line rekeying for HDCP 1.4
In the meantime can you review this patch which is just a modification due =
to the register bit change I have
Sent a new patch in this link=20
https://patchwork.freedesktop.org/series/140625/

> Can HDCP only be enabled/disabled during a full modeset or can it be
> changed on a non-modeset pipe update?  If it only changes on full modeset=
s,
> then I agree that the initialization in
> intel_ddi_enable_transcoder_func() probably covers it (although I'm not s=
ure
> why we've been using RMW cycles everywhere in that case rather than just
> setting the proper value during the initial register write).
>=20
> It sounds like nothing has truly changed logic-wise here in Xe3 compared =
to
> MTL or Xe2; the only real change is that the register bit has switched to=
 a new
> location again.

Yes that's true

Regards,
Suraj Kandpal

>=20
>=20
> Matt
>=20
> >
> > Regards,
> > Suraj Kandpal
> >
> > >
> > >
> > > Matt
> > >
> > > >
> > > >
> > > > > Matt
> > > > >
> > > > > >
> > > > > > v2: add additional definition instead of function, commit
> > > > > > message typo fix and update.
> > > > > > v3: restore lost conditional from v2.
> > > > > > v4: subject line and subject message updated, fix the if
> > > > > > ladder order, fix the bit definition order.
> > > > > >
> > > > > > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > > > > > Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> > > > > > ---
> > > > > >  drivers/gpu/drm/i915/display/intel_hdcp.c | 10 +++++++---
> > > > > >  drivers/gpu/drm/i915/i915_reg.h           |  1 +
> > > > > >  2 files changed, 8 insertions(+), 3 deletions(-)
> > > > > >
> > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > > > > > b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > > > > > index ed6aa87403e2..70dfc9d4d6ac 100644
> > > > > > --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > > > > > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > > > > > @@ -43,14 +43,18 @@
> > > > > > intel_hdcp_disable_hdcp_line_rekeying(struct
> > > > > intel_encoder *encoder,
> > > > > >  		return;
> > > > > >
> > > > > >  	if (DISPLAY_VER(display) >=3D 14) {
> > > > > > -		if (IS_DISPLAY_VER_STEP(display, IP_VER(14, 0),
> STEP_D0,
> > > > > STEP_FOREVER))
> > > > > > -			intel_de_rmw(display,
> MTL_CHICKEN_TRANS(hdcp-
> > > > > >cpu_transcoder),
> > > > > > -				     0, HDCP_LINE_REKEY_DISABLE);
> > > > > > +		if (DISPLAY_VER(display) >=3D 30)
> > > > > > +			intel_de_rmw(display,
> > > > > > +				     TRANS_DDI_FUNC_CTL(display,
> hdcp-
> > > > > >cpu_transcoder),
> > > > > > +				     0,
> > > > > XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
> > > > > >  		else if (IS_DISPLAY_VER_STEP(display, IP_VER(14, 1),
> > > > > > STEP_B0,
> > > > > STEP_FOREVER) ||
> > > > > >  			 IS_DISPLAY_VER_STEP(display, IP_VER(20, 0),
> > > > > STEP_B0, STEP_FOREVER))
> > > > > >  			intel_de_rmw(display,
> > > > > >  				     TRANS_DDI_FUNC_CTL(display,
> hdcp-
> > > cpu_transcoder),
> > > > > >  				     0,
> > > > > TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
> > > > > > +		else if (IS_DISPLAY_VER_STEP(display, IP_VER(14, 0),
> > > > > > +STEP_D0,
> > > > > STEP_FOREVER))
> > > > > > +			intel_de_rmw(display,
> MTL_CHICKEN_TRANS(hdcp-
> > > > > >cpu_transcoder),
> > > > > > +				     0, HDCP_LINE_REKEY_DISABLE);
> > > > > >  	}
> > > > > >  }
> > > > > >
> > > > > > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> > > > > > b/drivers/gpu/drm/i915/i915_reg.h index
> > > > > > 89e4381f8baa..8d758947f301
> > > > > > 100644
> > > > > > --- a/drivers/gpu/drm/i915/i915_reg.h
> > > > > > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > > > > > @@ -3817,6 +3817,7 @@ enum skl_power_gate {
> > > > > >  #define  TRANS_DDI_PVSYNC		(1 << 17)
> > > > > >  #define  TRANS_DDI_PHSYNC		(1 << 16)
> > > > > >  #define  TRANS_DDI_PORT_SYNC_ENABLE	REG_BIT(15)
> > > > > > +#define  XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE
> 	REG_BIT(15)
> > > > > >  #define  TRANS_DDI_EDP_INPUT_MASK	(7 << 12)
> > > > > >  #define  TRANS_DDI_EDP_INPUT_A_ON	(0 << 12)
> > > > > >  #define  TRANS_DDI_EDP_INPUT_A_ONOFF	(4 << 12)
> > > > > > --
> > > > > > 2.45.0
> > > > > >
> > > > >
> > > > > --
> > > > > Matt Roper
> > > > > Graphics Software Engineer
> > > > > Linux GPU Platform Enablement
> > > > > Intel Corporation
> > >
> > > --
> > > Matt Roper
> > > Graphics Software Engineer
> > > Linux GPU Platform Enablement
> > > Intel Corporation
>=20
> --
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
