Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEF2F8B9575
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2024 09:45:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FC7F10E15C;
	Thu,  2 May 2024 07:45:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IowERGlU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1336A10EF5E
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2024 07:45:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714635932; x=1746171932;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tPtueVYnLjIMGApEQXdQgLCorj3sNNHL/n4QRNoNCxU=;
 b=IowERGlUyoHYEawhQHpG8gAJ7ureO9QTwuMBnWKnAV5yqJdvUWSvDzF2
 YtzCF8oaJJwJg9t0Pouui23k7C7n7aO/iKx+Zvedm5amaVO9KUKloIUZV
 oBt6FdbPxO20cycxZlHmnJOq5Lfn0OHASpIXwsI3yYjRV/u6iEhiwd4/b
 2hO00XQl+fa0uBCgqdUkRc/98p6GEvJTAyOT9YWQOMv/ihP+WoJCS2pzB
 X2e2VT5HMsMH1Gb3hc5SrDlapCvHPBuOwSFvRRNYWrf0F+93BrGft+cwo
 PswIpEc0HwPfcvf+meKvJXzSwTbNGTHufHW0cr9I2+nc2HW+XYPBfhP8h g==;
X-CSE-ConnectionGUID: kuc68nSLR2abipwDT5YGBQ==
X-CSE-MsgGUID: mSr3myElSMCQH3YurPl8Ig==
X-IronPort-AV: E=McAfee;i="6600,9927,11061"; a="10248753"
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="10248753"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2024 00:45:32 -0700
X-CSE-ConnectionGUID: /zheuOhzQciewQx11GqKDA==
X-CSE-MsgGUID: WcPye8w2QhaFflnRUwbO2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="31515355"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 May 2024 00:45:31 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 2 May 2024 00:45:31 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 2 May 2024 00:45:30 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 2 May 2024 00:45:30 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 2 May 2024 00:45:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=czTUrTjG9mS2DCtF/8adlLjj3gstpl1cXT9uPJ4U+GA0ngE/c32+5224EFqpa3NIcctz1q83+5/1zi8RPSWT9wGjtksvW2Vm8RxV4gOxuM5Da9UFyxSNOBQHEs13Ib/gbRJEDpGXTSSB8/T/S0XL5DONKw5nUFnW7RvYN9yacYbzzqfMCJ/dvfEmoAymlvqkR1EmMun2m/fZUpsSCg5Ktxh4eNMSnCxyTHiXOzpAwmAMZMSp+1Inynf3XHgSfAGI0zusJ6+lGCPZVYuMRTWW6slmqz81VlDpbKRnU+RAQWfjiGARHz3hHvC74hvm/GHacQekdE4TnzVqaXJXUPqp3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Sy9TDV72Z0/oL0eK21A5AfYQsxMRgi4vVB9XXQ1p0r8=;
 b=Z6wklhhGH6k9zFoWxbUAJeGTIn+qAgk3VxK/Ge2/MxC6YLOzrmCMFwt5Y1WyaMPPW0eZbVVMnNCj/W5BDCt9F9cuPmIg7xsRqN3yqmRxrXaqT4wS3LzMkiNOyPMlfaynRm6v441yY3NWG24ryy8Qm2pqDq6Sbrqf+2Vri2tt6pq2SWLrgq9BtG4NTzgkhUpaZ22fQLFjT9izAPgDvXHaAzw5Zg0jQRkZUd1MLlwNd4yCJ5V9Gju81YxkNrq2G7K/FlFeJGOnOH98lJgwqb2MSUowvBiFh6txvEHdPVZGZWCURjVEE7HRroGTC28qqOt2u82//ZH1TbcYc+V89UQUbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by SA1PR11MB8574.namprd11.prod.outlook.com (2603:10b6:806:3b1::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.24; Thu, 2 May
 2024 07:45:23 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%6]) with mapi id 15.20.7519.031; Thu, 2 May 2024
 07:45:23 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "Nautiyal, Ankit K"
 <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH] drm/i915/hdcp: Disable HDCP Line Rekeying for HDCP2.2 on
 HDMI
Thread-Topic: [PATCH] drm/i915/hdcp: Disable HDCP Line Rekeying for HDCP2.2 on
 HDMI
Thread-Index: AQHaj7CKM2mu2nAdLUK5mFlLuLWS+LFqi2EAgAGwCYCACrECgIAMig0AgAAzLVA=
Date: Thu, 2 May 2024 07:45:23 +0000
Message-ID: <SJ1PR11MB6129AD3D5F4E6EE5481B0D51B9182@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20240424051144.822652-2-suraj.kandpal@intel.com>
 <20240502044057.896348-2-suraj.kandpal@intel.com>
In-Reply-To: <20240502044057.896348-2-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|SA1PR11MB8574:EE_
x-ms-office365-filtering-correlation-id: bb79d999-1765-4594-55ca-08dc6a7bd33c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|1800799015|366007|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?MfAJi+XSBj1wlJiFZ6iTnNKeE5glWcoCcSPAq8PU/rSf2Bb1MBFTkrXgsjTS?=
 =?us-ascii?Q?G1KKEyH1ikIoYJ2GaTnxz4kiwSGOCJtLcKYLiOuYR3KIo9h9kLj27xHYD6b/?=
 =?us-ascii?Q?GhlV/p36fUPFMahaTDRkv0OkXpDpkVUcHmQ3ibFbyvV3liJDd/B2NIc/AmRz?=
 =?us-ascii?Q?Pc84iyeGHWl+OX5rVftvhdZf+Fkgxz/30xfoxBBoY1dnCuRBPnTuiT13JJrX?=
 =?us-ascii?Q?EtdUJ9UL17RLpnGMCwaDOL5QzARxIplYjgRtbGpagSC7XaKN1M94VxnFUwmN?=
 =?us-ascii?Q?Eli8Gm1dAu+/cMKD796Gz81hdXQCi8wc26yhK1j6nhmO9I4RuQzjGBv/oQko?=
 =?us-ascii?Q?jPjyzQ48klY85fqzEaRn+0BBc76bOFOV08MfQoAEYChzGflSGtT51kXiZG+U?=
 =?us-ascii?Q?rQupWxj48ZVk08SIsppmNmoc5DvCezw6FZK/s0I+faNVVqyZr7GfM/sT2oRT?=
 =?us-ascii?Q?Z4sC+PuzETK1fPP77ld4GC3aLP/L2wSY3p7BWqOOWQv5IIWtwkb0Ga8ahjFu?=
 =?us-ascii?Q?y2z5x7npFquowrJOxkss/zeY4TwJaNUJcS7jTvWAtnV6ZFpxnACfmAPPg/yu?=
 =?us-ascii?Q?aa0JDv1412zXRty+FxSsrzr5PS5Lcn4gZR2VZLG7lWP5HqfKCv9KHcslU6Qw?=
 =?us-ascii?Q?bxCa5zP/to6UHWKwVE5fvsMcZaOgiyBa9SXkfEPk34xjbxNZJ4p0vdojsJQB?=
 =?us-ascii?Q?CZ1rif6LcI86tIezT/Xd1uHCFPHNgp3zB9w7VMKAyrhmDUGSLxGxhmnFUOGl?=
 =?us-ascii?Q?eER/vKC4d98MVU0YBHBMM0d/mBloD7i1aV9Hh+79iBGccfCVVfNB6Ye53Qyb?=
 =?us-ascii?Q?dygKXGlxLqsXAZxwlbXULkKnD+rKTHkNVqoiIZtIIleRlOJQu69RZ8R4sYpU?=
 =?us-ascii?Q?fmIVxpRbNX/wkmdIal7OZk6yvdmD+HEYuJBtvFoH5FNWcfUkaEQef1cSffye?=
 =?us-ascii?Q?a+M3uQXDFd+RLhSkkL+4g4V2uGf4w6LhtBfPnp97LqgItivl73LGQv7d0Ffl?=
 =?us-ascii?Q?9ymAT7NbV7plwTWpYpgKLfJKhfmZPqrCEGJT3nPBG9z0lwbWYTHWBPomCR5s?=
 =?us-ascii?Q?REWaAFwZiLRGQg7meEodKvOxe9ABtgtZbzik+6yVEPrF77IoY1fQoithiN/C?=
 =?us-ascii?Q?H8+a641eEagyzLs9NHEPluv+aC/KMV8h5/OupF+0sb+6wjV7wfloZXzv2fg6?=
 =?us-ascii?Q?ivRiwBQ/6ZDRuppVM/p1+//3xv456YsBNTK58ym0/CEzmJVY1qYBoUIEHs4V?=
 =?us-ascii?Q?8+PEKM4ecUmgBTFZ9WDdyTxaUISrDD7bt27AUGjkkt1uT5H1NmZ9poskxXlT?=
 =?us-ascii?Q?SACoNZHi0o4EaOhs0FEAHRE+WjHwPHvNJcadsBy3qI7mRw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?A+nj9ZCwHEOH7iKtwPChFwxH34A+ugf3dBNZ5cjP/v7fsw2y/M/Z6zleyAuW?=
 =?us-ascii?Q?JLh+whe01Jdu/xEZdMkc2rdGb0yjcx7fEsBE+dkqqYY6LRtSgqdhNpTJJd71?=
 =?us-ascii?Q?Q7b8Q09XP6rIO8fB3AqMdJwUTSmtpX8xn913bu4NNVb8Dhhx9C7qMfllrsr5?=
 =?us-ascii?Q?gsRwyQifhJcLJqmoD3hh9FiOtpg0bH3GPwwbCtsVVVnp7amkCtDl8kxGkDLr?=
 =?us-ascii?Q?bUFyh8IPicwKYVc7z8jzlLiAGgIgMIpLOQRFKcytj2+jnRKxLHmGdV5nl1GX?=
 =?us-ascii?Q?4IXLpX9AzXJDeRezqpCeGzaM7KQvjyDrAvrdwxu02dXcaED8ZzWlQtmRqwRi?=
 =?us-ascii?Q?R3mkZSAuw+nFsbt1ADITPrfYOMbaLYg3ZMR5agB8q68OALNa46qjC7N7HxwA?=
 =?us-ascii?Q?MF1dHEPCsD20EK9CXl8q2hRmIxPL1eawfixszUd1tL7Iu/31ob2MhezuBnTY?=
 =?us-ascii?Q?CE1S1z86FjWoYx4ZI1Ws8cYGQfoDdkD47fTkjl+0KtqR6kv2Mkkuo4oYj36I?=
 =?us-ascii?Q?awz79uw2H3YGvpAZOdL1r5sJLBiL8z6H0YU4LWthczDq4o+vaq37w4ArG+Yv?=
 =?us-ascii?Q?Nzx9lKpoVb8Cb8zFEP3cpe5SU6x8so9IQsWv4PYsQf0k+ScWLkoMt73q7r2w?=
 =?us-ascii?Q?ELvbt2OFk8AHlNGkJWFh/3t9wPgE+JZH4+fRzPpwnJqxahJDLP5HZ1itrFIE?=
 =?us-ascii?Q?OMH6winUouz1bUTxUmY91xNOkgGtcGUTcoGPhU414fo1kyaD2qg8tZqkFFoE?=
 =?us-ascii?Q?xhjFZ7tYNIv9yhbzsJxVxGEMDkWSjynYnbG8a9v9yKzI5AVwqjrR4Oc5tQBr?=
 =?us-ascii?Q?wwXi4V5m6Vp+uQJVbjR0/V4utD3QCk5oetY0b18z3voBhKmL3HATJAGUnEgL?=
 =?us-ascii?Q?2/DIKvRQ6OOTYnOEGI2zJC9sjpej7b3UdHIAyWSmns4030Mc15ehVnGMLQEO?=
 =?us-ascii?Q?VMEQD6q86iMG/pNZsdTeHjiaxj7oNCwQHKUccIXv/yGQqEDT+hbj7OAHPSc4?=
 =?us-ascii?Q?qmYjiJ0/PEaDN2bAfZWuhEfv5oaZ7uzz6xHDlVevZeU1IrWQrXJk7SpkdVEF?=
 =?us-ascii?Q?l2kPDRyhkO5o463zMeha4TzU026ND7jxBrsWlQ76RnAolqyr0cU2EtgroM1Z?=
 =?us-ascii?Q?oTNMFiBIKDAtceF51TfeVj2gaMKAzJgdw2tAnUu9it7YOANO3oERT6hQpY0k?=
 =?us-ascii?Q?rNENCMEd0DOp+thfH4Xt1Kn4Q8QXpzDPH6X+hEZS9hHdMHB6/hX0j1KZw+e+?=
 =?us-ascii?Q?WEKtvQqYonzATOOIXMwvZ3emb8iPiDAV2p7UxZ3tY0T+clGEHNnh7Jri16KA?=
 =?us-ascii?Q?O+Ra/UpJW2JGgsapbI4ur7RrUnvD/EsBKyfcaz6WKdJlQhMExassPySKRiA9?=
 =?us-ascii?Q?OMlp7rnT+bzxLPGtZU5XRU9sClITFugB3vIaSfVyAFOtKvvgSy5ePYj6lUMC?=
 =?us-ascii?Q?tFCNJLm7I45C+dc8pyB4W1EqUxTcX9UHilwO7VZGaE+DucvncP+B1zN0RmI0?=
 =?us-ascii?Q?l//VDx84uINbPc+V2EqJmzN7wmC45xpY2OHFqEPszl1AqFifH+I81lOWciL2?=
 =?us-ascii?Q?8+i8NQI0Xi8NHn0to2rSrBtBHbLPyeig5Utp3buigzZxuo9txYjEYeHynxHd?=
 =?us-ascii?Q?CQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb79d999-1765-4594-55ca-08dc6a7bd33c
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2024 07:45:23.7006 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: u9laVnYDSXa8EP5rBjD9ttY8dAD/8HgAbm4rGaiSrXIHvMzJupNgk4GgpZRWjNuXyf7DqeHtCIk6+jzf66pClJKNkNPN5ZvoBGYEuAGCndY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8574
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
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Thursday, May 2, 2024 10:11 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; Shankar,
> Uma <uma.shankar@intel.com>; Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com>; Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH] drm/i915/hdcp: Disable HDCP Line Rekeying for HDCP2.2 on
> HDMI
>=20
> Disable HDCP Line Rekeying when HDCP ver > 1.4 and when we are on HDMI
> TMDS operation for DISPLAY_VER >=3D 14.
>=20
> --v2
> -Wa to be mentioned in comments not in commit message [Jani] -Remove
> blankline [Jani]
>=20
> --v3
> -No need to write what is being done in comments when code is self
> explanatory [Jani]
>=20
> --v4
> -Add comment regarding need of this WA when in TMDS mode [Chaitanya] -
> Write in chicken register for MTL [CHaitanya]
>=20
> --v5
> -Fix comment [Chaitanya]
> -Use correct set and clear value in intel_de_rmw [Chaitanya]
>=20
> Bspec: 49273
> Bspec: 69964

LGTM

Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>


> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 23 +++++++++++++++++++++++
>  drivers/gpu/drm/i915/i915_reg.h           |  4 ++++
>  2 files changed, 27 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index d5ed4c7dfbc0..02cbbbfd8e25 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -30,6 +30,27 @@
>  #define KEY_LOAD_TRIES	5
>  #define HDCP2_LC_RETRY_CNT			3
>=20
> +/* WA: 16022217614 */
> +static void
> +intel_hdcp_disable_hdcp_line_rekeying(struct intel_encoder *encoder,
> +				      struct intel_hdcp *hdcp)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> +
> +	/* Here we assume HDMI is in TMDS mode of operation */
> +	if (encoder->type !=3D INTEL_OUTPUT_HDMI)
> +		return;
> +
> +	if (DISPLAY_VER(dev_priv) >=3D 14) {
> +		if (IS_METEORLAKE(dev_priv))
> +			intel_de_rmw(dev_priv, MTL_CHICKEN_TRANS(hdcp-
> >cpu_transcoder),
> +				     0, HDCP_LINE_REKEY_DISABLE);
> +		else
> +			intel_de_rmw(dev_priv, TRANS_DDI_FUNC_CTL(hdcp-
> >cpu_transcoder),
> +				     0,
> TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
> +	}
> +}
> +
>  static int intel_conn_to_vcpi(struct intel_atomic_state *state,
>  			      struct intel_connector *connector)  { @@ -2005,6
> +2026,8 @@ static int _intel_hdcp2_enable(struct intel_atomic_state *stat=
e,
>  		    connector->base.base.id, connector->base.name,
>  		    hdcp->content_type);
>=20
> +	intel_hdcp_disable_hdcp_line_rekeying(connector->encoder, hdcp);
> +
>  	ret =3D hdcp2_authenticate_and_encrypt(state, connector);
>  	if (ret) {
>  		drm_dbg_kms(&i915->drm, "HDCP2 Type%d  Enabling Failed.
> (%d)\n", diff --git a/drivers/gpu/drm/i915/i915_reg.h
> b/drivers/gpu/drm/i915/i915_reg.h index e22a82a5ddd7..31338d825e34
> 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -3501,6 +3501,8 @@
>  					    [TRANSCODER_D] =3D
> _CHICKEN_TRANS_D))
>  #define _MTL_CHICKEN_TRANS_A	0x604e0
>  #define _MTL_CHICKEN_TRANS_B	0x614e0
> +#define _MTL_CHICKEN_TRANS_C	0x624e0
> +#define _MTL_CHICKEN_TRANS_D	0x634e0
>  #define MTL_CHICKEN_TRANS(trans)	_MMIO_TRANS((trans), \
>  						    _MTL_CHICKEN_TRANS_A,
> \
>  						    _MTL_CHICKEN_TRANS_B)
> @@ -3519,6 +3521,7 @@
>  #define   DP_FEC_BS_JITTER_WA		REG_BIT(15)
>  #define   PSR2_VSC_ENABLE_PROG_HEADER	REG_BIT(12)
>  #define   DP_DSC_INSERT_SF_AT_EOL_WA	REG_BIT(4)
> +#define   HDCP_LINE_REKEY_DISABLE	REG_BIT(0)
>=20
>  #define DISP_ARB_CTL	_MMIO(0x45000)
>  #define   DISP_FBC_MEMORY_WAKE		REG_BIT(31)
> @@ -4520,6 +4523,7 @@ enum skl_power_gate {
>  #define  TRANS_DDI_EDP_INPUT_B_ONOFF	(5 << 12)
>  #define  TRANS_DDI_EDP_INPUT_C_ONOFF	(6 << 12)
>  #define  TRANS_DDI_EDP_INPUT_D_ONOFF	(7 << 12)
> +#define  TRANS_DDI_HDCP_LINE_REKEY_DISABLE	REG_BIT(12)
>  #define  TRANS_DDI_MST_TRANSPORT_SELECT_MASK	REG_GENMASK(11,
> 10)
>  #define  TRANS_DDI_MST_TRANSPORT_SELECT(trans)	\
>  	REG_FIELD_PREP(TRANS_DDI_MST_TRANSPORT_SELECT_MASK,
> trans)
> --
> 2.43.2

