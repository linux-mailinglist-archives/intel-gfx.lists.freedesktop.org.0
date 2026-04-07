Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qMMeG53g1GmsyQcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 12:46:53 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77A2E3AD26E
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 12:46:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89CAF10E3CA;
	Tue,  7 Apr 2026 10:46:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="geF4qGYQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A36110E3CA;
 Tue,  7 Apr 2026 10:46:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775558806; x=1807094806;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=eiwc/gZmiqI1kv96RmdILQn4Q5c+QbImx2oEqGwm2Q0=;
 b=geF4qGYQAMBjUfNap9h9XVyrLyvzwvHRDjyqad/3Wt67aZUgdI6LPdCR
 DPn3qB27vPq9wYGIk/M7MO/6TZmV80NA+AOvuR0xMjEWcwaHNN3wFHSnT
 MHYH72GlTpObi9Y8G4DvJ6Z1W8IlZmfUg/8KiE/h81A+EPJRnFNxoQhLP
 cXPoUDsR0fGrb0o4GXFxDHnZoBvvXWzMAvbgrFTcuv0hV7iC1b9bL94Qg
 31S3ZwLSFwFNFDinkRW/3BjCcAkDYJiV0Rl47SlE+nq/4/lLWpMRXJ1iB
 GEqBr+ZJYl//D9Zv7OwQ9b0iLS2o+ZRNhsWbSzovlVDCIZoJvQVmYK6Aw w==;
X-CSE-ConnectionGUID: gbWgYQ/eTqqDukQtYruvsg==
X-CSE-MsgGUID: UahqHxZRTcOQ+0QMI3seag==
X-IronPort-AV: E=McAfee;i="6800,10657,11751"; a="76590720"
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="76590720"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 03:46:46 -0700
X-CSE-ConnectionGUID: ZULqcqB4QdCWy8DcuAss6w==
X-CSE-MsgGUID: sg928D2BSaq/Nyrcx5UGMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="251273621"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 03:46:45 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 7 Apr 2026 03:46:44 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 7 Apr 2026 03:46:44 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.46)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 7 Apr 2026 03:46:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=l8b0qHR/07qqm7n4lBIi2tDkP76H4Ftk/BaFMKvxZ3jV3XfhP94dLE2Mi9FfisB1whN8I13j0bdPglZAoFDB35e2orCXjdXNE7eJIkWjJ5Vl99Cwttn7wAcME3OrqzjoKV45Njr1NW2ncUc9AhZ8JaMAwxi+I8PXxJlYiYRudNY9zMK28zhaBWOe1Hv1B7hf1qT7JnhktHEoorRmSkwY2Xh/04W/8f6mQRjn64R6ROc82Z+2BunRasEvZJo1DYCXMQtBuFv9I+R1hfhPSofUagvjRvtMezURQKe2Z6zNRpjaGpJwKEaKk7MqD18+NNLsy7+YImc6sfT87yCk5d10eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eiwc/gZmiqI1kv96RmdILQn4Q5c+QbImx2oEqGwm2Q0=;
 b=od/7YdoY1wHfacXgjqU5I/GClnH0LXkuQHy9nAPzMeHGNnrUaE3N5p5HfXiSRcjztpSjzP6QHJqNC8O7zzVqaWAoEtGrqZqv3botqmfNK/J8kNFYO+v7zoYEpnuPpinl2SjgFQ2OAu/UjJRDPhTFWje+XSl1FgLzyAc49nd1Jiu8i2leDeWQ1Q3FKNhSkklKIIaeCVBnpLjEQZmzo1IvIqxrKfrUpjtOJ2ZIlyK2QkG/ff48YpQAQdiA3k4PmqOrILNtPzmGX+8GPKuEoH8g1fUYNTE3vhbTKtX4raNZHL/mF+DpUOmZNcvLgSYA70fAZXsk+ktdIrIq8l95jWDBxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 SJ2PR11MB7520.namprd11.prod.outlook.com (2603:10b6:a03:4c2::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.20; Tue, 7 Apr
 2026 10:46:41 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%6]) with mapi id 15.20.9769.014; Tue, 7 Apr 2026
 10:46:41 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Maarten Lankhorst <dev@lankhorst.se>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "dri-devel@lists.freedesktop.org"
 <dri-devel@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>, "Deak, Imre"
 <imre.deak@intel.com>
Subject: RE: [PATCH v10 1/3] drm/display: Add drm helper to check pr
 optimization support
Thread-Topic: [PATCH v10 1/3] drm/display: Add drm helper to check pr
 optimization support
Thread-Index: AQHcwE5yG2+xaekB/Eek8338deMxkbXL9tSAgAd/hqA=
Date: Tue, 7 Apr 2026 10:46:41 +0000
Message-ID: <DS0PR11MB8049DD8F38B284305F54F5AAF95AA@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260330133620.3750559-1-animesh.manna@intel.com>
 <20260330133620.3750559-2-animesh.manna@intel.com>
 <59096db1-aac5-4b3c-9689-43fbc29c5911@lankhorst.se>
In-Reply-To: <59096db1-aac5-4b3c-9689-43fbc29c5911@lankhorst.se>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|SJ2PR11MB7520:EE_
x-ms-office365-filtering-correlation-id: 1b613747-633c-4854-4f9c-08de9492f447
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: b0242dQR8tYEdGoGBy0xCwy9Dmc2sZhIBjh7ituMxCDa6KZ95t/qYmL+OSquINNry+WSgusKiXkACnM99Ho6DRyZ7RCscx91spW9kC8ce1ki1y/9yfwyf1LbnNs1zYQwZaZ4D6qJ7WG34dOU1gksP8NVGhd/w/md/njxVW5SHxHUp7It3xCnisKZOiLOfo4lXKyPwCU3IBa3kUfLctRZMuDTgMpoj4YOgMimFiGmdx/qJxhkThxB5wQNEAdQ7wUU0KSWNR7PXM2PT9wC/OKt/XDXVaPcaALBBCwoqYev/v4jaZ5pAgVzEeliOcIG5o0/FURHkM9YQa/5j/MdusWl8Dz4f/OYBUaaag8AGyLaJ+Gw3tKAO6EANl4bTMhpqKaBOClu65ggQsoZIbYyy7ps9xs6AH2Hfud603lQ8sV5LxLXuiLU/IQe91yPkl1L5QDjsjpNNNf67n7rXmwvev0Z5I4eC6N/uIM8ZoVnM6V0C7HNtGDQUXXxTfuIsZjePsGnT7tKf+TtfZvx7DChlRD5983tcVSO+DPtxBkiIGFMmRgvBu5iKedLOXVXEMLfVAle3t7gE3j4lkmKO/FJFL6qOHBF4qmCKEqFdb/9Nr0e9phP2cFNqjcOgS0zJjPifx3HkLPB2w9+6H1XQVNplwFjCuqd9mBi549d+Rw5muBnlbuxzLkzpyyVQaErsAVmciDhTFOihekcAp9AWBz8UG7dQSAtXzZEL/sR7Az/ZKLRg7ylhTn2rHNJOYWqJib5WRJgPMgOnDugSfdn0NrKKn9h7HcRJ/Ip6ubEizLScfdLj9o=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QTdobmVraG9mQ2FSQjBjWjJkODhvK2R0N0Q2R01Qclh4bXFCTUNQK1RJb0RH?=
 =?utf-8?B?bUdST0UwTXRzOUdLRk91a2gzbkFDczdpdVpwV2hzUVZmT1QxNWZqd0Q5aEE1?=
 =?utf-8?B?eTVIMEJDSWF5UlFkVW55Y0dKNTg3dndYTGRLR25CUTZjaHZYck1NeG5wZ1RX?=
 =?utf-8?B?TzdUSUUvQnEycU91NjE4MmdKR1R6Wm9EeHdSZVJRRS8waWxDZ2VjSUJUcjR1?=
 =?utf-8?B?WHRvVCsvbDNYMmZObG5nbHNqK1hpT2t3K0FEY2NydVBwb0FUUlJTN1E3VTdu?=
 =?utf-8?B?TVhnYlZQOWExRWRjaS9sRlVXWHZoV2FZUWg4V3A4QnhqSzFwZHBIWFhpSVQ0?=
 =?utf-8?B?alk3TU40a0NqNXpBMTNHcUtnZ200cDRPM0JnK2k4alFFMzE4bVo0dG5Fd2FU?=
 =?utf-8?B?Qlg2ZHBveGduaTJtc3AxQzR5eC9ndHh2aGtndzU5SDBJNmQ4dmZuQ0ZUQzht?=
 =?utf-8?B?ZWNOY3RhVzBrTUhsU0NsVnZyaEp1cHRHdmp6VFFKbnlROVhjNHZMQW41ZGZZ?=
 =?utf-8?B?ZDkxOVNVWlVKc3lnVndhRzJnODBiS3l3VnMvU09aTVR2VmZEdHI5QUxhY1Vi?=
 =?utf-8?B?WHFJOTI1bjhMMUo1NjFuVVNjUWdkTlhHeUR6cGZWZTg5aHFmR3lBU09pazBK?=
 =?utf-8?B?MFRpTVdmUFBiNER2T0F5MW5YLzhXYkEzdGFoMzcxdHJRenhVRVZQRTNQYVFr?=
 =?utf-8?B?RlJlZksyakIwYW5kRW1aSk5WK1FWWlZEd01RcjhyUnYvNUNHZ014VkVreDhV?=
 =?utf-8?B?emFpNzdreStPZ0tKZUtlSHdxa3NxZ0Z1aGNvZVZ4dXY2ckJuY3Y5NWdQTlhZ?=
 =?utf-8?B?UkF5N1NodFBpYjZqaXgybmFrK2hWeE5Zb01USHlES0lkaFhRd3E4Y2tPZWUr?=
 =?utf-8?B?UmFwN2V2emovUWFNM3hTMlFkUkdZSnZRTWVDM21qZDJoNHorUFgzMkNmYzlT?=
 =?utf-8?B?azJCMHYvdFVqalgyQnRKbloyWERoSDZaZzJUSnZXNHgrWUh0OUxXcldTNWdk?=
 =?utf-8?B?czl5MExWMTJHbE9OYVFTTEZOTXpkUWNNNHNGZW1jeTQ2ZE5uWU1GbDlRUnh1?=
 =?utf-8?B?TVZsUUNBMzlmWWFabjgrUG9IdThROWp0U1NZSHdxN3ZQWDdwZmRlKzRhVGl6?=
 =?utf-8?B?c0U5aHlPVldoNGJCa0gzV0doVnJjblVIbXhkTGdJb2RvcGFTUG1td1dNYUt1?=
 =?utf-8?B?Z21tQjFScXdMM0VCQ2taL1RjTWc1RlIxYjNPNEllQWpjRCsxYnlTdStyQ0ho?=
 =?utf-8?B?L3l3MmJBREcyV0VNTWU5YlFSV09MVlpvY28wYjBYcjREQ1F6NGVla0ZDK1Ey?=
 =?utf-8?B?UkplSE9wSElCbXhyVnlnZmpRSnFRbENjd29ybk1NaDJmYmdFcE9ZeGt1VGhP?=
 =?utf-8?B?MEErbXVOVlJmcHVaK1I1eDN0VXhRRXhxOStzNmVuUnFBU2l0cVU0a25wN1h6?=
 =?utf-8?B?d25zeld3UTN6WVF4UFMrNTB3dS9pMFRuTEh6STNMWDUyTnA5Z2NMVnRucWZP?=
 =?utf-8?B?U2lvcU9TRThDUXkySUZlQkgyZFA1NjFEZzlta09aVlEwWEs3dXpqd2ZVNTFi?=
 =?utf-8?B?amxjMTAwMTBEMWJBb2o3aWsrWUNpWWF1UjNiRHdyL09waXJ4enRWcHhqeTJ1?=
 =?utf-8?B?UFQzUHFkQkg5VTg2VW1ycG1vTWVlOUxZTGU3U2F5NzlGcElIK1BubkhVMlhE?=
 =?utf-8?B?VXo5K0cxeEFXU0YzTk0xcXBHY1ZCQ3N2bk5MZXRUclJzaXlpNVRUelRnaXZH?=
 =?utf-8?B?cVovNkR0TXpxQmoxN2x1RlhVNDF1cU9hWGFiQzU0NGhjZDF5NkxTdFcrVFJn?=
 =?utf-8?B?Q0h5MVcxWStEUFptKzZMUEl1NjJhK2FYVmV5TjM1KzJUd1ZzZWIwYUVoWEM1?=
 =?utf-8?B?cFg4TlAyTUg0OFhPQ1ZVclhiMm9FV1Y3cUNzZXRXRTRGckU2UlNOU2Z0NE5J?=
 =?utf-8?B?WmE2QW5tNDhQM3drVFBlTExJSDdVcDVVQk5jYkg2OXBBdlVYTGg1VlAyNDdT?=
 =?utf-8?B?UXVHUjY4S01GTFUyVy92WkE2ajVkdXU3QThaaWVLNDRKT1R0bzgrSGRxelRY?=
 =?utf-8?B?REYxTG9YUU5WK1lqVkdrdGhybzZvbFlHTGNiUG5OM2Fzb1J5UmwxaDdXcUZN?=
 =?utf-8?B?YnB1MVgvOUVDWFMzSHoxWG5SME43NWJLTHdnc3loT3hjbFFSUlJQMDJTb1dN?=
 =?utf-8?B?N1VRUlVwaklMZ0dualNCT09GRk9JMjN0NWk0RGh1Tm9DS2NCOVNJT2xLRGl2?=
 =?utf-8?B?alNVYkZqMmFyRU5JRlhIeG0yeHNkTGJJM3Z3MWlVUzVOSkNCaU9GM0k1a1Zh?=
 =?utf-8?B?T2pWMHdOOEJXRE9LYllCODR3eHhkVnRSV2lYWnJaelFyRXdRSmtjQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: L5TE3vJp8/rN3saH+GDBKh/b49aghjxibO6+FvlWAJnotG7W2x7ZArmmbj19I1584/P8DkOJpHtAW7OCLptm2SiHLlThtSXStDdAx7np2El0lZQwc90fKcMZhLKNz3DgQVfvcyzFDQVZqduqmNJEm65oeSK03uHhChPKhbD4bdSPlea0z3pAAzvPVHqUHq/+1pKVqh3l0FUYAZ9jaoROmPc/JUbs90G8mNCYSeoCqkg+Yp8Q3Bz4pN+2BxZIo8/Fz2AynKPTPXkPLRu0VL1k+cK2G+1mNki9nriBRB/N5gk0qsxi7TqyKxiSn5UNQw3pd1XBilWU7Rk2q5iifQepDg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b613747-633c-4854-4f9c-08de9492f447
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Apr 2026 10:46:41.7059 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: M0iyncjTFWx0IIjOSug969DAEBeHzD7dXd/ZFK4PQDchGMWsWMQPjT9O1E4xAZL2VG0UYqSzeZ2J20yiGhcwng==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7520
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
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,lists.freedesktop.org:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DS0PR11MB8049.namprd11.prod.outlook.com:mid];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 77A2E3AD26E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTWFhcnRlbiBMYW5raG9y
c3QgPGRldkBsYW5raG9yc3Quc2U+DQo+IFNlbnQ6IFRodXJzZGF5LCBBcHJpbCAyLCAyMDI2IDk6
NDQgUE0NCj4gVG86IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IGlu
dGVsLQ0KPiBnZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVz
a3RvcC5vcmc7IGRyaS0NCj4gZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBIb2dh
bmRlciwgSm91bmkgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT47IERlYWssIEltcmUNCj4gPGlt
cmUuZGVha0BpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjEwIDEvM10gZHJtL2Rp
c3BsYXk6IEFkZCBkcm0gaGVscGVyIHRvIGNoZWNrIHByDQo+IG9wdGltaXphdGlvbiBzdXBwb3J0
DQo+IA0KPiBIZXksDQo+IA0KPiBEZW4gMjAyNi0wMy0zMCBrbC4gMTU6MzYsIHNrcmV2IEFuaW1l
c2ggTWFubmE6DQo+ID4gQWRkIGFwaSB0byBjaGVjayBwYW5lbCByZXBsYXkgb3B0aW1pemF0aW9u
IHN1cHBvcnRlZCBvciBub3QgdG8NCj4gPiBkcm0tY29yZSBEUCB0dW5uZWxpbmcgZnJhbWV3b3Jr
IHdoaWNoIGNhbiBiZSB1c2VkIGJ5IG90aGVyIGRyaXZlciBhcw0KPiA+IHdlbGwuDQo+ID4NCj4g
PiB2MjogU3BsaXQgZ2VuZXJpYyBkcm0gY2hhbmdlcyBmcm9tIEludGVsIHNwZWNpZmljIGNoYW5n
ZXMuIFtKb3VuaV0NCj4gPg0KPiA+IFJldmlld2VkLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5p
LmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gPiBTdWdnZXN0ZWQtYnk6IEltcmUgRGVhayA8aW1yZS5k
ZWFrQGludGVsLmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNo
Lm1hbm5hQGludGVsLmNvbT4NCj4gQWNrZWQtYnk6IE1hYXJ0ZW4gTGFua2hvcnN0IDxkZXZAbGFu
a2hvcnN0LnNlPg0KDQpUaGFua3MgZXZlcnlvbmUgd2hvIGhlbHBlZCBpbiBjb2RlIHJldmlldywg
UGF0Y2hlcyBhcmUgbm93IHB1c2hlZCBpbiBkaW4uDQoNClJlZ2FyZHMsDQpBbmltZXNoDQoNCj4g
DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9kaXNwbGF5L2RybV9kcF90dW5uZWwuYyB8
IDE3ICsrKysrKysrKysrKysrKysrDQo+ID4gIGluY2x1ZGUvZHJtL2Rpc3BsYXkvZHJtX2RwX3R1
bm5lbC5oICAgICB8ICA2ICsrKysrKw0KPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDIzIGluc2VydGlv
bnMoKykNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZGlzcGxheS9kcm1f
ZHBfdHVubmVsLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9kaXNwbGF5L2RybV9kcF90dW5uZWwu
Yw0KPiA+IGluZGV4IDY1MTliNDI0NDcyOC4uMDhkYzVkMjZiMmM1IDEwMDY0NA0KPiA+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9kaXNwbGF5L2RybV9kcF90dW5uZWwuYw0KPiA+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9kaXNwbGF5L2RybV9kcF90dW5uZWwuYw0KPiA+IEBAIC0xNDksNiArMTQ5LDcg
QEAgc3RydWN0IGRybV9kcF90dW5uZWwgew0KPiA+ICAJYm9vbCBid19hbGxvY19lbmFibGVkOjE7
DQo+ID4gIAlib29sIGhhc19pb19lcnJvcjoxOw0KPiA+ICAJYm9vbCBkZXN0cm95ZWQ6MTsNCj4g
PiArCWJvb2wgcHJfb3B0aW1pemF0aW9uX3N1cHBvcnQ6MTsNCj4gPiAgfTsNCj4gPg0KPiA+ICBz
dHJ1Y3QgZHJtX2RwX3R1bm5lbF9ncm91cF9zdGF0ZTsNCj4gPiBAQCAtNTA4LDYgKzUwOSw4IEBA
IGNyZWF0ZV90dW5uZWwoc3RydWN0IGRybV9kcF90dW5uZWxfbWdyICptZ3IsDQo+ID4NCj4gPiAg
CXR1bm5lbC0+YndfYWxsb2Nfc3VwcG9ydGVkID0NCj4gdHVubmVsX3JlZ19id19hbGxvY19zdXBw
b3J0ZWQocmVncyk7DQo+ID4gIAl0dW5uZWwtPmJ3X2FsbG9jX2VuYWJsZWQgPSB0dW5uZWxfcmVn
X2J3X2FsbG9jX2VuYWJsZWQocmVncyk7DQo+ID4gKwl0dW5uZWwtPnByX29wdGltaXphdGlvbl9z
dXBwb3J0ID0gdHVubmVsX3JlZyhyZWdzLA0KPiBEUF9UVU5ORUxJTkdfQ0FQQUJJTElUSUVTKSAm
DQo+ID4gKw0KPiBEUF9QQU5FTF9SRVBMQVlfT1BUSU1JWkFUSU9OX1NVUFBPUlQ7DQo+ID4NCj4g
PiAgCWlmICghYWRkX3R1bm5lbF90b19ncm91cChtZ3IsIGRydl9ncm91cF9pZCwgdHVubmVsKSkg
ew0KPiA+ICAJCWtmcmVlKHR1bm5lbCk7DQo+ID4gQEAgLTEwMzYsNiArMTAzOSwyMCBAQCBib29s
DQo+IGRybV9kcF90dW5uZWxfYndfYWxsb2NfaXNfZW5hYmxlZChjb25zdA0KPiA+IHN0cnVjdCBk
cm1fZHBfdHVubmVsICp0dW5uZWwpICB9DQo+ID4gRVhQT1JUX1NZTUJPTChkcm1fZHBfdHVubmVs
X2J3X2FsbG9jX2lzX2VuYWJsZWQpOw0KPiA+DQo+ID4gKy8qKg0KPiA+ICsgKiBkcm1fZHBfdHVu
bmVsX3ByX29wdGltaXphdGlvbl9zdXBwb3J0ZWQgLSBRdWVyeSB0aGUgUFIgQlcNCj4gPiArb3B0
aW1pemF0aW9uIHN1cHBvcnQNCj4gPiArICogQHR1bm5lbDogVHVubmVsIG9iamVjdA0KPiA+ICsg
Kg0KPiA+ICsgKiBRdWVyeSBpZiB0aGUgUFIgQlcgb3B0aW1pemF0aW9uIGlzIHN1cHBvcnRlZCBm
b3IgQHR1bm5lbC4NCj4gPiArICoNCj4gPiArICogUmV0dXJucyAldHJ1ZSBpZiB0aGUgUFIgQlcg
b3B0aW1pYXRpb24gaXMgc3VwcG9ydGVkIGZvciBAdHVubmVsLg0KPiA+ICsgKi8NCj4gPiArYm9v
bCBkcm1fZHBfdHVubmVsX3ByX29wdGltaXphdGlvbl9zdXBwb3J0ZWQoY29uc3Qgc3RydWN0DQo+
ID4gK2RybV9kcF90dW5uZWwgKnR1bm5lbCkgew0KPiA+ICsJcmV0dXJuIHR1bm5lbCAmJiB0dW5u
ZWwtPnByX29wdGltaXphdGlvbl9zdXBwb3J0OyB9DQo+ID4gK0VYUE9SVF9TWU1CT0woZHJtX2Rw
X3R1bm5lbF9wcl9vcHRpbWl6YXRpb25fc3VwcG9ydGVkKTsNCj4gPiArDQo+ID4gIHN0YXRpYyBp
bnQgY2xlYXJfYndfcmVxX3N0YXRlKHN0cnVjdCBkcm1fZHBfYXV4ICphdXgpICB7DQo+ID4gIAl1
OCBid19yZXFfbWFzayA9IERQX0JXX1JFUVVFU1RfU1VDQ0VFREVEIHwNCj4gRFBfQldfUkVRVUVT
VF9GQUlMRUQ7DQo+ID4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2Rpc3BsYXkvZHJtX2RwX3R1
bm5lbC5oDQo+ID4gYi9pbmNsdWRlL2RybS9kaXNwbGF5L2RybV9kcF90dW5uZWwuaA0KPiA+IGlu
ZGV4IDg3MjEyYzg0NzkxNS4uNGFhM2NlOWZkODI5IDEwMDY0NA0KPiA+IC0tLSBhL2luY2x1ZGUv
ZHJtL2Rpc3BsYXkvZHJtX2RwX3R1bm5lbC5oDQo+ID4gKysrIGIvaW5jbHVkZS9kcm0vZGlzcGxh
eS9kcm1fZHBfdHVubmVsLmgNCj4gPiBAQCAtNTMsNiArNTMsNyBAQCBpbnQgZHJtX2RwX3R1bm5l
bF9kZXN0cm95KHN0cnVjdCBkcm1fZHBfdHVubmVsDQo+ID4gKnR1bm5lbCk7ICBpbnQgZHJtX2Rw
X3R1bm5lbF9lbmFibGVfYndfYWxsb2Moc3RydWN0IGRybV9kcF90dW5uZWwNCj4gPiAqdHVubmVs
KTsgIGludCBkcm1fZHBfdHVubmVsX2Rpc2FibGVfYndfYWxsb2Moc3RydWN0IGRybV9kcF90dW5u
ZWwNCj4gPiAqdHVubmVsKTsgIGJvb2wgZHJtX2RwX3R1bm5lbF9id19hbGxvY19pc19lbmFibGVk
KGNvbnN0IHN0cnVjdA0KPiA+IGRybV9kcF90dW5uZWwgKnR1bm5lbCk7DQo+ID4gK2Jvb2wgZHJt
X2RwX3R1bm5lbF9wcl9vcHRpbWl6YXRpb25fc3VwcG9ydGVkKGNvbnN0IHN0cnVjdA0KPiA+ICtk
cm1fZHBfdHVubmVsICp0dW5uZWwpOw0KPiA+ICBpbnQgZHJtX2RwX3R1bm5lbF9hbGxvY19idyhz
dHJ1Y3QgZHJtX2RwX3R1bm5lbCAqdHVubmVsLCBpbnQgYncpOw0KPiA+IGludCBkcm1fZHBfdHVu
bmVsX2dldF9hbGxvY2F0ZWRfYncoc3RydWN0IGRybV9kcF90dW5uZWwgKnR1bm5lbCk7ICBpbnQN
Cj4gPiBkcm1fZHBfdHVubmVsX3VwZGF0ZV9zdGF0ZShzdHJ1Y3QgZHJtX2RwX3R1bm5lbCAqdHVu
bmVsKTsgQEAgLTE0MCw2DQo+ID4gKzE0MSwxMSBAQCBzdGF0aWMgaW5saW5lIGJvb2wgZHJtX2Rw
X3R1bm5lbF9id19hbGxvY19pc19lbmFibGVkKGNvbnN0DQo+IHN0cnVjdCBkcm1fZHBfdHVubmVs
DQo+ID4gIAlyZXR1cm4gZmFsc2U7DQo+ID4gIH0NCj4gPg0KPiA+ICtzdGF0aWMgaW5saW5lIGJv
b2wgZHJtX2RwX3R1bm5lbF9wcl9vcHRpbWl6YXRpb25fc3VwcG9ydGVkKGNvbnN0DQo+ID4gK3N0
cnVjdCBkcm1fZHBfdHVubmVsICp0dW5uZWwpIHsNCj4gPiArCXJldHVybiBmYWxzZTsNCj4gPiAr
fQ0KPiA+ICsNCj4gPiAgc3RhdGljIGlubGluZSBpbnQNCj4gPiAgZHJtX2RwX3R1bm5lbF9hbGxv
Y19idyhzdHJ1Y3QgZHJtX2RwX3R1bm5lbCAqdHVubmVsLCBpbnQgYncpICB7DQoNCg==
