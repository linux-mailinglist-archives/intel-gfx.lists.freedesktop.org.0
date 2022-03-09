Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97CBD4D2DD5
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Mar 2022 12:19:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2EDB10E426;
	Wed,  9 Mar 2022 11:19:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3504B10E426
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Mar 2022 11:19:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646824767; x=1678360767;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uP+puJGz5/UQnqcZugofV9peSyQVVYjI4Gga5q5/OaA=;
 b=CtXcjeTOXtJHwZ1EicZGdC0ipmTsjymlQyZ6Gkow6UBBnk3A5dODxXLb
 yugsGZTjKrFPaLOHmgdP9p/H29WWdX1y14oxeNga15lkosjTsgIVw8v2+
 GrptEk9Yw83HjdP95hNfZMUKwQCZT62SDr61VtFwmvhFp/U2OAgy7eEft
 bUrluXj3g1kvrnVRdE+QVdbco8lNxFyT+kQF1f9Q5Hj3IvgkebnFvf+Ul
 wdcDEMPrFyc9k4FdaD/LIjGVNwDULu16PGeELy7ghla4VZOoMIOUDEz4r
 8aVxa7nlhrTuBGxLJgoiNxWFyM/MKhoHvqRO/6ZtaYHRaoGhpP+9KU5hw A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10280"; a="279677431"
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="279677431"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 03:19:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="495806508"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga003.jf.intel.com with ESMTP; 09 Mar 2022 03:19:26 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 9 Mar 2022 03:19:25 -0800
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 9 Mar 2022 03:19:24 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Wed, 9 Mar 2022 03:19:24 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.46) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Wed, 9 Mar 2022 03:19:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ihbgCxXv9HWj16Mr/L79S4Bc1kAqI2OGune04KWwz7zCULX0Ojeu8lh7iD2mZZUxvQT3BKqHSSgKtp/SfdLUTQyQCq3U8intldqoEwnxwa4LS/T49+x9v1A873ZitAm5/uLzzmoZbZuuerlzd86f/a1KeDIVRPHX0vOngtnH/5lrwCysR6I9tFk14CSv6DnwWx2wt+EIDbpk4DcJUx2Gi/isC+jGHnbfPot98c9VF+fr8tGNwanCSgeq7qbQNJNpEum2YCM8kBMDo2G5tSSjkacQY+YRpairsme7JgcRMVdYJL8O3MWrdz5IDlmhSJ6HIdt4rNjzWJx5PqjB7KXZFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uP+puJGz5/UQnqcZugofV9peSyQVVYjI4Gga5q5/OaA=;
 b=fOI+tbvTSMsMGu9puIoFw0oC8nIOLLGF6Pywxv0AyFFE1eb9YdU0JFW3bgqalt2v/m75yFkG7Ij3/TJ3Pitt8aQKWpnm22u774bUQpvhEdQqn5nBRjUMtGW8HL/+9pzMykRTj9/c1cV752trMT3gNgKxh3XmuF+OyJnfikhfs6rgEnu+ph7JpgEWmOznMr3JEcPXyVii7hngxX1sr6VIAGDJW+8xXUPdvEaGHqf/qTrP9dURZcNasEJ6sDbPPRaWKYcrEI2smxywiWbodxFxMpBP/NVV7jfFlEmTBiJHac5Ae/fyd1uEhXwBMDvwqaA9R9bFwIOAM5x8DGtqs+iNsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5290.namprd11.prod.outlook.com (2603:10b6:408:137::5)
 by BL1PR11MB5333.namprd11.prod.outlook.com (2603:10b6:208:309::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.29; Wed, 9 Mar
 2022 11:19:18 +0000
Received: from BN9PR11MB5290.namprd11.prod.outlook.com
 ([fe80::5cb2:8b85:7945:64c]) by BN9PR11MB5290.namprd11.prod.outlook.com
 ([fe80::5cb2:8b85:7945:64c%5]) with mapi id 15.20.5038.027; Wed, 9 Mar 2022
 11:19:18 +0000
From: "Katragadda, MastanX" <mastanx.katragadda@intel.com>
To: "Auld, Matthew" <matthew.auld@intel.com>, Tvrtko Ursulin
 <tvrtko.ursulin@linux.intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [v2] drm/i915/gem: missing boundary check in
 vm_access leads to OOB read/write
Thread-Index: AQHYLsSP/ejgBQQqOkGNOJS9LQ2Ql6ytXLYAgAAc0YCACNZVIIAAoSGA
Date: Wed, 9 Mar 2022 11:19:17 +0000
Message-ID: <BN9PR11MB52907A11A35628AD277F8D27970A9@BN9PR11MB5290.namprd11.prod.outlook.com>
References: <20220303060428.1668844-1-mastanx.katragadda@intel.com>
 <1715f90c-6790-cbd7-9e8f-ac371d61b5dd@linux.intel.com>
 <0b84c114-35a1-3a0b-1ef5-80cdb79f1f92@intel.com>
 <BN9PR11MB52901044F528E28982D92C04970A9@BN9PR11MB5290.namprd11.prod.outlook.com>
In-Reply-To: <BN9PR11MB52901044F528E28982D92C04970A9@BN9PR11MB5290.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.401.20
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9cbfa28d-a9f2-4e4b-b43a-08da01bea6ce
x-ms-traffictypediagnostic: BL1PR11MB5333:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BL1PR11MB53333931AF9AFE3902EDCE96970A9@BL1PR11MB5333.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jQFfXWfsuVyLKTE6+R1Bc80hM4iRFtLfg8rQErHTOUZ3KdomAJJLUlEx99DV8xJ6aDZ1e3FIEzMwiJstRuwoChHTAy3G+OQBPqMHWhus/JarMA68puQ1xXPSU/chxIjoSLh2LB50NvKvkJPv+ucQaZCDzFJhSMsn+EsLGfqkBAn1p4rQ/2bwYVyrPiyrqDnyItIqjyclh2NjtSAi7BrOb5e8kjKo6yWUF7sj/MrqK9LvngJEcLujQGChiGRBZJ1+IylvotxQdFFhQ0m++3DO13Kg/l52db3dRCl85S4fUpnriokAtBt7A/M9hEEb/tcVU6TXWuE1SVO3OrrAbQrX6WYPMtiWjwuVhbBZl52y+cWqtH8AdJoGxQPoZrE5p1hOdvn6RGa5ec9DkkAUhZNOC8+BP/+PzaT/1Sya+0pZm45sFVvOT/UC7LkP+ZjRkQGUREiX/x/qVNo3kDjnx04Gnbt9T5S6QQyeOU48ryO7hE6y6A82Etv8e57BKa0C6CV9bqqo4v3i6ulBCIqCMKbKvgR9CPLosc9kIUOcpN8xiHpPoZw6H3ASBti7Anyr4NNYltiM5lE5mGAr55v+gCoEymhKrQlm7DYHFO0463M9Zb5Fvgb/xg9+q3c3XTFpc2egvKEG/d+DNI2kJGzo6TF9Uyh6VwPz0dOnI+uur77alA0PL0CA3es207qjRuJt98gmaUEKXf/iypOaXNHeN3uSQA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5290.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(53546011)(55236004)(7696005)(9686003)(5660300002)(52536014)(6506007)(83380400001)(2940100002)(186003)(26005)(82960400001)(2906002)(86362001)(8936002)(38100700002)(33656002)(316002)(38070700005)(508600001)(71200400001)(110136005)(4326008)(55016003)(8676002)(76116006)(64756008)(66946007)(66476007)(66556008)(66446008)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dkRYaWtiVnNWcDAvNGhqN0ZNSUJDakszWndJTWFhYUNGUG9acHF6K1RXVnp1?=
 =?utf-8?B?YjNESXBMV0hxdkFqWXhKaGhjRVFGTFJtTzl5ZkxGTllJcmxRZTA1c0lic2pr?=
 =?utf-8?B?YUFuNUR1d2cxSEFSNGlYWEc4blBYanZ3VklPNEgxYlFOS3poSWpDR1F0T21G?=
 =?utf-8?B?ekVzT3lCMHU5ZWhwZ25RbUQwZldPeEpMbm5LNnJoMWh6bGdKU0tDRWx2SFR6?=
 =?utf-8?B?Zi80NlFlRHNud3c1OWJpUTcrZ1c1cGptZHBqZWRUQ1ZHVFRhWWRlZVdTS21Y?=
 =?utf-8?B?dWZNdUxTYkxlcHVLUnFEUFc3c2J4VW5hTDlnbTJkUGg3SkxITitrMklMcVhz?=
 =?utf-8?B?d1JhYkU2ZGRSeENKbWpPK0pMa1lMblFoK1RSeHRYS3lheGt4SVAwdk14UmZ2?=
 =?utf-8?B?ME1mL1dLUWhpdkZCNHhNZG1SU2ZLaksyZGFLVnlISTFrd282cHh5akRzekxm?=
 =?utf-8?B?aHM3c2RKU3dac0RURS9nSkxobTlTODVYZmdQV0dJdkJreDIyWk03MU9yUDBY?=
 =?utf-8?B?WE9iVnNwbDlUTDdmYTZhR2hWVEhlOHhaelFLRENFR2FKUDhrZXE4VTc0bWVt?=
 =?utf-8?B?TVJjL0ZFRWVFcUlxMEJwamx4N3RRY0dzNElVaXJ1Z3BDODM3dURHSmZBRnJm?=
 =?utf-8?B?c2NxS1BENXRDUkdQVUFXYXQvS1l2dDVBQ0hFbUVrTXNRNEIyWHNJd0s4alVr?=
 =?utf-8?B?SGRiSE5EdFRqYXZlTHZ1OFZLaS96bGVnd1pGKzFvcnN4bnYzRGh3M25LdSto?=
 =?utf-8?B?RWVDM0ZCclpkbjFJZXUvS1B5NzQrTjhtZWgydGgyWjNLVlVOWWRkOXduRzhF?=
 =?utf-8?B?bnpxMERYWHBVdzN0NnBtdXY5c284dFQ5L0dLYVFlMERLaldZcGtmMTFyNFh2?=
 =?utf-8?B?VUdFRVhtQitvZlpmZ0gyb25DUDdyRkxLa25ZbVh0eEdUVHFoZWdkdzVTM1VJ?=
 =?utf-8?B?OTBKSHllN2JUaUNXQTNPdVhnbm9jVExQSHR5RTQ5bEthVDNpZ2tabjFaSk5h?=
 =?utf-8?B?dk10UXNaUnMxZGNDNjh1cnFyMXc1bzM5RlNTeXRJTjJmem9VZDlsWXJIK3g1?=
 =?utf-8?B?NDF0eHU5UmZ2Mnhob0ZjblNySWR3ci9leWdubyt5MzE3NTZCNzlkZk53UUx1?=
 =?utf-8?B?eDZzaGRmcnduVVdVbXBUM09rRnJjc0FReEIzMVBNM1lWTC9iR3VRZCtKTnpv?=
 =?utf-8?B?dWl2cjg0Z1A2VDR2TXArTkxXUGo5UlUxWFg4SENEbjhXUEF0R3pJK2hJS0NN?=
 =?utf-8?B?UDFaellUUzhEMTBhbUUvRlVmbDcxMkhpeTRuZk5rUnMrdjNmQjlJMENIZHQr?=
 =?utf-8?B?SzM5dHZCbExzNnhSTEVDSXB5c3VvbkVrK2VIYitPRythY2lHRGYwVVQ2NnZ2?=
 =?utf-8?B?Zk4xNk8rd1QxdlhKd0JtK1VVQVRuM1hPVHZQZVpZdk1SUDhYM1lScTY1Qk9j?=
 =?utf-8?B?YUIxaXZNbEE4SkZMSjI5UnVVZUs0Sko0aVFwZEZLMC9IL1Zlcmw5cWszOVNt?=
 =?utf-8?B?RW5IenMvVVRwbU1wczhMZitCaDFDaDNybEwzRE83ckJNNWZVeHpCZzdsSjFt?=
 =?utf-8?B?Q1JHd1BKWXdJdktuR3Uzc2tBZ3Y1OTBURnZ6WEYyM3VZNVhZUUpDUStwNnhq?=
 =?utf-8?B?RnZ4QXRTWlBZbkNhaGhnKzRWRjFiR1V1YnhiZFBZRm5TcmRUbkZRUFZ6aDRu?=
 =?utf-8?B?aVRHNnhwbVZuWHM2R0ZKU2dITkhvTzBXQUduRy90TUZtT1g3TjdsSVVjOU4z?=
 =?utf-8?B?MjVFZGVicExCM3dPQlJtRGZUUTFpSFhaSW83Um5CUGlsV0FmMUF2ZUpUWUtk?=
 =?utf-8?B?OFBiNitCdWwzMm1pTzY1dzRrS0x6V0VpOGRnS1JXbjh0K2xLR1Q5SWZjdTE3?=
 =?utf-8?B?YlNxUGhBdDZkUzM5bXA4QVlhTjNGUkNoTmtEanQ3TzRUOU45WTY2NnFIZlk4?=
 =?utf-8?B?bEdzQmsrWVB3L0hLVHc0dGdUOEJvQU0zTHR4ekQxTVBPNStRY0ZDc0NPOGo1?=
 =?utf-8?B?OFdMWDVJWGJsVUp2c1V4Wmh1dEdCcUNQTUlLb05BaEZMRW5rM2ppbE1sTFBO?=
 =?utf-8?B?MXhpendYQ1A2WkZuR3pKdVU5OTRKZ3dKSDAxcXRSZnVjVUNseWs0UWhOZWFq?=
 =?utf-8?B?L2hBRk9OVG9KY28wci9tRy9rb1lqZUdyNzdJcGpja0ZtYXMva0J1YnZtSlVj?=
 =?utf-8?B?bU5FU1U2ZTd1WTNGNmZvRkdvek1WUXI3Z1ovUUpVK0drMEtRUEhBZks1WE5l?=
 =?utf-8?B?S1pPOG80VDB1SEZ1am9LYndtOFFnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5290.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9cbfa28d-a9f2-4e4b-b43a-08da01bea6ce
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Mar 2022 11:19:17.8918 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PHugnwe0RDaForEqhgwYZ6L+gcqGxcrPnAwNY8Wf1jm8lk+8RrN8TiCnq3tV/ppRK8lRuvpr38J3/v3gH08/T61kwIE9dFVYT6dT6nWtKig=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5333
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [v2] drm/i915/gem: missing boundary check in
 vm_access leads to OOB read/write
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
Cc: "Surendrakumar Upadhyay,
 TejaskumarX" <tejaskumarx.surendrakumar.upadhyay@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksDQoNCmNhbiB3ZSBoYXZlIGFjaz8gb3Igd2UgbmVlZCB0byBkbyBhbnl0aGluZyBmdXJ0aGVy
IHRvIGdldCByLW8tYi4NCg0KVGhhbmtzLA0KTWFzdGFuDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2Fn
ZS0tLS0tDQpGcm9tOiBLYXRyYWdhZGRhLCBNYXN0YW5YIA0KU2VudDogMDkgTWFyY2ggMjAyMiAw
NzoxNg0KVG86IEF1bGQsIE1hdHRoZXcgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+OyBUdnJ0a28g
VXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AbGludXguaW50ZWwuY29tPjsgaW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZw0KQ2M6IFN1cmVuZHJha3VtYXIgVXBhZGh5YXksIFRlamFza3VtYXJY
IDx0ZWphc2t1bWFyeC5zdXJlbmRyYWt1bWFyLnVwYWRoeWF5QGludGVsLmNvbT4NClN1YmplY3Q6
IFJFOiBbSW50ZWwtZ2Z4XSBbdjJdIGRybS9pOTE1L2dlbTogbWlzc2luZyBib3VuZGFyeSBjaGVj
ayBpbiB2bV9hY2Nlc3MgbGVhZHMgdG8gT09CIHJlYWQvd3JpdGUNCg0KT24gMDMvMDMvMjAyMiAw
OTowMCwgVHZydGtvIFVyc3VsaW4gd3JvdGU6DQo+IA0KPiArIE1hdHQNCj4gDQo+IE9uIDAzLzAz
LzIwMjIgMDY6MDQsIE1hc3RhbiBLYXRyYWdhZGRhIHdyb3RlOg0KPj4gSW50ZWwgSUQ6IFBTSVJU
LVBUSzAwMDI0MjkNCj4+DQo+PiBBIG1pc3NpbmcgYm91bmRzIGNoZWNrIGluIHZtX2FjY2Vzcygp
Y2FuIGxlYWQgdG8gYW4gb3V0LW9mLWJvdW5kcyANCj4+IHJlYWQgb3Igd3JpdGUgaW4gdGhlIGFk
amFjZW50IG1lbW9yeSBhcmVhLlRoZSBsZW4gYXR0cmlidXRlIGlzIG5vdCANCj4+IHZhbGlkYXRl
ZCBiZWZvcmUgdGhlIG1lbWNweSBhdMKgIFsxXW9yIFsyXSBvY2N1cnMuDQo+IA0KPiBzL1sxXW9y
IFsyXS9sYXRlciBpbiB0aGUgZnVuY3Rpb24vID8NCj4gDQo+Pg0KPj4gW8KgIDE4My42Mzc4MzFd
IEJVRzogdW5hYmxlIHRvIGhhbmRsZSBwYWdlIGZhdWx0IGZvciBhZGRyZXNzOiANCj4+IGZmZmZj
OTAwMDBjODYwMDANCj4+IFvCoCAxODMuNjM3OTM0XSAjUEY6IHN1cGVydmlzb3IgcmVhZCBhY2Nl
c3MgaW4ga2VybmVsIG1vZGUgWyANCj4+IDE4My42Mzc5OTddICNQRjogZXJyb3JfY29kZSgweDAw
MDApIC0gbm90LXByZXNlbnQgcGFnZSBbwqAgMTgzLjYzODA1OV0gDQo+PiBQR0QgMTAwMDAwMDY3
IFA0RCAxMDAwMDAwNjcgUFVEIDEwMDI1ODA2NyBQTUQgMTA2MzQxMDY3IFBURSAwIFsgDQo+PiAx
ODMuNjM4MTQ0XSBPb3BzOiAwMDAwIFsjMl0gUFJFRU1QVCBTTVAgTk9QVEkNCj4+IFvCoCAxODMu
NjM4MjAxXSBDUFU6IDMgUElEOiAxNzkwIENvbW06IHBvYyBUYWludGVkOiBHwqDCoMKgwqDCoCBE
ICAgICAgICAgICANCj4+IDUuMTcuMC1yYzYtY2ktZHJtLTExMjk2KyAjMQ0KPj4gW8KgIDE4My42
MzgyOThdIEhhcmR3YXJlIG5hbWU6IEludGVsIENvcnBvcmF0aW9uIENvZmZlZUxha2UgQ2xpZW50
IA0KPj4gUGxhdGZvcm0vQ29mZmVlTGFrZSBIIEREUjQgUlZQLCBCSU9TIENOTFNGV1IxLlIwMC5Y
MjA4LkIwMC4xOTA1MzAxMzE5DQo+PiAwNS8zMC8yMDE5DQo+PiBbwqAgMTgzLjYzODQzMF0gUklQ
OiAwMDEwOm1lbWNweV9lcm1zKzB4Ni8weDEwIFvCoCAxODMuNjQwMjEzXSBSU1A6IA0KPj4gMDAx
ODpmZmZmYzkwMDAxNzYzZDQ4IEVGTEFHUzogMDAwMTAyNDYgW8KgIDE4My42NDExMTddIFJBWDog
DQo+PiBmZmZmODg4MTA5YzE0MDAwIFJCWDogZmZmZjg4ODExMWJlY2U0MCBSQ1g6DQo+PiAwMDAw
MDAwMDAwMDAwZmZjDQo+PiBbwqAgMTgzLjY0MjAyOV0gUkRYOiAwMDAwMDAwMDAwMDAxMDAwIFJT
STogZmZmZmM5MDAwMGM4NjAwMCBSREk6IA0KPj4gZmZmZjg4ODEwOWMxNDAwNA0KPj4gW8KgIDE4
My42NDI5NDZdIFJCUDogMDAwMDAwMDAwMDAwMGZmYyBSMDg6IDgwMDAwMDAwMDAwMDAxNmIgUjA5
OiANCj4+IDAwMDAwMDAwMDAwMDAwMDANCj4+IFvCoCAxODMuNjQzODQ4XSBSMTA6IGZmZmZjOTAw
MDBjODUwMDAgUjExOiAwMDAwMDAwMDAwMDAwMDQ4IFIxMjogDQo+PiAwMDAwMDAwMDAwMDAxMDAw
DQo+PiBbwqAgMTgzLjY0NDc0Ml0gUjEzOiBmZmZmODg4MTExYmVkMTkwIFIxNDogZmZmZjg4ODEw
OWMxNDAwMCBSMTU6IA0KPj4gMDAwMDAwMDAwMDAwMTAwMA0KPj4gW8KgIDE4My42NDU2NTNdIEZT
OsKgIDAwMDA3ZmU1ZWY4MDc1NDAoMDAwMCkgR1M6ZmZmZjg4ODQ1YjM4MDAwMCgwMDAwKQ0KPj4g
a25sR1M6MDAwMDAwMDAwMDAwMDAwMA0KPj4gW8KgIDE4My42NDY1NzBdIENTOsKgIDAwMTAgRFM6
IDAwMDAgRVM6IDAwMDAgQ1IwOiAwMDAwMDAwMDgwMDUwMDMzIFsgDQo+PiAxODMuNjQ3NDgxXSBD
UjI6IGZmZmZjOTAwMDBjODYwMDAgQ1IzOiAwMDAwMDAwMTBmZjAyMDA2IENSNDoNCj4+IDAwMDAw
MDAwMDAzNzA2ZTANCj4+IFvCoCAxODMuNjQ4Mzg0XSBEUjA6IDAwMDAwMDAwMDAwMDAwMDAgRFIx
OiAwMDAwMDAwMDAwMDAwMDAwIERSMjogDQo+PiAwMDAwMDAwMDAwMDAwMDAwDQo+PiBbwqAgMTgz
LjY0OTI3MV0gRFIzOiAwMDAwMDAwMDAwMDAwMDAwIERSNjogMDAwMDAwMDBmZmZlMGZmMCBEUjc6
IA0KPj4gMDAwMDAwMDAwMDAwMDQwMA0KPj4gW8KgIDE4My42NTAxNDJdIENhbGwgVHJhY2U6DQo+
PiBbwqAgMTgzLjY1MDk4OF3CoCA8VEFTSz4NCj4+IFvCoCAxODMuNjUxNzkzXcKgIHZtX2FjY2Vz
cysweDFmMC8weDJhMCBbaTkxNV0gW8KgIDE4My42NTI3MjZdDQo+PiBfX2FjY2Vzc19yZW1vdGVf
dm0rMHgyMjQvMHgzODAgW8KgIDE4My42NTM1NjFdDQo+PiBtZW1fcncuaXNyYS4wKzB4ZjkvMHgx
OTAgW8KgIDE4My42NTQ0MDJdwqAgdmZzX3JlYWQrMHg5ZC8weDFiMCBbIA0KPj4gMTgzLjY1NTIz
OF3CoCBrc3lzX3JlYWQrMHg2My8weGUwIFvCoCAxODMuNjU2MDY1XQ0KPj4gZG9fc3lzY2FsbF82
NCsweDM4LzB4YzAgW8KgIDE4My42NTY4ODJdIA0KPj4gZW50cnlfU1lTQ0FMTF82NF9hZnRlcl9o
d2ZyYW1lKzB4NDQvMHhhZQ0KPj4gW8KgIDE4My42NTc2NjNdIFJJUDogMDAzMzoweDdmZTVlZjcy
NTE0MiBbwqAgMTgzLjY1OTM1MV0gUlNQOiANCj4+IDAwMmI6MDAwMDdmZmUxZTgxYzdlOCBFRkxB
R1M6IDAwMDAwMjQ2IE9SSUdfUkFYOg0KPj4gMDAwMDAwMDAwMDAwMDAwMA0KPj4gW8KgIDE4My42
NjAyMjddIFJBWDogZmZmZmZmZmZmZmZmZmZkYSBSQlg6IDAwMDA1NTcwNTVkZmI3ODAgUkNYOiAN
Cj4+IDAwMDA3ZmU1ZWY3MjUxNDINCj4+IFvCoCAxODMuNjYxMTA0XSBSRFg6IDAwMDAwMDAwMDAw
MDEwMDAgUlNJOiAwMDAwN2ZmZTFlODFkODgwIFJESTogDQo+PiAwMDAwMDAwMDAwMDAwMDA1DQo+
PiBbwqAgMTgzLjY2MTk3Ml0gUkJQOiAwMDAwN2ZmZTFlODFlODkwIFIwODogMDAwMDAwMDAwMDAw
MDAzMCBSMDk6IA0KPj4gMDAwMDAwMDAwMDAwMDA0Ng0KPj4gW8KgIDE4My42NjI4MzJdIFIxMDog
MDAwMDU1NzA1NWRmYzJlMCBSMTE6IDAwMDAwMDAwMDAwMDAyNDYgUjEyOiANCj4+IDAwMDA1NTcw
NTVkZmIxYzANCj4+IFvCoCAxODMuNjYzNjkxXSBSMTM6IDAwMDA3ZmZlMWU4MWU5ODAgUjE0OiAw
MDAwMDAwMDAwMDAwMDAwIFIxNTogDQo+PiAwMDAwMDAwMDAwMDAwMDAwDQo+PiBbwqAgMTgzLjY2
NDU2Nl3CoCA8L1RBU0s+DQo+Pg0KPj4gQ2hhbmdlcyBzaW5jZSB2MToNCj4+IMKgwqDCoMKgwqAg
LSBVcGRhdGVkIGlmIGNvbmRpdGlvbiB3aXRoIHJhbmdlX292ZXJmbG93c190IFtDaHJpcyBXaWxz
b25dDQo+Pg0KPj4gU2lnbmVkLW9mZi1ieTogTWFzdGFuIEthdHJhZ2FkZGEgPG1hc3Rhbngua2F0
cmFnYWRkYUBpbnRlbC5jb20+DQo+PiBTdWdnZXN0ZWQtYnk6IEFkYW0gWmFicm9ja2kgPGFkYW16
YUBtaWNyb3NvZnQuY29tPg0KPj4gUmVwb3J0ZWQtYnk6IEphY2tzb24gQ29keSA8Y29keS5qYWNr
c29uQGludGVsLmNvbT4NCj4+IENjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4NCj4+IENjOiBCbG9vbWZpZWxkIEpvbiA8am9uLmJsb29tZmllbGRAaW50ZWwuY29tPg0K
Pj4gQ2M6IER1dHQgU3VkZWVwIDxzdWRlZXAuZHV0dEBpbnRlbC5jb20+DQo+IA0KPiBGaXhlczog
OWY5MDllMjE1ZmVhICgiZHJtL2k5MTU6IEltcGxlbWVudCB2bV9vcHMtPmFjY2VzcyBmb3IgZ2Ri
IA0KPiBhY2Nlc3MgaW50byBtbWFwcyIpDQo+IENjOiA8c3RhYmxlQHZnZXIua2VybmVsLm9yZz4g
IyB2NS44Kw0KPiANCj4gUmlnaHQ/DQo+IA0KPiBUaGVyZSB3YXMgYSBzZWxmdGVzdCBhZGRlZCB3
aXRoIHRoZSByZWZlcmVuY2VkIHBhdGNoIGFuZCBpdCBzb3VuZHMgDQo+IGxpa2UgaXQgd291bGQg
YmUgYSBnb29kIGlkZWEgdG8gZXh0ZW5kIGl0IHRvIGNvdmVyIHRoaXMgc2NlbmFyaW8uwqAgQXMg
DQo+IGEgc2VwYXJhdGUgcGF0Y2ggdGhvdWdoIHNvIHRoaXMgb25lIGlzIGVhc3kgdG8gYmFja3Bv
cnQuDQoNCkFncmVlZCwgYSBzaW1wbGUgcmVncmVzc2lvbiB0ZXN0KGVpdGhlciBzZWxmdGVzdCBv
ciBpZ3QpIGZvciB0aGlzIHdvdWxkIGJlIG5pY2UsIGlmIHBvc3NpYmxlLg0KDQo+IA0KPiBSZWdh
cmRzLA0KPiANCj4gVHZydGtvDQo+IA0KPj4gLS0tDQo+PiDCoCBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fbW1hbi5jIHwgMiArLQ0KPj4gwqAgMSBmaWxlIGNoYW5nZWQsIDEgaW5z
ZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQo+Pg0KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMNCj4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX21tYW4uYw0KPj4gaW5kZXggZWZlNjlkNmI4NmY0Li5jM2VhMjQzZDQxNGQg
MTAwNjQ0DQo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5j
DQo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jDQo+PiBA
QCAtNDU1LDcgKzQ1NSw3IEBAIHZtX2FjY2VzcyhzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKmFyZWEs
IHVuc2lnbmVkIA0KPj4gbG9uZyBhZGRyLA0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiAt
RUFDQ0VTOw0KPj4gwqDCoMKgwqDCoCBhZGRyIC09IGFyZWEtPnZtX3N0YXJ0Ow0KPj4gLcKgwqDC
oCBpZiAoYWRkciA+PSBvYmotPmJhc2Uuc2l6ZSkNCj4+ICvCoMKgwqAgaWYgKHJhbmdlX292ZXJm
bG93c190KHU2NCwgYWRkciwgbGVuLCBvYmotPmJhc2Uuc2l6ZSkpDQo+PiDCoMKgwqDCoMKgwqDC
oMKgwqAgcmV0dXJuIC1FSU5WQUw7DQoNCk90aGVyIHVzZXJzIGxpa2UgdHRtX2JvX3ZtX2FjY2Vz
cyBhcmUgYWxzbyBjaGVja2luZyBpZiBsZW4gPD0gMCwgc2hvdWxkIHdlIGFsc28gYWRkIGFuIGV4
cGxpY2l0IGNoZWNrIGZvciB0aGF0IGhlcmU/IE90aGVyd2lzZSBMR1RNLg0KDQpJIHRoaW5rIG5v
IG5lZWQgdG8gYWRkIGhlcmUgbGVuPD0wLCAgd2UgYWxyZWFkeSB2YWxpZGF0aW5nIHNhbWUgIHJh
bmdlX292ZXJmbG93c190IC4gY29udmVydGVkIGZvbGxvd2luZyBjb25kaXRpb24gdG8gcmFuZ2Vf
b3ZlcmZsb3dfdC4NCg0KaWYgKGxlbiA8IDEgfHwgbGVuID4gb2JqLT5iYXNlLnNpemUgfHwNCgkg
ICAgYWRkciA+PSBvYmotPmJhc2Uuc2l6ZSB8fA0KCSAgICBhZGRyICsgbGVuID4gb2JqLT5iYXNl
LnNpemUpDQoNCj4+IMKgwqDCoMKgwqAgaTkxNV9nZW1fd3dfY3R4X2luaXQoJnd3LCB0cnVlKTsN
Cg==
