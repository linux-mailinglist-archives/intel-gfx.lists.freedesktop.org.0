Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A886883135E
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jan 2024 08:54:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07A3110E14A;
	Thu, 18 Jan 2024 07:53:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89A3910E14A
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jan 2024 07:53:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705564423; x=1737100423;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=frcCV1k9oG9oKj3dpUqdJg1PxRT2RSN/XKdLCPjaYaY=;
 b=B7I5cvw5+IFJ/vCWcx8FX+oKfTacUg3FDiaQZERZ1kkh7+yONgHQzNfr
 efKEN6wq1OFdjYafqWIFs2w5/tlFVzPDQUmEv+CDEARuIszLeUlXp2ENy
 xgjofRFxWmD2vu1Gvpq2q4dCRGRc464M6eKcho1Pd4+VV2pYPJ5j6VrAC
 yCHNdzHgZUlzCdHmLiSvejYmN10A+Zme/rNcWLjj8gJmbN+JvveIHiwEf
 VPdSFzo0gFj3oyoP0UT+wWpbnTOwVCAs2aqSdVjGdZS/cgZgxzMC1UUxY
 phNxQy+qE6bGua6O+vwPKz5fxBTKux2OSoOJenGh1yn09UOYedwGU5JUi Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="7071189"
X-IronPort-AV: E=Sophos;i="6.05,201,1701158400"; 
   d="scan'208";a="7071189"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2024 23:53:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,201,1701158400"; d="scan'208";a="26398198"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Jan 2024 23:53:38 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 17 Jan 2024 23:53:37 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 17 Jan 2024 23:53:37 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 17 Jan 2024 23:53:37 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 17 Jan 2024 23:53:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iEzxdf7yZcxtKHoaPEcti/HqNhiDKG+CIQGfs9IrK00q3rSGx1YqK3TJa3uHy9OQ21xUIXor/QZXdpUpJt1UK9GjRuPsEuANAJF4Nd6dDAFb9brOs9QQQQkF9JszZYBN/EC/aEb66AyKS9b6qMLTDa5P85JyBnPZnQoYO69ktILPesdmkPwWKUqPScVCgrHS5ErVgg2sRj6D980Cm/szocy7NEe3LXEeI+rfLSiybGSpvMXWlENwgvpaSptqfsUza6RF0mzJzFTNlpeNnAs710kBF8gTAW6Fjtdocn2f97mQLhKlnZrqya2G7PnWEfxQqy+nlH1DSHq5fIzkwV9vGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
 b=VJ5gbw91OYr1qJr2GsZ2ogUg96AwgBJ9H+Da1nOXU7ZfmJqtlx4mArqKfrgISW+4kPzDU/DAm7JMH3P6MsYmmcAWkoe8qOV7R5txySkV7bs0MHDGB8tRwD2+AzH2Q7+Ac5BQOQsga2M1QqNqwEw97XLf9bnfChFORqlKpw2f7bcq66czZZ2xoCpOIsVjyET8hefnCf9ZSMpE/vwot0o3te1dSMQh7Wp7+VPvRYeWhw6ADs43iTsDlXf5PM6GisFgxNPmb4TTz21xXbvMUU61rnkURywQS+bOfgkzDE2T+88NWwvTlatPDfKqSEKKiudg39WAw6/Z1yRbBJOxS8ZHbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH7PR11MB7146.namprd11.prod.outlook.com (2603:10b6:510:1ed::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7181.17; Thu, 18 Jan 2024 07:53:29 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737%7]) with mapi id 15.20.7202.024; Thu, 18 Jan 2024
 07:53:29 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2 8/9] drm/i915: Perform vblank evasion around legacy
 cursor updates
Thread-Topic: [PATCH v2 8/9] drm/i915: Perform vblank evasion around legacy
 cursor updates
Thread-Index: AQHaSL2Pc3RIISX5AUqgjPI1Loy2/LDfNVwA
Date: Thu, 18 Jan 2024 07:53:29 +0000
Message-ID: <106ab0875a46b67efe975288366931c9ba1414cd.camel@intel.com>
References: <20231213102519.13500-9-ville.syrjala@linux.intel.com>
 <20240116204927.23499-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240116204927.23499-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH7PR11MB7146:EE_
x-ms-office365-filtering-correlation-id: 8f155869-cab5-448c-be2e-08dc17fa8f93
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: giu0+hF2cGIttrtwH4rzASB03NXVdH/kXNhkYsBhMHYz3g74J2n6GOHTpKMZTN4jzpPVYjhTLP0rnk78AENM88Nj6tRgkziWpUgcaZv4ppsEKrOYbFl9Le14ywh08jz+Aj+BJDbcFydRUeag7CDMgmo4t+Qjy9EKSrwsD85sQNwC6sIH5UMwuLM9e/9d2wGtz70uj7WxE1ruprXSy39+LzAxSP3PV+KxeyQH9yOLFM9AQT6zszUei67cv9qcLaQa2gMvaAgesDHlsz/BOHcQlJE51MZcvxr7ZDnecUmGRaKU2Rwz/sSRGBpGDwVyYO3GgzE3t5H+6Cj8IGRDsmebfqiCV7FaCdhb5N7jTL3I/bo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(396003)(346002)(376002)(366004)(230922051799003)(64100799003)(1800799012)(451199024)(186009)(2616005)(26005)(478600001)(66446008)(66556008)(66476007)(66946007)(110136005)(76116006)(91956017)(41300700001)(6486002)(64756008)(4270600006)(71200400001)(6512007)(6506007)(8936002)(316002)(8676002)(2906002)(82960400001)(38070700009)(36756003)(73894004)(621065003)(86362001)(38100700002)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?atYZJ7+gHtjj3omOkf7G8gdERxSQtJ+TUvk9kkSRxyqKynOWGD/TrsRskp?=
 =?iso-8859-1?Q?cID2aCSwNTosDOJcL2KyDVtmIkv9jKr3Q1Y9p4rsR8+hy8+k3ekY4+EGMm?=
 =?iso-8859-1?Q?t7lfRyxKPWhBQz9YpIe8quWgaTUwJcrlJ6bmsnxRgXbOoxZmSQTCCMX0ZN?=
 =?iso-8859-1?Q?r6bsWL7j8dn44hS4BAXeWVZAis+dmbtdDWar2w9ydTDpGg3lyy83CimpOM?=
 =?iso-8859-1?Q?Ljss30nO8mAzpjxM1wk6y5IOEcm8utFbA7Pxp0jQARCd2Ov8hQ4J9DnNZq?=
 =?iso-8859-1?Q?kJLav9Z6AA8YqSd9qRjSVCwAhwAz88T0HOMpEWW4/Bibs0Qu1GqqMWsccn?=
 =?iso-8859-1?Q?tbGwOTwf0MoJRWHOMUesrbwVuOB/5D7SahKu9jpDgsOcWaZF+lfKsc9vbK?=
 =?iso-8859-1?Q?XplocdHPSbXonpLjeOSfTkLyQ936cVCSi3oJ8Xiwng9VGdehCe7dg0NJ3o?=
 =?iso-8859-1?Q?Bka3+6LSYeZY0WLCEw/fTlNpekL7Bq/k5M66jvO/BrcufK+SexbBMcKxmZ?=
 =?iso-8859-1?Q?hEj8xQnQYZiFtEIhcTlPK1xXHvSkF8fNyymMketx89BCIPvp8sPN0f8YG+?=
 =?iso-8859-1?Q?BI+UrN21NhDSNoXDAmHSwmtQDJEsIKE23OmkbK6rfLi8rjTlR2tInhefCj?=
 =?iso-8859-1?Q?hVcSShCaDXDS5Wdjo0QhlY9cvjKtjqdGxfUZGYfCp5k0Fxj2oW0U9uwmcq?=
 =?iso-8859-1?Q?glnmfv5+BWswliXdwUq15EFxUta+AANLDWio/CmGGEgmaOwDR/Vv9OjX9b?=
 =?iso-8859-1?Q?QZoGx5IyYastSqGmxknSslaqJRdrUKgWfjTrQcrg1ky5qZRmenayxEy/Bo?=
 =?iso-8859-1?Q?qElO/K5C8Wx7K95WHdJpvEzo6PWYWqOdagfQKPfn/jIyvn0IDFIMY6UEKU?=
 =?iso-8859-1?Q?f6sElxHI/ruphoVuq8LsblNfSb0+HQntsxZBr7hoJLMp+6IJcd58iWLXP0?=
 =?iso-8859-1?Q?7SmN/6iQ57Vl15I60jNKAjNz9qx5D6PxhkGWCswHRFd5bNBs0lS9msjtn9?=
 =?iso-8859-1?Q?S1//k7wwMx2OslKNYRbyDeqaf1+cEMTyewjtbf7mlOH8+KFkpVLyW2YfyS?=
 =?iso-8859-1?Q?iBZH4A7HW3zruo4verBKu2ChVSn1uc9+2vwwM1ObiHgNHIledUgbQZzSPL?=
 =?iso-8859-1?Q?RdRtkEL2FIXDvH38l7VruOqwkOZWvATqvsbRh1qHhscnn6gAIZWJeA9Bd1?=
 =?iso-8859-1?Q?BiPvNHg4eTCOZh5YdjBPsxR6MUnS/dXNgQEWvyDvv/hSs7wPwjf4cEo8Sv?=
 =?iso-8859-1?Q?/jvx7G8+vrNjKg/xmQvwhU+JmSRisb07nA+mM22oPz4aXTxR9gaxuTAx9K?=
 =?iso-8859-1?Q?QY5VDAD35wE0o4+cVqr5vgdsEHDMx8YTnw/6mrBUX8ygqpCSfm1TJhgKf8?=
 =?iso-8859-1?Q?t0KopOmpLXpWcdXSGhr1VJN3JzTuS38PO/642SYwfrKu2VbS+BB8uzW+E0?=
 =?iso-8859-1?Q?iRNUdhnQe6nq/w3uuD2Cqvg9of7iXhSnoaEcZHHs/tpehFC2JsYnFd/TlK?=
 =?iso-8859-1?Q?aOVCFlRprUElQ43pzmYCIwx3Bw4MLD7uwsBsqqafjj3xAlv97YpOx6J+F+?=
 =?iso-8859-1?Q?c0j1u7XlTs0RwK4tytFw3TLzcRpTe83N9hQ3XQOLp5FJMgtC1ZpJLuy/K2?=
 =?iso-8859-1?Q?4iH2dRdtv7/Jw/VQHdRU00y/fAoDC8U3hVmN8IwwPI+OYDQ7E+20+ToQ?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f155869-cab5-448c-be2e-08dc17fa8f93
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jan 2024 07:53:29.7423 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: G2kNWPW5E0qTNNTgzzx7wwC2x6XznJ1W+Xi6zHnLmWSuvZg5No00pzpNkoQsCf1ioRYzCNjn+8QJPjvsKh6haWHodVxKwKDoCFGU8gwXBt4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7146
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


