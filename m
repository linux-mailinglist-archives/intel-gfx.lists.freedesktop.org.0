Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2InAMoOyHmr7JAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 12:37:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E94D62CB7B
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 12:37:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B51C10EEB0;
	Tue,  2 Jun 2026 10:37:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Va3ix/49";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AB5510EEAF;
 Tue,  2 Jun 2026 10:37:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780396669; x=1811932669;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JksCF5cAInq7WrbPL9Ihw2p7GS7kIh+qsrfg3Cbm+HI=;
 b=Va3ix/49cq1+zeF9xRAAlsdvPq1HyKGedDPd0eqfccFXGIYK9uHAplsB
 NYsfgCYdWI9VRVzJhsI46+0uXHcuv9YFD7lCeWnufzc+ovPqaYgT7tdUy
 uHoET9XXVT1/5/OiNQMqratRnmkbDxsBYbTAxA9mUY4/+zKGJfcF2d7bD
 3UKb/DBmcHdFTouDKCLqAX9I2idCoig4QULIoseAMr/c7rvI5NjR1e+Dk
 YQ/q8d+/9Ku9BPUfB0p+4eIvHnzBv8iXx4qZQaBypJWplI80knnfdT/qO
 /p5Ro7eKcjQymg/yDd3M3qNHOTl71uHtVYAUQ5kUNv2NEnBHOMYlAoR9H g==;
X-CSE-ConnectionGUID: XbMXeUHlSk60+Oieumq8MA==
X-CSE-MsgGUID: itqF/RDNTtekKOMzEjgOwQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11804"; a="81303351"
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="81303351"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 03:37:49 -0700
X-CSE-ConnectionGUID: 6MaQef3mQWOSqeJV5tPA+g==
X-CSE-MsgGUID: gRamQ8LOTFWkKV9UBm9qnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="274135293"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 03:37:50 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 2 Jun 2026 03:37:48 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 2 Jun 2026 03:37:48 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.7) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 2 Jun 2026 03:37:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qPYvRs+4gAxYfgWw2uxW34L+TWUl9Ynvo/ghs/1sfVfVQVxDmO0invwzAHpuWIp9HriRj1fdBQb4fDdknO/K5aimm4bG7i1PFoeapdxHY49wtDOJB9mFnzElNS+L5eZAZHInrksdS+Zgqg195vfFMXxX9K3ouvgPENeDmimNz0DhSFuRIqyT1DpOvo9RGLq8j4NEZerqmxc4OXdfNMg8o7zwwcXd5M9G0OXuO9g1Byesy92ZUiWn+1UFmHKEmk2RKoYqJRgQ/Bud8zBZD7S/5W8OteHUM+KpjYQz4nW8uOac/miSf7vjw632TuZVMWZyb9T4UcP9FImtgavzmdlrcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JksCF5cAInq7WrbPL9Ihw2p7GS7kIh+qsrfg3Cbm+HI=;
 b=CKLm/222JQLHH+JBlDbDajFzK/VnDXTNYmSfQ1iz7TIqOoH9WOI1ZJn92Ap+4zPXtW1XRjzkg0IEmR7eqw8p0ebIFoa0eKp9Ul/8qHuNVY2qB6R0Jef3RCMIeMDeipVdz6ZViDTnreIYjb08j++YQ8vckT1lOK6ciAJDthsFQjihMLTitPl/eMn2BvDk/nDuM5SmDurtyNcmOVayHXv4bvTUejGUZNBJep/ZM2Fh1oQj6BVwyV9SE06NAY4io1dzwv051GUZHNBGFGbQnVaJdhUb0OooUCPLzSXxeQ57Z3e02VM1r1cx29giWydM7u4NHOxk4jxQEd64QCWMn7uSZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH3PPFAB4263235.namprd11.prod.outlook.com
 (2603:10b6:518:1::d41) by MW5PR11MB5929.namprd11.prod.outlook.com
 (2603:10b6:303:194::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.16; Tue, 2 Jun 2026
 10:37:43 +0000
Received: from PH3PPFAB4263235.namprd11.prod.outlook.com
 ([fe80::62cf:3d13:b91:6a5b]) by PH3PPFAB4263235.namprd11.prod.outlook.com
 ([fe80::62cf:3d13:b91:6a5b%5]) with mapi id 15.21.0071.014; Tue, 2 Jun 2026
 10:37:43 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, "rajat.gupta@oss.qualcomm.com"
 <rajat.gupta@oss.qualcomm.com>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>, "simona@ffwll.ch" <simona@ffwll.ch>,
 "airlied@gmail.com" <airlied@gmail.com>, "mripard@kernel.org"
 <mripard@kernel.org>, "maarten.lankhorst@linux.intel.com"
 <maarten.lankhorst@linux.intel.com>
CC: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] drm/dumb-buffers: Increase size limits to match current
 devices
Thread-Topic: [PATCH] drm/dumb-buffers: Increase size limits to match current
 devices
Thread-Index: AQHc8mHGT4z+7DILUUGecGZYRv/barYrEqZg
Date: Tue, 2 Jun 2026 10:37:43 +0000
Message-ID: <PH3PPFAB42632359128CE02EC820D17E137E0122@PH3PPFAB4263235.namprd11.prod.outlook.com>
References: <20260602073027.192758-1-tzimmermann@suse.de>
In-Reply-To: <20260602073027.192758-1-tzimmermann@suse.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH3PPFAB4263235:EE_|MW5PR11MB5929:EE_
x-ms-office365-filtering-correlation-id: 329ece93-21e6-493e-aba1-08dec092fa57
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|1800799024|38070700021|18002099003|22082099003|56012099006|5023799004|11063799006;
x-microsoft-antispam-message-info: m3WfECDMJ0j4DP/TRiQtci3MN7rOx28wv/x5JZMLjIJdGXYgvKffFj+dhBT+omKi2uStKnx8bQ5DgbQSqz3v8G2KYBGlc2Jzmt27ZstS4//QDyl5DEp3eIifopW6EQ9vz3kpWsKLjKUQp5ILcCDzsIBUnmBof5DY+u7mKcItVHvJ4sLLWVc6KOzjF7hzjrI6i9owaIaCszIqq++si+exXb2rwG15uexbZzNxMPQ0rsAmrLwYqbYYb7c8yUyZh/SQ83qPp42FKLWINFR+jCDByjvjSU++XLkV5RN2UvGG1APxSOO6Pb+1Pgm5dCJ1keB0HAlwRDo6btSeaZZfuq4JhQRw4noCDZyDnX9zg64wFphoNdmuLV6/9ItzgvZ3UITfHeke3nxMShfWW4ONfZ2wqAj1DJJwWMVkH29KMWmWIaYpzaYeocEp65T2iCbne0Yd5SZDEV9QcaqJLmqHfeKzG83B8ZunKDUe5ZASeKIp6Yy24n2MX6J5lepfoQh94eghyv62ov9X9cOkzXy5miSP3ZnB7KLuqjGLuwKf4hiVhUBXnOPnx8i8TahRAcvTzbJ9sNcMYlDw7gwiqIcdTcY2opF0LpDUoAbFGyqBOWvwMDowbD+TQEUSZBNT21VXHvnHmwFf/MfP9fZGjHfGA7dOXHb4jS+iX/bVxO7z8MNpWxmb1QI/feyvBER4ENujqwarUWK2hQV6pNwDOv0raR4PWSyJc/tr/p2Nyl6E/jzD0nuP4bX96Zy0onixwtfyg/4E
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH3PPFAB4263235.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024)(38070700021)(18002099003)(22082099003)(56012099006)(5023799004)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZUZ4bkRSb3dLUzdZZTlWOWlVNy9CRy95alE3ODg5YllVTjRtWE5qVUdLU1lZ?=
 =?utf-8?B?SDZValdQN0grblQ2SXB5YkJmV3NpUGp3bEx5c2ptSEI2c3BEdzlieXkyU3Ni?=
 =?utf-8?B?bmx1QjNLV09hQVhrTWJ0TC9DNWZFS3A0UTNnbDBSQnk4ZC9GeGUwNVRFM0xn?=
 =?utf-8?B?Q1M1dVBkbGE0YUVPL0V4bG83SDFWVlpmUTh6KzhSSGNjYWkxL21reUZjU1N0?=
 =?utf-8?B?VDQyNkZtNHV4UWZvd1JYbnovWWNmUGpuNmpBc24yUmpHc0dodEw1c3o5a2ZU?=
 =?utf-8?B?ODh4VkxLTkhqTXlFM3VzWkxJRmdZTjBRRnJiUDdmKzJLN2tPN3ZITzd1OVFk?=
 =?utf-8?B?TlZpUm03TmxLSE51bEtkYWlFS0NRN1Z0UmQ2bmNIaTVWRzNOcEE1Myszc3p0?=
 =?utf-8?B?dm56Y3hBeFF5ZXZhVWQ1dFdRSXJHV2FPdEdlMlVpN2pQWFpBSlk0QXhYd1hr?=
 =?utf-8?B?dVpINE4yN1k1RUVDRkJ1czJVNzF5MWNkT3c1dmpBWHBYZ2kyTU1HdVhiMkhP?=
 =?utf-8?B?SXdhczVmcWZhYkk3TWpRRlB6SVpaenh1WExTZGNFTWVvMVUxV2JJMkZJS2xO?=
 =?utf-8?B?eHZnblRqb1lZZCs4d3JzUHhneStiSGZISG5STnU2M29BZ1g2b1J4YWVRMFhH?=
 =?utf-8?B?Zzg2MUw3bC8zU1E4OTI4NEFoeDlCWnRJWG1wWlg5cjVoSVdXN0tydGtKcmdl?=
 =?utf-8?B?Njc3REt1aGs0eStXcnRqOFE1ZTBiMVpTQzFTNFYwYUJ2dXFRcFM1MS9seGdQ?=
 =?utf-8?B?eHExeGsweFRuUlF3Q3RETmV1L1lER0RWZm9NVlNrUGVPZVpEY2hsM1FtOUto?=
 =?utf-8?B?b2VCWG5sdGJxL3JDOFJjZkx3TzBJT3hxWkx5Zk9DMis5TWFEZVlIREhPZ3RI?=
 =?utf-8?B?RE9jYSs5dHd2NGx5OENxazhtbDBoNTlBYnhINWN0dnB1UVBMek8veGtvbkI3?=
 =?utf-8?B?RmlkUmZkcm04SnNHazdyS0ZtUHdFdCsrZ1BXdVFTR3FLdGZpZC94OVR0dWRN?=
 =?utf-8?B?eHc3QWxHMVY1Y2R2WWxtZ3o0WlVDK1N0cW1rb2N6VkxDTEhtZGVGQWo0WTAz?=
 =?utf-8?B?aUc5ZjF2K0ZNbWhCUDc5WDM3aGhhNFh1WWJTNHlRMElONjZNNktraVNBZXEy?=
 =?utf-8?B?UXNiaUxVbnNUMWNKNldMNytSelIvQWt4SWQvWmJIUDFhamo5cnk5Mi9mVlBG?=
 =?utf-8?B?dTZZTW4zdEtrZUtyZHkxZENGcjc0dUV0U1loMXM5KytRWUx3M1pZanlkYlQr?=
 =?utf-8?B?bkQ0SktCUEEvSlR4Q0NoK1U4Q3FXcDRHNkFOQmNCcmkrWGNCU3NlWDROUHJ5?=
 =?utf-8?B?V3oyK3d0QTFkL2N1WUtlekRXS0NDTVR1RklzVzZaOGF3NWdPV0VSbFNGQkJx?=
 =?utf-8?B?citRcnZLUU5MUHRFN2dXWVdZbnZPbFlobklnUmY0RjFINXZyek1MNHJKZjVu?=
 =?utf-8?B?MzBUMEw5Y21uQmVKSHBQWHl0NGNoK0t5S1ZpaXRBQ2NpSkhjNVpBbDd3TE1q?=
 =?utf-8?B?ME1DUGN3Myt1ZmZ6T3ZRY21ZQStMRzhoa0xFcWs5Sm5YUzhiUk90T09zVGRv?=
 =?utf-8?B?SXdseVJpSU9saG0rUmxjZk42d1FNZHpwQ3dSd2pvZFIwQUxzSFVPRDNmVlJE?=
 =?utf-8?B?R2ZoMi81MFpRb0xoTjdsNnhkanpNQlBXL2psNUdiYnFIY1dDVkp1bUFNT1NS?=
 =?utf-8?B?NG1kSnU5bzhWZ1kvRmMyaHNLSFgrbkIwOVZiWTJiZE83ajhFblR4YnMvbW1j?=
 =?utf-8?B?RkhzUEpHUDFVbFZ4UUFJTjllUmIrMWhVQ3lHVWxmTi82L1VTNEtKOVdyWHQw?=
 =?utf-8?B?V2piSkFBb1E2aXhHOVg4Q2ZOZzlLblVzUTg3bkxDMWc0blJTb2ZTQlgyOTA0?=
 =?utf-8?B?MGswT1I2UG1qMCs3VXpDSjFFSzMrRGtISFJkRlMwdzUrK1g5cUhHS3AyaS9D?=
 =?utf-8?B?aWovdUw1TVlsS0NZdGJjb1RkaWhYQ0E4aFBtcjNNdlRoM2NFbEtvQ3dLd1Nv?=
 =?utf-8?B?Q3pZaHVLMUhrUml2QjMzV3B2ME5ZclE4SFNaSnpEbHdHR1RudytnSnZQdkxq?=
 =?utf-8?B?YW4wOVNQSHRwRWdtcmRQTnRPdWFJWVNiWWtaTUJjUGlscnEzZWdyMWNoWHo4?=
 =?utf-8?B?RElTcUQ4RGFDOUNFa0NaMkkrUnh4aEZFd29KSkFzZUtKQlVMM3cwWjRaOHF5?=
 =?utf-8?B?V0wxVkdmNjJJQ3QwaDdtNHRMNDZLQUVyUCt0Sml6V3BYUnZ5SFNGQnhya095?=
 =?utf-8?B?WDEwZG8yRnlsdmc3Y1lyZ3dac0kzRGV3SzJNc1hocSt4ajlucHp5RTdSV05F?=
 =?utf-8?B?Sm1uNng3WUFJek1qMEhQOHM2dXhMQXRQbEQzWFRTRjVMYmFHNjhTdz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: K+QyBtiAw2Pu8UDrv+W63CLMO5zzf5Em3qhLJnAlOnKij9ECIuLE1H3NxmrTFgxCXSfEUvGdVTeRqM+t6mHxU2aCbQoSWcDnCW9wizKTMqRxwWYANSZIYIkd4tfxD5kH4i27BxnziYN7yxVFOkb/xlB2HdAFOdN8/vegdt3GyrGP2PXd7dINqp14NGqbktwNMw6GUQh739XHbxrWs/woAB15NpBdseEf8Ye3WzK/XQxzqK4Ywhff1ZFA/tESKnYUVHfh5zPyRrFU1fwCHbEbP2HjpbR5ZU+fZ5fVGohzhAdHPsBtSyaAWUTVpF/+eJmVsr/vp6dOG51cv+xHFRI4BQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH3PPFAB4263235.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 329ece93-21e6-493e-aba1-08dec092fa57
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jun 2026 10:37:43.0846 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0neUASgayBFa5gzVpAgXx3PRcT/IN3+knAtr44gmPfJ+OjJLvPpmEy8K5e88FZZSHL+1/s5Ioz2uGBhOI7EWaQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5929
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
X-Rspamd-Queue-Id: 7E94D62CB7B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	FREEMAIL_TO(0.00)[suse.de,oss.qualcomm.com,linux.intel.com,ffwll.ch,gmail.com,kernel.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.saarinen@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

SGksIA0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBUaG9tYXMgWmltbWVy
bWFubiA8dHppbW1lcm1hbm5Ac3VzZS5kZT4NCj4gU2VudDogVHVlc2RheSwgMiBKdW5lIDIwMjYg
MTAuMzANCj4gVG86IHJhamF0Lmd1cHRhQG9zcy5xdWFsY29tbS5jb207IGphbmkubmlrdWxhQGxp
bnV4LmludGVsLmNvbTsgU2FhcmluZW4sDQo+IEphbmkgPGphbmkuc2FhcmluZW5AaW50ZWwuY29t
Pjsgc2ltb25hQGZmd2xsLmNoOyBhaXJsaWVkQGdtYWlsLmNvbTsNCj4gbXJpcGFyZEBrZXJuZWwu
b3JnOyBtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20NCj4gQ2M6IGRyaS1kZXZlbEBs
aXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGlu
dGVsLQ0KPiB4ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IFRob21hcyBaaW1tZXJtYW5uIDx0emlt
bWVybWFubkBzdXNlLmRlPg0KPiBTdWJqZWN0OiBbUEFUQ0hdIGRybS9kdW1iLWJ1ZmZlcnM6IElu
Y3JlYXNlIHNpemUgbGltaXRzIHRvIG1hdGNoIGN1cnJlbnQNCj4gZGV2aWNlcw0KPiANCj4gSW5j
cmVhc2UgdGhlIGxpbWl0cyBmb3IgZHVtYi1idWZmZXIgYXJndW1lbnRzIHRvIHNpemVzIG9mIDE2
Mzg0eDE2Mzg0IGF0IDY0DQo+IGJwcC4gU3VjaCBidWZmZXIgc2l6ZXMgYXJlIHN0aWxsIHdpdGhp
biAzMi1iaXQgdW5zaWduZWQgbGltaXRzLg0KPiBGaXhlcyBDSSBhbmQgaGlnaC1lbmQgZGV2aWNl
cy4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBz
dXNlLmRlPg0KPiBGaXhlczogNWFiNjJkZDM2ODdiICgiZHJtOiBwcmV2ZW50IGludGVnZXIgb3Zl
cmZsb3dzIGluIGR1bWIgYnVmZmVyDQo+IGNyZWF0aW9uIGhlbHBlcnMiKQ0KPiBSZXBvcnRlZC1i
eTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT4NCj4gQ2xvc2VzOiBo
dHRwczovL2xvcmUua2VybmVsLm9yZy9kcmktDQo+IGRldmVsL2RkZjAyMzNlNTAwNDQwNTljODUy
NzlmOTI4NjYxNTYzZWY2YTU1YmZAaW50ZWwuY29tLw0KDQpTZWVtcyBub3QgaGVscGluZyBvbiBp
OTE1IENJIEJBVCBpc3N1ZSBodHRwczovL2xvcmUua2VybmVsLm9yZy9pbnRlbC1nZngvMTc4MDM4
OTUxMDYzLjM0MjkwLjM3OTY4NzUxMDkzNDI1OTgwMjhANmJlZWM2Yzg0ZjY2L1QvI3UgDQo9PiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNjc3MTl2
MS9pbmRleC5odG1sPw0KDQo+IENjOiBSYWphdCBHdXB0YSA8cmFqYXQuZ3VwdGFAb3NzLnF1YWxj
b21tLmNvbT4NCj4gQ2M6IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPg0K
PiBDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNv
bT4NCj4gQ2M6IE1heGltZSBSaXBhcmQgPG1yaXBhcmRAa2VybmVsLm9yZz4NCg0KQnIsDQpKYW5p
DQoNCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vZHJtX2R1bWJfYnVmZmVycy5jIHwgOSArKysr
Ky0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0p
DQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9kdW1iX2J1ZmZlcnMuYw0K
PiBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZHVtYl9idWZmZXJzLmMNCj4gaW5kZXggZTYwMTMwYjJi
YjBjLi45YzRjZmIzMjEwYWEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZHVt
Yl9idWZmZXJzLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9kdW1iX2J1ZmZlcnMuYw0K
PiBAQCAtMjAxLDExICsyMDEsMTIgQEAgaW50IGRybV9tb2RlX2NyZWF0ZV9kdW1iKHN0cnVjdCBk
cm1fZGV2aWNlDQo+ICpkZXYsDQo+ICAJaWYgKCFhcmdzLT53aWR0aCB8fCAhYXJncy0+aGVpZ2h0
IHx8ICFhcmdzLT5icHApDQo+ICAJCXJldHVybiAtRUlOVkFMOw0KPiANCj4gLQkvKiBSZWplY3Qg
dW5yZWFzb25hYmxlIGlucHV0cyBlYXJseS4gIER1bWIgYnVmZmVycyBhcmUgZm9yIHNvZnR3YXJl
DQo+IC0JICogcmVuZGVyaW5nOyBub3RoaW5nIGxlZ2l0aW1hdGUgbmVlZHMgbW9yZSB0aGFuIDgx
OTJ4ODE5MiBhdA0KPiAzMmJwcC4NCj4gLQkgKiBUaGlzIHByZXZlbnRzIG92ZXJmbG93cyBpbiBk
b3duc3RyZWFtIGFsaWdubWVudCBoZWxwZXJzLg0KPiArCS8qDQo+ICsJICogUmVqZWN0IHVucmVh
c29uYWJsZSBpbnB1dHMgZWFybHkuIER1bWIgYnVmZmVycyBhcmUgZm9yIHNvZnR3YXJlDQo+ICsJ
ICogcmVuZGVyaW5nOyBub3RoaW5nIGxlZ2l0aW1hdGUgbmVlZHMgbW9yZSB0aGFuIDE2Mzg0eDE2
Mzg0IGF0DQo+ICsJICogNjQgYnBwLiBUaGlzIHByZXZlbnRzIG92ZXJmbG93cyBpbiBkb3duc3Ry
ZWFtIGFsaWdubWVudCBoZWxwZXJzLg0KPiAgCSAqLw0KPiAtCWlmIChhcmdzLT53aWR0aCA+PSA4
MTkyIHx8IGFyZ3MtPmhlaWdodCA+PSA4MTkyIHx8IGFyZ3MtPmJwcCA+IDMyKQ0KPiArCWlmIChh
cmdzLT53aWR0aCA+IDE2Mzg0IHx8IGFyZ3MtPmhlaWdodCA+IDE2Mzg0IHx8IGFyZ3MtPmJwcCA+
IDY0KQ0KPiAgCQlyZXR1cm4gLUVJTlZBTDsNCj4gDQo+ICAJLyogb3ZlcmZsb3cgY2hlY2tzIGZv
ciAzMmJpdCBzaXplIGNhbGN1bGF0aW9ucyAqLw0KPiANCj4gYmFzZS1jb21taXQ6IGE5ODAxOTY2
NTU0NzdhOGY1MDY3MTEyOTQ2NDAxZmU1MmU1MTA2NjQNCj4gLS0NCj4gMi41NC4wDQoNCg==
