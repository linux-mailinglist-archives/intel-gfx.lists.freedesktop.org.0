Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1F51A965AD
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Apr 2025 12:18:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D85EC10E19E;
	Tue, 22 Apr 2025 10:08:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Eoyefv+G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DA2A10E192;
 Tue, 22 Apr 2025 10:08:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745316509; x=1776852509;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=c0IzONNGgIAlk2iRhfz7ZlcvBe52vLXKn7nz6FZIiNI=;
 b=Eoyefv+Ge/oHSJGSVpEzf+5im1asqCXzRoFYlx3Q0aZLMljvWuTsf7lF
 nkV6DB2K4tFSYDEKiYOK+Ekl20Wp9ZpLZieryc/h+SSe9cDm7ffxiLT1I
 Nh01Lcm4ScykOjd0yXpZG5061kuhyp8LgpACOqqEQUy3ANIMkGc8tgVgf
 P3hTxfOxK1wo9CfytaV3pKF/wl7JCB5/ZfkOIOh+soaNLDekoJb91thPS
 RbLA3aklQWa28QFWV/bTxJDFU7D9sYYvKXW0IA3zpKJgW2xMTWDtd1i+l
 6XvqmjlfcEeGamBeh4eAXWacR4Qmd/icnasiEITrusynrW/bwk0hvMeln w==;
X-CSE-ConnectionGUID: nhqvfWX9ReqC981nE8i3Xw==
X-CSE-MsgGUID: Wo2gbVusTOeqtFKvYJn1tg==
X-IronPort-AV: E=McAfee;i="6700,10204,11410"; a="47049410"
X-IronPort-AV: E=Sophos;i="6.15,230,1739865600"; d="scan'208";a="47049410"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2025 03:08:28 -0700
X-CSE-ConnectionGUID: IbJrjym/T/CZkMBwsNpvhA==
X-CSE-MsgGUID: jS+TChQ7RNilw/fBo/NGYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,230,1739865600"; d="scan'208";a="132507692"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2025 03:08:29 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 22 Apr 2025 03:08:27 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 22 Apr 2025 03:08:27 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 22 Apr 2025 03:08:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PsqnVA1yeD2961gCh5EPpxt8fK+miumRlvnCvc5DZ7Uh/02UOpLhKUifYMUAAKUnVzeElP+ddTfRUYA9SQ4J0TsoX9B/V3FQXQJigz+lXPnbURO2PiOhFzjIL0L1sBM5+XoIPRLIi6pc5kMsJPxLQY00TMEWNQ8NskLNDNEVJmhYKnpomP8IX96o8c5iEKKyHr21/cdwsmnuXD7spRQ59DsWtNp1tqcoAYlT+zw9snD7FZGVWFerZuuBsHJBY71yf2VLGtpvaRknAsudkUspGCmWgFUaOgAn+QH4cZGVQbr4iRi0XLOZnCxDnzGYeNxyNhp4KBVAFf1aGc4Iy1dLtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c0IzONNGgIAlk2iRhfz7ZlcvBe52vLXKn7nz6FZIiNI=;
 b=fI2eoLj2H41ZPQ/61DrVuSeAnc9basQqBOYPp2CxcUuD4aabkwuGD+B35OgYBf95zV5wiET3jlsCxU0QjlZBqtwqpzBg8+vhkOQG/CFxq9lA1TRMShBiKa3oUwpubcDsNy+E1PbLztIMNkBuoFw2c7FrUsSlwyeZP5st3eeFZ1yhWOVrlEgZ3xa4VHwe05oJPLR1uSGwB9/zrST4QTjStZ2HNKtn8isv22ME7lzDLMQ6Jcb8S/rXHK22HpmIpbFyzt7ipfw76kP9cVPjgiXo8HMVryILqbgaX5VzUpOrYT7d3PYHbs4gESSt2HVRC1yjNYYVJY9U9yji6a/BxvJmWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by BN9PR11MB5257.namprd11.prod.outlook.com (2603:10b6:408:132::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8655.35; Tue, 22 Apr
 2025 10:08:25 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%5]) with mapi id 15.20.8655.033; Tue, 22 Apr 2025
 10:08:25 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH v3 10/13] drm/i915/dmc: Add interface to control start of
 PKG C-state exit
Thread-Topic: [PATCH v3 10/13] drm/i915/dmc: Add interface to control start of
 PKG C-state exit
Thread-Index: AQHbrSXmxQCJVQ0Ft0mqnidJiMZC5rOvgmpw
Date: Tue, 22 Apr 2025 10:08:24 +0000
Message-ID: <MW4PR11MB705449307BD4F810CE402B9BEFBB2@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20250414100508.1208774-1-jouni.hogander@intel.com>
 <20250414100508.1208774-11-jouni.hogander@intel.com>
In-Reply-To: <20250414100508.1208774-11-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|BN9PR11MB5257:EE_
x-ms-office365-filtering-correlation-id: 58a87595-68d5-4a55-3fe5-08dd81859eb7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?MW1paDhqcUhrbERZMnhvbVlXdjliMlA1dlZiVll4bS9nWFR0bHBqWmQzYnhX?=
 =?utf-8?B?MlZPVHBFZy9yTC9VZlQwMExiZldYUmo5Tkl3cHh1VUFzZktUc0tXWG5CaWR3?=
 =?utf-8?B?SHFYVjJzOVlsQ0UybyswemJtL2hwdUF1WEl6dnl3ZmR3T0drN083SnhsQWl4?=
 =?utf-8?B?aUdWdDhxbTl1UnBlK2orWGVRcWNOVzBTeWNwb29IazRUMXhITUEzMUN5bHFU?=
 =?utf-8?B?eVhURjlDWktURTFIOG9sWVExVll1emZhanBhM2JvUzltZFRnTjRCYjhsTllB?=
 =?utf-8?B?YlJrNXRnVnM1OWlWcHNVcVh4TkFqeHYxK3lQOXpjTEdnVDNCTjZXTVJsOGxG?=
 =?utf-8?B?a2xvbDFnTENna1ZEd0Jrem9CUm9JQWcwZnl4REk0MTNFNDBKTGVFeDJUREhr?=
 =?utf-8?B?MXc4Zlh1VXN0UWV0aGtIRzZWYW1sYlZZTkhjdzhWTStWcHZxeWt1QWNNTVA0?=
 =?utf-8?B?Si9yZDBYY2xYNTZFODhscmV3aUlzcG1nTDJveUtxNDg5RU1lYlNyZTJXaGxn?=
 =?utf-8?B?bzkySWk3Z3IzZkJPOG5iR0dhSmNsTkxJTEI0YVlOTmNIbTR6R3dIZGtoY1M0?=
 =?utf-8?B?cVVaeGEwekE5dldscVI0QmJIMzhwRnNmQk9KbW9qdTlyRVptRXZ3Y0Q1K3Jz?=
 =?utf-8?B?U20rWmNjQlRJUDVsSnpPMTR1YkNVR3hxY2QzdmFPS25lL1JQbExOWUtRQy9y?=
 =?utf-8?B?Rks4bmhsc1F4MXRLSHFuUDFvcXd3cEl0OGFVbnZCWWU2QVhnYldoUzVvR0wx?=
 =?utf-8?B?RVNyTG5wZzBiZ2dKYXNWa041bXVkZmV4MnRHb0gyc3pqUGxsaFpoeHUvQ2h5?=
 =?utf-8?B?VkVJZ0VrTXlpNHNUdXBBa2psd1R0aXRMQkhIUWduUjUvK2ZCdy9DUEd5MC9T?=
 =?utf-8?B?V0pTbmtwWEhFK29ZekNRY2g2azdOWlVTRUVZb0llcE9KWE9RZlIwb0pxRVBy?=
 =?utf-8?B?NkZRZ29zSDBoS213MjQ0RW5NMkRWdmxwdkh6UHVNQUdXbE04R1l3NG1NTXRa?=
 =?utf-8?B?YW5GamhPb28yN200ZjdVbEVoMmNlUC9CNFpjQ0paM1NHNS9BNHo1OEdWMlBN?=
 =?utf-8?B?WWUwbkdMY0NlK1FidGtPR2c0UzRPY0JXNXhGcXlramlUUnJVaHpMaVRGeUFY?=
 =?utf-8?B?NFg3TXh5UWsvUVBLT2FoZStnelhSUlZZbVc4Y2FneWJJN0phQVQvbkliRjk3?=
 =?utf-8?B?RnRyUnpjV2F5ZHVuTmZKMmw2RVNVV25QK05adFdxSFFBRmh5SzhZY1JzNlc0?=
 =?utf-8?B?aEc5QjFZRng4aUxtcGc0V2ZlNzdYSFhmWlVHS3pGWFlSUUo4eEhvaXQ5TG43?=
 =?utf-8?B?WVNJdlBXcFpTUFBJaElxcVNlYWh0aWFRUUkrdStMYmhrZVZKUksrQWRVU2V2?=
 =?utf-8?B?VFpyZEo4S0tnaU1URzhJM0NCNWl5eHJrZlVsd3lGaDl3NXJKTGpwLzJrOFRQ?=
 =?utf-8?B?aCt4cWJVN3RVQUtnNjNnQmZSa2IvNVExZXd2VEkyTnFFQXNJMGFEd0FJSkdk?=
 =?utf-8?B?Q0VBaWRXVy9oU0JibDhOMDZNWVFhS2NiWGdkK2g0TkhCeDVnbldXVUc4b2lx?=
 =?utf-8?B?MFdDblY3MlVBbW12R21hOS8wNTEybCsvay9INy9nNmVnNzVQNS82Vlp3aVdH?=
 =?utf-8?B?cnZRSFltV0pTMVMyL2FSRS9FMW5SWEZUZXdoVWVwb1RNQ3JpQzJOdERKa0Qx?=
 =?utf-8?B?eDNjZUZqaHg1b25iSHdqdlhBWnZ5TENEVGE0RlV1S1JibVVzQTl5ejcrTmtw?=
 =?utf-8?B?dU9mdFF0cm1JOUZjRTJlajYxUjVjcWFkQk9hS2ZJTU94UmFGVFZPK29GQUN6?=
 =?utf-8?B?ZUN5UHYwZVpTVFhlQlpsN2dCNXc2ZGM1NEJpUWJDWnBzOFFKTUhIa09TcFgx?=
 =?utf-8?B?S3Mzd2tGV1hoRm1CQW5wbThDYm5ET0RNaWYzRHd4U1p5M283WkpGVFVUZC85?=
 =?utf-8?B?MXRzQ011UXBFVE93elJ0ZEVCajdnOElRTU13YUNkbWwyR2JFbmNFOXVreHFM?=
 =?utf-8?B?eWJlYWpQZHZnPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eEZXeEY3RE0vU0RxbkZveG44M0I1NkMxTVVZRXlIZ2JFVVE3QXpTTkRFRmVz?=
 =?utf-8?B?aXB6SWtmdWNaL09oeVYwLzcyMDJwV2JFbkRyc0g3LzMxWjVuMGJRQ0NRNlBI?=
 =?utf-8?B?b0pkYzV2clhtR2Z4bHp1NGdaT2liY3BzUktyOFRDQ2NUZXFQMk41eGZqWVk1?=
 =?utf-8?B?VW5oa2FMMFJGVURicTVneTNVSkV0emQxazczdnhMbkp6RndGTi81RmJaS05G?=
 =?utf-8?B?b1NBamkrM1BZRkxMWWZrQmhyL29xeDZtbzhmak1tc0VWVXZPOXhWdlVJK2RP?=
 =?utf-8?B?dTRZTURtLzQxS1lVNmRoUmQ1K1o3U2J0WGdxUzJZdEg2aktXRDBPcGU1R1BD?=
 =?utf-8?B?Y2NldUxxaEZQWDJhSkprRjZhRWswNHROa0piRmdpL2pPNTQ2cWp5TXNRZEIz?=
 =?utf-8?B?eVBKMWpxOFRuZnl3a29oM2kwbFZtSGZ0Y1ltcW4zRnFodjBjUElGTXlwamVi?=
 =?utf-8?B?K0ZlUHNSTFRjRTlaNHBQWmIvT0hIL3U0VTdCb0piU0FLZVdkQ0NrOTlmclAr?=
 =?utf-8?B?b0lJSGVNSmYyb2tsR1VoRCtHUDJWN2RTY3c1YzIvc3d0WVhERzRPUU02T252?=
 =?utf-8?B?ZTdHSkR1dmxBRjMwRWpvNnVNaWptZVhINmRHRlJUaExBc1NncXEzNGFvKzBw?=
 =?utf-8?B?eFFKajdVQ21UaHFvVUY1YmViWWkrcG53dFFkK1ZnVm9xMWQ4YTRIclVER1VH?=
 =?utf-8?B?UnY5OS8rcmE0Z05aRUt6SlV5cGwxZndkaWFNa0Uwb1BId29wT3IwS3VnODJW?=
 =?utf-8?B?RW8yZUJJZHQ3d0dyM3V3MXRWWmU5TCtIZWJUQnU3MGZnQlZWejBPejh3UjhH?=
 =?utf-8?B?VUEvOXpBUmpZUEZuR3VLK0k0R3pyRW5IaHFVUWViaGZManRUWEVuS0VocWhN?=
 =?utf-8?B?YzBxYWFrVTVycFFGUitySlhlMEFGb2F4cG0zT24zTkpSZXBMaUx0aVNDNW5y?=
 =?utf-8?B?RkZXV2w5MldZWmlhYnlUWXBOTHBTMmQzUkE0OWZHNlZpMnBVSnFJM25DUE10?=
 =?utf-8?B?MDFFZzREWEREcjc2ekt3VHFLNGdFOXF0ZEk3MVNKTDlHbHdpOTQ0aDJYREcw?=
 =?utf-8?B?NWhxamo2VXIyc3VRL093U0FOdDZaQUxyMzRwamtzWXJRTkdoYkVWTGRQWjNi?=
 =?utf-8?B?cHR0cEJtQTJNRWE5RC9NR2c1OTkrMStBN25yOFRXSTFFdjh5M0ZkMmh1SmUv?=
 =?utf-8?B?MVRRR0JaN21ITHhxYzRkdmMxSldDaVA2RkFCT2tqR0VXYXRtd0x4NEdWSDNq?=
 =?utf-8?B?eHNYTlIrYStrUU9wTWxOM2xnT0ovUmhYWitsYWxjM2VQWFRid2hNaGZSN0Z1?=
 =?utf-8?B?VHo2UEcrQm5NMDlxTWpHbk81dlIxTjJCVFY4V3lhQzBHc09ZK2VERlZKSi9Y?=
 =?utf-8?B?TXU3QVhsVVVrR3d6WGNZSm44TzUxRGFnTWFCOGJ6QUg4TEJCVHpMQXkvWGZa?=
 =?utf-8?B?Zi9GYnFkdWFFMjZHdnJZRFA5bkorczhaVVRScHVIME9waFpJc0xqOStXYS9N?=
 =?utf-8?B?eU5TVlVUa2ttcXQwdlBaZDBaS3lhTU9qbmJuYkhhRm9XS3NMRUxwaHMzbFhp?=
 =?utf-8?B?RTI4Q0tRZzdEUmFWS2ZkRjJDQW81M1paR0l0VzAxSGxJbTBSN2lpVmo1OWNo?=
 =?utf-8?B?ZVhhemhRdkRSQ1l1cFl0dFJJUm5jb0l3VTVPTXV4b2dRK2wxYlR6RzROcXFu?=
 =?utf-8?B?Q3luSEJIQ3dsbG83L0tHZjYvVDd4Y1dWM1VGd2RtZlNnZkFGNTVML1hiNk0v?=
 =?utf-8?B?aWU0OVo2MWpiNGlFYWQ3VjhmVEZnbnJ0bEx1T2hualB1UGw2YUZaY0lFSW8y?=
 =?utf-8?B?alJCVjlYZnBvT1V0d1FvUGs2eUQzQndQMnRWZDRZVmNLeXZDTW5PVFhSREl3?=
 =?utf-8?B?L3I2WC80b010QVFpMFdoTC9XdDl6dXJPbFZuR0p0VG9JUmVnVDdma0ZrenQx?=
 =?utf-8?B?YXp6bDV5ZjhsbkJhRm92TVJIR1NvUVlzbGNCeGM5dkZuRTlRS3VUKzluQ2Vn?=
 =?utf-8?B?YzRFUjltNGlITnJ3ZGphOHlWU0o1WU9vdTZGYk45WWlycVRTOHpsUk5NbXFm?=
 =?utf-8?B?QlErS3pNcklhY0tJUHU2MzVPUWVoUzJFK2VCb0ZZay9KT0UrOTc4UjVaQUlI?=
 =?utf-8?Q?rmTEgoh73nc06AZjpkoi41JQK?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 58a87595-68d5-4a55-3fe5-08dd81859eb7
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Apr 2025 10:08:24.9719 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6V5FoaJbqRYB2DAf47s7YkXIuVPP6tjsOpQroVSgk8VgP5XOeoh75EMCaijd8DpF+Z34xezuvqT4DP8PAoR31Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5257
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEpvdW5pDQo+IEjD
tmdhbmRlcg0KPiBTZW50OiBNb25kYXksIDE0IEFwcmlsIDIwMjUgMTMuMDUNCj4gVG86IGludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9y
Zw0KPiBDYzogSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFN1
YmplY3Q6IFtQQVRDSCB2MyAxMC8xM10gZHJtL2k5MTUvZG1jOiBBZGQgaW50ZXJmYWNlIHRvIGNv
bnRyb2wgc3RhcnQgb2YgUEtHIEMtDQo+IHN0YXRlIGV4aXQNCj4gDQo+IEFkZCBpbnRlcmZhY2Ug
dG8gY29udHJvbCBpZiBwYWNrYWdlIEMgZXhpdCBzdGFydHMgYXQgdGhlIHN0YXJ0IG9mIHRoZSB1
bmRlbGF5ZWQNCj4gdmJsYW5rLiBUaGlzIGlzIG5lZWRlZCB0byBpbXBsZW1lbnQgd29ya2Fyb3Vu
ZCBmb3IgdW5kZXJydW4gb24gaWRsZSBQU1IgSFcNCj4gaXNzdWUgKFdhXzE2MDI1NTk2NjQ3KS4N
Cj4gDQoNClJldmlld2VkLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0K
DQo+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwu
Y29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZG1jLmMg
fCAzMSArKysrKysrKysrKysrKysrKysrKysrKysNCj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kbWMuaCB8ICAyICsrDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDMzIGluc2VydGlv
bnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RtYy5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWMuYw0K
PiBpbmRleCBjNjU1NDRlNDhjNDIuLmJkNTBjOThjMGVlNCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RtYy5jDQo+IEBAIC01MzQsNiArNTM0LDM3IEBAIHZvaWQg
aW50ZWxfZG1jX2Jsb2NrX3BrZ2Moc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksDQo+IGVu
dW0gcGlwZSBwaXBlLA0KPiAgCQkgICAgIFBJUEVETUNfQkxPQ0tfUEtHQ19TV19CTE9DS19QS0dD
X0FMV0FZUyA6IDApOyAgfQ0KPiANCj4gKy8qKg0KPiArICogaW50ZWxfZG1jX3N0YXJ0X3BrZ2Nf
ZXhpdF9hdF9zdGFydF9vZl91bmRlbGF5ZWRfdmJsYW5rKCkgLSBzdGFydCBvZg0KPiArUEtHDQo+
ICsgKiBDLXN0YXRlIGV4aXQNCj4gKyAqIEBkaXNwbGF5OiBkaXNwbGF5IGluc3RhbmNlDQo+ICsg
KiBAcGlwZTogcGlwZSB3aGljaCByZWdpc3RlciB1c2UgdG8gYmxvY2sNCj4gKyAqIEBlbmFibGU6
IGVuYWJsZS9kaXNhYmxlDQo+ICsgKg0KPiArICogVGhpcyBpbnRlcmZhY2UgaXMgdGFyZ2V0IGZv
ciBXYV8xNjAyNTU5NjY0NyB1c2FnZS4gSS5lLiBzdGFydCB0aGUNCj4gK3BhY2thZ2UgQw0KPiAr
ICogZXhpdCBhdCB0aGUgc3RhcnQgb2YgdGhlIHVuZGVsYXllZCB2YmxhbmsgICovIHZvaWQNCj4g
K2ludGVsX2RtY19zdGFydF9wa2djX2V4aXRfYXRfc3RhcnRfb2ZfdW5kZWxheWVkX3ZibGFuayhz
dHJ1Y3QgaW50ZWxfZGlzcGxheQ0KPiAqZGlzcGxheSwNCj4gKwkJCQkJCQkgICAgZW51bSBwaXBl
IHBpcGUsIGJvb2wNCj4gZW5hYmxlKSB7DQo+ICsJdTMyIHZhbDsNCj4gKw0KPiArCWlmIChlbmFi
bGUpDQo+ICsJCXZhbCA9IERNQ19FVlRfQ1RMX0VOQUJMRSB8IERNQ19FVlRfQ1RMX1JFQ1VSUklO
RyB8DQo+ICsJCQlSRUdfRklFTERfUFJFUChETUNfRVZUX0NUTF9UWVBFX01BU0ssDQo+ICsJCQkJ
ICAgICAgIERNQ19FVlRfQ1RMX1RZUEVfRURHRV8wXzEpIHwNCj4gKwkJCVJFR19GSUVMRF9QUkVQ
KERNQ19FVlRfQ1RMX0VWRU5UX0lEX01BU0ssDQo+ICsJCQkJICAgICAgIERNQ19FVlRfQ1RMX0VW
RU5UX0lEX1ZCTEFOS19BKTsNCj4gKwllbHNlDQo+ICsJCXZhbCA9IFJFR19GSUVMRF9QUkVQKERN
Q19FVlRfQ1RMX0VWRU5UX0lEX01BU0ssDQo+ICsJCQkJICAgICBETUNfRVZUX0NUTF9FVkVOVF9J
RF9GQUxTRSkgfA0KPiArCQkJUkVHX0ZJRUxEX1BSRVAoRE1DX0VWVF9DVExfVFlQRV9NQVNLLA0K
PiArCQkJCSAgICAgICBETUNfRVZUX0NUTF9UWVBFX0VER0VfMF8xKTsNCj4gKw0KPiArCWludGVs
X2RlX3dyaXRlKGRpc3BsYXksIE1UTF9QSVBFRE1DX0VWVF9DVExfNChwaXBlKSwNCj4gKwkJICAg
ICAgIHZhbCk7DQo+ICt9DQo+ICsNCj4gIHN0YXRpYyBib29sIGlzX2RtY19ldnRfY3RsX3JlZyhz
dHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwNCj4gIAkJCSAgICAgICBlbnVtIGludGVsX2Rt
Y19pZCBkbWNfaWQsIGk5MTVfcmVnX3QgcmVnKSAgeyBkaWZmIC0tDQo+IGdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZG1jLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RtYy5oDQo+IGluZGV4IDIzNjMxMmZiNzkxYy4uYmQxYzQ1OWIwMDc1
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RtYy5o
DQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZG1jLmgNCj4gQEAg
LTIwLDYgKzIwLDggQEAgdm9pZCBpbnRlbF9kbWNfZW5hYmxlX3BpcGUoc3RydWN0IGludGVsX2Rp
c3BsYXkgKmRpc3BsYXksDQo+IGVudW0gcGlwZSBwaXBlKTsgIHZvaWQgaW50ZWxfZG1jX2Rpc2Fi
bGVfcGlwZShzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwgZW51bQ0KPiBwaXBlIHBpcGUp
OyAgdm9pZCBpbnRlbF9kbWNfYmxvY2tfcGtnYyhzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxh
eSwgZW51bSBwaXBlDQo+IHBpcGUsDQo+ICAJCQkgIGJvb2wgYmxvY2spOw0KPiArdm9pZCBpbnRl
bF9kbWNfc3RhcnRfcGtnY19leGl0X2F0X3N0YXJ0X29mX3VuZGVsYXllZF92Ymxhbmsoc3RydWN0
DQo+IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksDQo+ICsJCQkJCQkJICAgIGVudW0gcGlwZSBwaXBl
LCBib29sDQo+IGVuYWJsZSk7DQo+ICB2b2lkIGludGVsX2RtY19maW5pKHN0cnVjdCBpbnRlbF9k
aXNwbGF5ICpkaXNwbGF5KTsgIHZvaWQgaW50ZWxfZG1jX3N1c3BlbmQoc3RydWN0DQo+IGludGVs
X2Rpc3BsYXkgKmRpc3BsYXkpOyAgdm9pZCBpbnRlbF9kbWNfcmVzdW1lKHN0cnVjdCBpbnRlbF9k
aXNwbGF5ICpkaXNwbGF5KTsNCj4gLS0NCj4gMi40My4wDQoNCg==
