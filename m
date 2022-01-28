Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F246B49FE78
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jan 2022 17:54:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4858A88065;
	Fri, 28 Jan 2022 16:54:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E236088065
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jan 2022 16:54:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643388856; x=1674924856;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=3xSWpJttq+XzAMhF3jrJNyn2y3uc5ImavGo2Dveun3k=;
 b=B8m0i4BvQ+hOHC23ndynDen1FcJeUsIgWXU5Dxxg7H1zoR9FtIdIKKnt
 c80PoyM5Ybtd51gc52FpR7grAbBMocjyCpCOhvVSaQNQ3FYEPFGqQLo1p
 mKvitjDDMiqgilmYXGdK7laKrCtdHbuBmsWvjUXAXayERuiHmxSsXZzlB
 T5xwYoYXVs1OcvMTr9Y4MSPSVDy/LmI+o5Yz+yVtBPsoLuuGIHn6Vr5Tl
 7APzVrXDYjZMVOw5lnR61CA08LtvPIKhC13n5ceBSTo41mmWgTld8wlhp
 8Ax9Sf2F3TttDAE8EPyJ1tN2PPMJwlIscA3R10ILttCSlXyEK5MS/umrE Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10240"; a="333507725"
X-IronPort-AV: E=Sophos;i="5.88,324,1635231600"; d="scan'208";a="333507725"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 08:54:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,324,1635231600"; d="scan'208";a="598260719"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga004.fm.intel.com with ESMTP; 28 Jan 2022 08:54:16 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 28 Jan 2022 08:54:16 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 28 Jan 2022 08:54:15 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Fri, 28 Jan 2022 08:54:15 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 28 Jan 2022 08:54:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FbSVgdMvP8LNn+BJeqbWlxHdJlvti6601kYb0ZR84hra3h9VhHToac+8mmOKTuyndhoHfC7m0arAnnFdeiA35Z+E/5pAD6+35unAfcqG+tLasZozMSXdlmTMS0KzSIiKrYRNJwb4YDEOZr5myY0xl8oOpaT3HKZTSJfY8zBVncLPFZ/Yofr+5ozUclrmGfeM8e80KLfhk2mvQk1JrH/KmwV5CR5E5EqPfXNxQey3Ge58k/JYPIrBcI5KeukotiaofgTgs7lE9XbSEPqUudjv1RGHSlWHmrRaoBdzkrx69rgVH4iC47k/G9Q9n34JXO+9fesnXk1JwRkNy/1drI5pDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3xSWpJttq+XzAMhF3jrJNyn2y3uc5ImavGo2Dveun3k=;
 b=oVLt0vFJ6bDRvcCLpmv8CCBDz22a/RxmvMr6RrgvIyPwjhFmAaNrIPbNbc7HPxiQV9EyKK9seEzzaH7K89LBgeEHvoja510v9UaNsZbxY00wfYrTJQ9YXKVR3LGW2Ko5UO6SzFLRhuCgx5NpPqiiP+kMb47rzldyE+lNUGAdrtWu5oy1rn1vZ0IBbBoLwZ+kkdVAsF4gjDEE7inNvQK1B5Tq3igAYLaO3P3olBQC7SxJgwA54FsfMWN3LGX4fqWgZhqrXwW4yslRbd7t6jjRTbNZoPc6saQdphGZVny9Gb2N3ZyXGd1bh2r/GZul5OtBpUlo+18XrHZ5q56B2bjnPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from BYAPR11MB3784.namprd11.prod.outlook.com (2603:10b6:a03:fe::10)
 by DM5PR11MB1404.namprd11.prod.outlook.com (2603:10b6:3:c::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4909.14; Fri, 28 Jan 2022 16:54:14 +0000
Received: from BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::a048:b2cb:5446:6b13]) by BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::a048:b2cb:5446:6b13%7]) with mapi id 15.20.4930.018; Fri, 28 Jan 2022
 16:54:14 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v5 02/10] drm/i915/guc: Add XE_LP registers
 for GuC error state capture.
Thread-Index: AQHYEqH5fqYda4ab/kywlXD0AP7wCKx1m7IAgAA7+ACAAMQngIACDtgA
Date: Fri, 28 Jan 2022 16:54:13 +0000
Message-ID: <09f7c13dc72ea6f12b3b6a2de8e333424b67ae13.camel@intel.com>
References: <20220126104822.3653079-1-alan.previn.teres.alexis@intel.com>
 <20220126104822.3653079-3-alan.previn.teres.alexis@intel.com>
 <87k0emxt3v.fsf@intel.com>
 <75e98802660a5cdde9339b91f22e3f2cdb6fe343.camel@intel.com>
 <875yq5y18i.fsf@intel.com>
In-Reply-To: <875yq5y18i.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 63a574c4-7121-41d3-290d-08d9e27ed06f
x-ms-traffictypediagnostic: DM5PR11MB1404:EE_
x-microsoft-antispam-prvs: <DM5PR11MB14040A257EA1287CAE0939F68A229@DM5PR11MB1404.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4jOlLXjC/ciRUHCiP4dQZ/fUMHntINDSH4yKitu8hQf4w/bVw9uLtK5k/DLtTeDCt1IjvTTjuKL+8atyMJo9xzViXds4Gp2NeBUk0aDyekAz/NQoAQ8RmAJAG1fpwOE5j4yXd/kNmvww6Ak979tGzmotW152f8DCzqtPEAFUJbFlgGQ0rJdcVv8waAoIVuTZ96sTQrccwlUyWOehzgn3HkcK3GVZm5oi6lPSXMgWhNyzu8XINVvixNiiOGJmFYy7tdS5Aj7IXsxIsUU1htB0PRZOqNSdlYiC6O63fZ8yW2QkKvH8LhM1+PPBd42kRjK1hVYK4AHJ/uV7IBbesbUijQdXCzsrOHzHQ3skhL8z/OsLmdfg5yMpmDZ7rzDYi6+3SYJZXYl/u8YA6yvBMIfv+9SYwqnNBId/r1gu10eNfqIhdq0Fvy+a6EHyCtOtWGbovti6mOaTO8CzNoMldC7kNUcXGlz6CEN2N6nGLWcprUgt71CQTaq4FndAB+Td6UQeSbY8tvdslCbE/yyyHtIPkMURGeyAj7uylAWu8YJKEe+I0wEXnWxhNp9GaWfwXmNEcpFZyxiz4O0F4BB4uA67zPCIEd5d65wa+e+F1u+DjMEIHwNxM8WTtbFkUePOljERTGnU+tSaUKTm+RvJzKPVUZxRqMEtgtNLjE2WMmDP2MwpvJjAc/DxjYneUrk3AJ8JTRcdQVy35VYafnmrWghd6g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3784.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(6506007)(6512007)(76116006)(66946007)(64756008)(110136005)(38100700002)(316002)(36756003)(2906002)(38070700005)(86362001)(508600001)(8936002)(26005)(66556008)(5660300002)(83380400001)(66476007)(66446008)(8676002)(2616005)(6486002)(82960400001)(186003)(122000001)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Q0h6dVZNZk1iR1F5Z2cyODNiTGlHcXNSaE04SFFDeE9zaG9UaHdnOFlVMTNq?=
 =?utf-8?B?VTdYczg1R25YaXcvN3N6Z0hEVmFqbU56NkJFQ1FIdFZQaUFvS2pwVitMNUU2?=
 =?utf-8?B?VS9TbFdGam5qR1VYY1BuUSt1QnRLdDZPWUZTOHpmV3ZGcXNnT21RS0IvcGFH?=
 =?utf-8?B?bUJBMTRCKzQwVFBnZVNYRTRBRFR0OWhNYWt3VC9YVDJQdFNGRHkzTXEvYWZJ?=
 =?utf-8?B?T1llNktrY0ViM2c2T0Z2cG1iNWZmNmpyNjdWNmxUSHhJRytmaWpFN3A4aEpX?=
 =?utf-8?B?S3VsWUpzS09lWStHSHVnb3RQcW1yeFZHWUpRM0ZOay9KUExhcSt0RGFSMk04?=
 =?utf-8?B?UzVTRUFlc1B4SGFSMUtLR3hBWkxhN2w0Wm42dmJVSzN5MlV2bkNZZCtQMEMz?=
 =?utf-8?B?T2YwZUVYNlAybHRZV2g2MDBpWjFsSEVScmVxS2x4QzFrRDlPYkdWdkViMEsz?=
 =?utf-8?B?WlYvaDBQMHU3TnJZN3pnaysxcEVmck4rWTd0eEJydEVkcDg1c0RTUXIvLzVm?=
 =?utf-8?B?SVd6bFJ4Q2VXei9jUFM1Z0RqYllac0dxVGZzSWt4S0w5cDBVZkY3SUE0OVNt?=
 =?utf-8?B?d2hYeDZ3ZUlENjl4L0ZDcDJBcWtTRGw5UnVkUHkxL1FlbEp6M0ZjQWZYUWxl?=
 =?utf-8?B?MVZlWERnYWtDcXZBR2dWdWZWNk5OYThDOFBBTjlvVndhSmliZDF6R2h1Sk9T?=
 =?utf-8?B?KzNaRDBlcWxqU1NHWVJJa0Y3VWROQ3NWYUJYZ3VteVBHc05WV1ZPSG5heXp2?=
 =?utf-8?B?Yno3VnZ1RWdYZWZ6Q2ZoZEFmcm55Uk5NSUpJMWx6dCt1R1VJQVgvYks5WndT?=
 =?utf-8?B?NWlvTTd6L05rY3d5SHNIcmZNTjVUcVN3RWo2MGNGbjFTU2tkcUZBMFpyeDdu?=
 =?utf-8?B?ZTM3cGRRWnJ4ZlRIOXVmZEVhOHFpWkdJM3lyYjFpL0pHS3FlanF3K3I5QkNE?=
 =?utf-8?B?M0l0YnVweGw3aS9sVzRNMmNjb1IrVHhGQ2I1eEtoalR2RU56S3U0YWlZSEpJ?=
 =?utf-8?B?NlRxcHZyWnlsSHo3ckc4Q1pXSWlUL21lN0pNTCtUWDRaai9OdDFSVGdDQy9s?=
 =?utf-8?B?cXkvQ1ROTlRxUmRTNkxQeEpaZ3hSb2ovWXNHR0Mvc0hmK1diVTZGdUVSMDlr?=
 =?utf-8?B?Qk9GSTlsSHJodUozQ0F2VkpFZWhFQVB3Z2s4elVHVWgxZHRPOUlmZk9ITUkx?=
 =?utf-8?B?bGF4VjFuN0JmaGc5V29tcm1YQ0hmYVRFV2wzZHhTTVdiOStLRXV6L3VMMXJ5?=
 =?utf-8?B?cGo0RE9MZjFFblpyTWxUclNDRDVyK2F0aG5SMC90WjZEWC8vMndBUVdQeU1P?=
 =?utf-8?B?U1RCbUVIUXYwWW9VdW45QXVSazhZY2Rmeno0eXJLQ2dhTzlaVnBRVFZFVDZC?=
 =?utf-8?B?VVdiRHVLWENLVWRFNjZHL3M1bWQydmk2Vm5KdC9EdUpWU24yaGlKUEgxWTdM?=
 =?utf-8?B?VHV2bE9xVUw5UnJVL1pVQjZ5S1JHZ0IvSUdrMVAzWXhrYjk5c0hmWGlYcm1K?=
 =?utf-8?B?WkpoZXc4YVQ5SXJ1Yms3REJTNmFlbldYbWVkci9vMGRZRkpod1poRVM2KzdR?=
 =?utf-8?B?RHY0SVYrTm82TjNrQTRDd005SFVuZUxwd2tTOXRGTnFkN1F3Q1lXQWcxRnd3?=
 =?utf-8?B?REFsSkFOdUpTUFZhTlFzSTltMWVnSEl0a1IvK2k4ODM0cDhlVnVob1lNQlp5?=
 =?utf-8?B?SG11RytWeG9UK2Q2SDFxeEVFbEdZS1pQOHZrdUVkYmR6TGRjbWpLc1NoZzdQ?=
 =?utf-8?B?Qmk2K3kyRndYOVUwQ0dCdThQM2VWU2N5bVNiell3Z0dDWEdjWVNXQzhmZVFQ?=
 =?utf-8?B?QlVGVU5qWE9lUUZLOFJ6UzEzWGdWOGlpdURydkhpZjRNdXpXZm5xdE9Ha3d6?=
 =?utf-8?B?Yklyc1JyNDE4V2VwR3hKQ3pjZ3pKcWZvY1lrWVNONGNnOHFqYXE3clFtS1lL?=
 =?utf-8?B?Ulo4ZHNZSHZhZUZrN3pEQ0FENXZXcitObThXVFdqUGdjbmhCd1UxRCsyblBM?=
 =?utf-8?B?OU81WVU0OFNHbWVLNmtlUUN5S3JUZFhWdkpreHJuR3JWWk5VVjBLVElWbCt2?=
 =?utf-8?B?Z0xDMnc2YytCQWNHU214dWdtQWt0ZXdVck1ubVhsdWlobFZFSWdzaTF2V1lS?=
 =?utf-8?B?c21ueXZhWEpXWU1XYThaQ3gwZEExSWxwSXVFUkhMYmxYNTN4eVBYYXF1VEFI?=
 =?utf-8?B?c1AyTERWRldkaWdsSjdSa1lqTFo5Tm5VL2lEdVpiaUN3amJyVVFrVEpYaDJ4?=
 =?utf-8?B?YTMrcHdhWjNJb2luZWQ4TW9xNGxRbkhSTjI0c3JUV2UxRm5LT2lWQkN0U3Nr?=
 =?utf-8?B?SjZMRnp3VUhvY1d2blo0bklQbGJ5ajRURWl5cjFZd3ZmeHY5L2Jqdz09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <CA063EE66F74834AB0C3C1CEB3630393@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3784.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 63a574c4-7121-41d3-290d-08d9e27ed06f
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2022 16:54:13.9244 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LiGDVQFvSdZCDyeyJTBCOKNDpXLZa/w/Er71it/Z3HOP3smGQjMBt6hv6RExrwv8F+JUsqlKV89R1Zs1tKoABSOpog2JJ+pfAp/SepIG+dsV6BEwNrGOpiihxIMQpkL/
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1404
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 02/10] drm/i915/guc: Add XE_LP registers
 for GuC error state capture.
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

RmFjZXBhbG1pbmcgbXlzZWxmIC0geWVzIHlvdSdyZSByaWdodCAtIHRoYXQncyBhbiBlYXN5IGZp
eC4uLg0KbW92ZSB0aGUgZGV2aWNlIHNwZWNpZmljIGV4dC1saXN0IGludG8gdGhlIGd1Y19jYXB0
dXJlX3ByaXYgc3RydWN0dXJlDQp3aGljaCBpcyBhbGxvY2F0ZWQgcGVyIGd0LiANCg0KVGhhbmtz
IEphbmkuIA0KDQouLi5hbGFuDQoNCk9uIFRodSwgMjAyMi0wMS0yNyBhdCAxMTozMCArMDIwMCwg
SmFuaSBOaWt1bGEgd3JvdGU6DQo+IE9uIFdlZCwgMjYgSmFuIDIwMjIsICJUZXJlcyBBbGV4aXMs
IEFsYW4gUHJldmluIiA8YWxhbi5wcmV2aW4udGVyZXMuYWxleGlzQGludGVsLmNvbT4gd3JvdGU6
DQo+ID4gVGhhbmtzIEphbmkgZm9yIHRha2luZyB0aGUgdGltZSB0byByZXZpZXcuLi4gDQo+ID4g
DQo+ID4gMS4gYXBvbG9naWVzIG9uIHRoZSBjb25zdCBpc3N1ZSwgdGhpcyBpcyBteSBiYWQsIGkg
dGhpbmsgaXQgd2FzDQo+ID4gb25lIG9mIHRoZSBjb21tZW50cyBmcm9tIGVhcmxpZXIgcmV2IG5v
dCBzdXJlIGhvdyBpIG1pc3NlZCBpdC4NCj4gPiBXaWxsIGZpeCB0aGlzIG9uIG5leHQgcmV2Lg0K
PiA+IA0KPiA+IDIuIEkgZG8gaGF2ZSBhIHF1ZXN0aW9uIGJlbG93IG9uIHRoZSBjb25zdCBmb3Ig
b25lIG9mIHNwZWNpZmljIHR5cGVzDQo+ID4gb2YgdGFibGVzLiBOZWVkIHlvdXIgdGhvdWdodHMN
Cj4gPiANCj4gPiAuLi5hbGFuDQo+ID4gDQo+ID4gDQo+ID4gT24gV2VkLCAyMDIyLTAxLTI2IGF0
IDIwOjEzICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4gPiA+IE9uIFdlZCwgMjYgSmFuIDIw
MjIsIEFsYW4gUHJldmluIDxhbGFuLnByZXZpbi50ZXJlcy5hbGV4aXNAaW50ZWwuY29tPiB3cm90
ZToNCj4gPiA+ID4gQWRkIGRldmljZSBzcGVjaWZpYyB0YWJsZXMgYW5kIHJlZ2lzdGVyIGxpc3Rz
IHRvIGNvdmVyIGRpZmZlcmVudCBlbmdpbmVzDQo+ID4gPiA+IGNsYXNzIHR5cGVzIGZvciBHdUMg
ZXJyb3Igc3RhdGUgY2FwdHVyZSBmb3IgWEVfTFAgcHJvZHVjdHMuDQo+ID4gPiA+IA0KPiA+IC4u
Lg0KPiA+IA0KPiA+ID4gPiArc3RhdGljIHN0cnVjdCBfX2V4dF9zdGVlcl9yZWcgeGVscGRfZXh0
cmVnc1tdID0gew0KPiA+ID4gPiArCXsiR0VON19TQU1QTEVSX0lOU1RET05FIiwgR0VON19TQU1Q
TEVSX0lOU1RET05FfSwNCj4gPiA+ID4gKwl7IkdFTjdfUk9XX0lOU1RET05FIiwgR0VON19ST1df
SU5TVERPTkV9DQo+ID4gPiA+ICt9Ow0KPiA+ID4gDQo+ID4gPiBFaXRoZXIgdGhpcyBuZWVkcyB0
byBiZSBjb25zdCBvciwgaWYgaXQgbmVlZHMgdG8gYmUgbXV0YWJsZSwgbW92ZWQgdG8NCj4gPiA+
IGRldmljZSBzcGVjaWZpYyBkYXRhLg0KPiA+ID4gDQo+ID4gPiBEaXR0byBmb3IgYWxsIHN1Y2gg
dGhpbmdzIGFsbCBvdmVyIHRoZSBwbGFjZS4NCj4gPiA+IA0KPiA+ID4gQlIsDQo+ID4gPiBKYW5p
Lg0KPiA+IA0KPiA+IEkgaGFkIGEgcXVlc3Rpb24gdGhvdWdoLi4uIHRoZSBsaXN0IG9mIHJlZ2lz
dGVycyBsaWtlIHRoZSBvbmUgYWJvdmUgYXMgd2VsbA0KPiA+IGFzIGJlbG93IHNoYWxsIGJlIG1h
ZGUgY29uc3QuLi4gaG93ZXZlciwgdGhlIHRhYmxlLW9mLWxpc3RzIChzZWUgZmFydGhlciBkb3du
KSwgY29udGFpbnMgYSBwb2ludGVyIHRvICJleHRlbmRlZF9yZWdzIg0KPiA+IHRoYXQgc2hhbGwg
YmUgYWxsb2NhdGVkIGF0IHN0YXJ0dXAgLSBpcyBpdCBva2F5IGZvciB0aGF0IGxpc3QgdG8gcmVt
YWluIG5vbi1jb25zdA0KPiA+IHNpbmNlIHRoZSBvdGhlcnMgd2l0aCBhY3R1YWwgcmVnaXN0ZXIg
b2Zmc2V0cyByZW1haW4gY29uc3Q/DQo+IA0KPiBBIHN0YXRpYyBtdXRhYmxlIGFycmF5IGxpa2Ug
dGhpcyBpcyBtb2R1bGUgb3IgZHJpdmVyIHNwZWNpZmljLiBZb3VyDQo+IGFsbG9jYXRpb24gaXMg
ZGV2aWNlIHNwZWNpZmljLg0KPiANCj4gU3VyZSwgeW91IGhhdmUgYSBjaGVjayBpbiB0aGVyZSB3
aXRoIC8qIGFscmVhZHkgcG9wdWxhdGVkICovIGNvbW1lbnQgb24NCj4gdGhlIG1vZHVsZSBzcGVj
aWZpYyBkYXRhIHRvIGF2b2lkIGFsbG9jYXRpbmcgaXQgbXVsdGlwbGUgdGltZXMuDQo+IA0KPiBO
b3csIGNvbnNpZGVyIHByb2JpbmcgdHdvIGRldmljZXMgd2l0aCBkaWZmZXJlbnQgcHJvcGVydGll
cy4gVGhlIGxhdHRlcg0KPiBvbmUgd2lsbCB1c2UgdGhlIHN0dWZmIHlvdSBhbGxvY2F0ZWQgZm9y
IHRoZSBmaXJzdCBkZXZpY2UuIEl0IHdpbGwgZ2V0DQo+IHJlYWxseSB0cmlja3kgcmVhbGx5IHF1
aWNrbHkuDQo+IA0KPiBQcmV0dHkgbXVjaCB0aGUgcnVsZSBpcyBubyBzdGF0aWMgKG9yIGdsb2Jh
bCkgbm9uLWNvbnN0IGRhdGEgZm9yDQo+IGFueXRoaW5nLiBXZSBkbyBoYXZlIHRvIG1ha2Ugc29t
ZSBleGNlcHRpb25zLCBidXQgZXZlcnkgb25lIG9mIHRoZW0gYWRkcw0KPiB0byB0aGUgYnVyZGVu
IG9mIGNoZWNraW5nIGlmIHRoZXkncmUgZ29pbmcgdG8gYmUgYSBwcm9ibGVtLCBtYXliZSBsYXRl
cg0KPiBvbiBpZiBub3QgcmlnaHQgbm93LiBTbyBpdCdzIG5vdCBzbyBtdWNoIGFib3V0IGJlaW5n
IGNvbnN0IHBlciBzZSwgaXQncw0KPiBhYm91dCBlbnN1cmluZyB3ZSBkb24ndCBzY3JldyB1cCB3
aXRoIGRldmljZSBzcGVjaWZpYyBkYXRhLg0KPiANCj4gDQo+IEJSLA0KPiBKYW5pLg0KPiANCj4g
DQo+ID4gQWxhbjogd2lsbCBhZGQgY29uc3QgZm9yIHRoaXMgYW5kIGFib3ZlIHRhYmxlczoNCj4g
PiAJc3RhdGljIHN0cnVjdCBfX2d1Y19tbWlvX3JlZ19kZXNjciB4ZV9scGRfZ2xvYmFsX3JlZ3Nb
XSA9IHsNCj4gPiAJCUNPTU1PTl9CQVNFX0dMT0JBTCgpLA0KPiA+IAkJQ09NTU9OX0dFTjlCQVNF
X0dMT0JBTCgpLA0KPiA+IAkJQ09NTU9OX0dFTjEyQkFTRV9HTE9CQUwoKSwNCj4gPiAJfTsNCj4g
PiANCj4gPiBJcyB0aGlzIG9rYXkgdG8gbm90IGJlIGNvbnN0PzoNCj4gPiAJc3RhdGljIHN0cnVj
dCBfX2d1Y19tbWlvX3JlZ19kZXNjcl9ncm91cCBkZWZhdWx0X2xpc3RzW10gPSB7DQo+ID4gCQlN
QUtFX1JFR0xJU1QoZGVmYXVsdF9nbG9iYWxfcmVncywgUEYsIEdMT0JBTCwgMCksDQo+ID4gCQlN
QUtFX1JFR0xJU1QoZGVmYXVsdF9yY19jbGFzc19yZWdzLCBQRiwgRU5HSU5FX0NMQVNTLCBHVUNf
UkVOREVSX0NMQVNTKSwNCj4gPiAJCU1BS0VfUkVHTElTVCh4ZV9scGRfcmNfaW5zdF9yZWdzLCBQ
RiwgRU5HSU5FX0lOU1RBTkNFLCBHVUNfUkVOREVSX0NMQVNTKSwNCj4gPiAJCU1BS0VfUkVHTElT
VChlbXB0eV9yZWdzX2xpc3QsIFBGLCBFTkdJTkVfQ0xBU1MsIEdVQ19WSURFT19DTEFTUyksDQo+
ID4gCQlNQUtFX1JFR0xJU1QoeGVfbHBkX3ZkX2luc3RfcmVncywgUEYsIEVOR0lORV9JTlNUQU5D
RSwgR1VDX1ZJREVPX0NMQVNTKSwNCj4gPiAJCU1BS0VfUkVHTElTVChlbXB0eV9yZWdzX2xpc3Qs
IFBGLCBFTkdJTkVfQ0xBU1MsIEdVQ19WSURFT0VOSEFOQ0VfQ0xBU1MpLA0KPiA+IAkJTUFLRV9S
RUdMSVNUKHhlX2xwZF92ZWNfaW5zdF9yZWdzLCBQRiwgRU5HSU5FX0lOU1RBTkNFLCBHVUNfVklE
RU9FTkhBTkNFX0NMQVNTKSwNCj4gPiAJCU1BS0VfUkVHTElTVChlbXB0eV9yZWdzX2xpc3QsIFBG
LCBFTkdJTkVfQ0xBU1MsIEdVQ19CTElUVEVSX0NMQVNTKSwNCj4gPiAJCU1BS0VfUkVHTElTVCh4
ZV9scGRfYmx0X2luc3RfcmVncywgUEYsIEVOR0lORV9JTlNUQU5DRSwgR1VDX0JMSVRURVJfQ0xB
U1MpLA0KPiA+IAkJe30NCj4gPiAJfTsNCj4gPiANCj4gPiANCj4gDQo+IC0tIA0KPiBKYW5pIE5p
a3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyDQoNCg==
