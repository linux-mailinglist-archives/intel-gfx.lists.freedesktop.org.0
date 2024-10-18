Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBE439A34FC
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2024 08:01:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8F8D10E366;
	Fri, 18 Oct 2024 06:01:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TnSaRaie";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DBDE10E366;
 Fri, 18 Oct 2024 06:01:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729231274; x=1760767274;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=f/m0/X86VhSo1v3JYTWjJJEdnR4LnJ1m4LsbvXQj1AE=;
 b=TnSaRaiegbw+0fyZzRzgwsd+HoB9vUxim6ulkHrr4WRMJLHn0w2QsduE
 HQtnXJt/4kz+vKhByuJHPhS44yPqOLbnM/OeUuDusVhLr/ob4kvVbldD3
 IaT1Lx9HDYybuCrxXtSIhVKNz1KPikI8HTSwvyEqxeOw0Gg1Y8XVER9R4
 lLkTwCpkk5890zYUEe7GRCg++5/bBGFizlNay4HCvuHOHClRSihMDlr9n
 S0Ctvc+rQQ3N86/5WfJxNQA1nTfa9u94IACb+8lsjoJCVcJQFPjCo/Q9+
 rIgrPurSK+scr1dugk5gpRWaQTc4TJXGWvO4NzW3/pOEiyPjVn2L/4GU+ A==;
X-CSE-ConnectionGUID: OnPMrdr7Sqi598w2O9s+pg==
X-CSE-MsgGUID: 1Q7JxkZjRKOpsMMrB5x/Gg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="28849616"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="28849616"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2024 23:01:13 -0700
X-CSE-ConnectionGUID: 9DCe0NDZRL+3oU+jdN2qKg==
X-CSE-MsgGUID: SAKjdPGcT8+Gh8+IDCqHrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,212,1725346800"; d="scan'208";a="116219076"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Oct 2024 23:01:13 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 17 Oct 2024 23:01:12 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 17 Oct 2024 23:01:12 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 17 Oct 2024 23:01:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EVWIRzgXIWMuHf0/RKbkSCm8Iam6mvCDJBGMCnhvL9bPR7vdYgaYnvbBb2SrK2qBfyojgyZhbPmhaIDpdi2JK1N1pUJgmTjsce/VfUVLNU5/8ChLAnwnQ3dWTkTO/Gb6CwwovaW5c8nIN9iAM/LJhUd9rfcTn7+xBMxopfoJ+8UR5tUt3rSt7Q+laktpFToPLoHrNVG491O9NzfgiSt6tM4PKgVem3ih3j0kB1PVkpgZ2wTZo0gz4zIyvUotDlO1bMzoB2kLNqJLY6FvhiJTtCElIP/QfJrOtAaSLHROtS7pr0nZDi2/KrBTrbUGK9XwM9gLfnLFaTv52R6vPwobaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f/m0/X86VhSo1v3JYTWjJJEdnR4LnJ1m4LsbvXQj1AE=;
 b=Rz3CFdRR2szxSrwrjazY9gby5p+XmGHi5uyaza5Du+x8aroWVVtRY2zpoDfVQKAUwO7CaeHx5e2W/S9G1HpoaUi78xj9fVRYVGJYkVmB/lXJSxYNH79NAtkmfeUVWmfg4w2fKY2ohBH7Syq5BrDqss6NUNUewnF2RBT80rUrzNxsNVXCalHMdmBlcDX0MMlybm+pp2iexEw7FRZGQN6MlLb8+TlUsUQExmURgatmFGgTA6XPeGl2hHKo3mnYeydfL0ogf/Zmrkg0onfnHj3eaxQXbWNST9nL90C/NgeitN6xVEVCtSA1l0lAWXMUBlZPid9pxpzhGzwCy+P1bfo+/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5655.namprd11.prod.outlook.com (2603:10b6:8:28::10) by
 SA1PR11MB5876.namprd11.prod.outlook.com (2603:10b6:806:22a::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.23; Fri, 18 Oct
 2024 06:01:00 +0000
Received: from DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::f6db:9044:ad81:33d9]) by DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::f6db:9044:ad81:33d9%6]) with mapi id 15.20.8069.020; Fri, 18 Oct 2024
 06:00:59 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "I915-ci-infra@lists.freedesktop.org" <I915-ci-infra@lists.freedesktop.org>
Subject: =?utf-8?B?UkU6IOKclyBGaS5DSS5CQVQ6IGZhaWx1cmUgZm9yIGRybS9pOTE1L3hlMmxw?=
 =?utf-8?B?ZDogVXBkYXRlIEMyMCBIRE1JIFRNRFMgYWxnb3JpdGhtIHRvIGluY2x1ZGUg?=
 =?utf-8?Q?tx=5Fmisc?=
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUveGUybHBkOiBV?=
 =?utf-8?B?cGRhdGUgQzIwIEhETUkgVE1EUyBhbGdvcml0aG0gdG8gaW5jbHVkZSB0eF9t?=
 =?utf-8?Q?isc?=
Thread-Index: AQHbIOkHnSU5hrbWtUWCmyepFpwg+bKMA6TQ
Date: Fri, 18 Oct 2024 06:00:58 +0000
Message-ID: <DM8PR11MB565530314645E2EEB26EE062E0402@DM8PR11MB5655.namprd11.prod.outlook.com>
References: <20241017205444.102979-2-gustavo.sousa@intel.com>
 <172920607792.1280532.7635362645171246637@2413ebb6fbb6>
In-Reply-To: <172920607792.1280532.7635362645171246637@2413ebb6fbb6>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5655:EE_|SA1PR11MB5876:EE_
x-ms-office365-filtering-correlation-id: 0662869b-0caf-4688-022c-08dcef3a3cf8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?bitzU3lZdFB5bnBIanh5SkpkWHoweHpBYll2eVkvWUwxajE5enBvNXVzeGpY?=
 =?utf-8?B?SlQvL3V5YVNyQjEvN0tmZ2lzbWI2S3lJNjRxUmE4TnlZTWxaeWYzeW9HRlNB?=
 =?utf-8?B?Z1dkWGFkUC9xcG0rYk96QjFPMFVZVHBrQ1FOTTBNM0lEd0dGcXBOamRrd3Ny?=
 =?utf-8?B?SzNnRUN0SlBMMW5td0NUdXcyZlFpSHIrSDJvMXJpWHY3RU83L29idmx5QVgz?=
 =?utf-8?B?WFU1Y0xJamI4bm9RZDArY0xMcXRqODJ5d3AvOHJGQmZpMi8wcFRsMDh6dHhS?=
 =?utf-8?B?bFVYZGJtN1FWYmdjRG1FWC9ZQnh6amk5cUZ5S3VHVWQ0bk5CQVNnUDRMcitJ?=
 =?utf-8?B?ai9jTFpIZFpYdHdsazk3Y1ZPaWJkMWVFOU03MnpDVEZURjBRZDVTbXQ2NHlp?=
 =?utf-8?B?TWNMS3RpbURhZnU0Q1Noam1XZzFSOVFvSDNYV1FQalZ3MXVhUnhtVlZFbmN4?=
 =?utf-8?B?b1VCMFBkdS9zSU5FSEhmd0FPbVhTclN2ZVhVYU16WDg5MXpCMWdnNTVoeHBB?=
 =?utf-8?B?bUlnaGc1L3BHNVlDTmp5ME0rQjlGcUEvbUtVdVZWSTNheHZxdXZpT0tIemtE?=
 =?utf-8?B?eDFuTlB2djJRa2l2M2xCTW8wUlAzWGZsU1ZwbmJTRFdsZ0Y2L0VaOU90eGlG?=
 =?utf-8?B?YkY4NE12RVZ2dDRqWm5ESnZTa1R5V1BYKzJVeFVMeXZ2eUdoZ0ZFQlR5VzZF?=
 =?utf-8?B?WTZXbjBTc2tQZy9DNXAyNDRXKzNEb2FLTHdmdWdUSHJsM0lWaThBcmRCK3F1?=
 =?utf-8?B?NkUvMEtnODhyOG9YU2c2Nlo5cTlDSHd1VkswamhtR01EKzFHM3VPSy92Vk9y?=
 =?utf-8?B?a1l2WGwwRElUclpjNzhCRXhmbnhtZnRPREppbFBsVUQ0ZkpKWDI4STlCRVFm?=
 =?utf-8?B?T1RURXBjeDloRmxsbldzcUF3NjFFaGNDaXVlK2thR1BzalE2RFoweEhXMlkr?=
 =?utf-8?B?TW5Oc3BRdm5ibHdnOXBYNDcweU85NjBJSFhvK1hVV3NjOWJxdkpHa29aQ3c4?=
 =?utf-8?B?RkRqMlpDTnlEUkRTWHNmUnp1VW9DM2pIVTI2QjNTcXFMa0FXNzVpdlVtL0ta?=
 =?utf-8?B?T2ZFQncvS21LUS8wczkyNWZtblhaRzFuRFRJd2dPZ093VmloQXd1dFJYWGFq?=
 =?utf-8?B?dnpEdEVjN08yRGZMbWFqSFY3aVlaaExCbDgyV0hiQkhjQ01IckdPR0M0eHBh?=
 =?utf-8?B?R1FUSkJ4SGRHcUpzdTdzbzFJYUZhRm8wS1Y2WldZYzVhUG9lb29Oc0lWK1li?=
 =?utf-8?B?cnVhdmViRU5GNjBqMFBNend2VUVIS0lST2NnTG00emRYNzZFTldwTUJXaHZJ?=
 =?utf-8?B?WnlDcjZBYVhPcjZFbThKSVg2MEJoSmtTYWdZdlJwTFdjbFdGYXpydk5rM2p6?=
 =?utf-8?B?bHhpeWFiU1pSblNsNkVRRG1rMjlqRXBpR3V1Qm9hVVR4NE5MdTc5RDZmM0RP?=
 =?utf-8?B?N2NPT0RHQXd3Zk5hajNWenVJU3V6b25MTm0yQmFtdThvck00OGdkWGpoKzY2?=
 =?utf-8?B?VWRzZnFrS0pYOGJHa0tmanY1T1Vxbm9NRFI0Z0VXODMreHlRM3VZMG03UWJN?=
 =?utf-8?B?WTVzMzgzaGJjVUhZT1pHdVNjN2J4eGZrMXJZNWtyZXlmUnVaL040WmpRNkls?=
 =?utf-8?B?dzAwU2ZxYkxkUXBHTVVHclVJdS9CK09OMFBnejVuWU53cFRCaU5sUTl1enpO?=
 =?utf-8?B?UzQrczI3c2lpTmRLakREUkVERUVmM1cwMTJDbzBXSTh6WXh3d1JkZE5PYXpZ?=
 =?utf-8?B?TGR0SmVBS1QzRVJpaUJkU2ovYU1ZUU9BaWZVM1ZvR1gyNjZMWWc2bFV1bmM1?=
 =?utf-8?B?c3RYcE5UUFk3VmNneExOUT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5655.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SnlCeHJyVnA4ZElNaHlra3hneS9rUDZFa00rZElReHBIL3R0M0JPYlZoVmpO?=
 =?utf-8?B?VXgvOEZRTFU1WEdHeDhna29iOTRCSFFhQWxVNDNta001d0llb0VTV09ZQzlK?=
 =?utf-8?B?akdaQkdLZGM0T2pHRk9IVEhvMkViUjdMUTBnTXJpRndMeFpvdTF2VVYxZmFq?=
 =?utf-8?B?cFMzUEowQjdsN3M2ZVkwVDlwZXFkNXpVUi9BSE0xZWlaQXYxTVZMUkpQT2JM?=
 =?utf-8?B?RUwwMnJlaTczOTRVTXZIOXVqUEduR0pKSnpWNXVGa1NvbWJEdGoxcStJSkQx?=
 =?utf-8?B?bEM0dVdjajdrc2JXWWZEYjl2TWNXeHFCbjQxZTZGN0szNnpKeGdaYlJqM2p1?=
 =?utf-8?B?Q3ZTZGNINWtnZlk2SmpxbmFIQXJiMm5SYjlWekxSazNxT1o5dEZrWEFZRUNm?=
 =?utf-8?B?OUt0M1ZJWnN4TVBLQzh5MnZLV3lMakQ0UXRiWW5VSjFhMi9FdHVocGlFV1di?=
 =?utf-8?B?SVhSeEJLc1doSndUaVozVUpxRHlGZklmeGFIblpTS0pvb1RvYkE1WFBsK2V5?=
 =?utf-8?B?VEkzaEk4RUovQlhrekE4aGwvZUxCb3VPWlRpT1k2Z0dnQ3prOC9XZWxJWmMz?=
 =?utf-8?B?ZUk5TlFNL2tKYUJ1VFMxdk44cmpVMCs3em4vY2pULzZ6QzlYSDViNlYzRUF5?=
 =?utf-8?B?bmZmWnlLZFdXNXYyaWlZb0hxbm1zVVQ5SHlpd0s0aWVuSnZiV1Q0OUNaQjhk?=
 =?utf-8?B?UGd3TEJsbTFRVjRVZVRDb0c2T1d1WHJoeDRmZ2JoT3Z4NUpxTHczQU0rR24x?=
 =?utf-8?B?Ym10UEVzaUxMbFplWWw1SGN3Y2tsSVVTRXhuckJXZ3ZLZmJGdEUwb1lra28x?=
 =?utf-8?B?Q3pwS3d5T2FEaVk2c3N3WW9zTEhkZU9GV0p3NkhLR0hkUGplQW1UKzc3aERZ?=
 =?utf-8?B?L3YvNjR4STkxa0w5d2JsUnlpQW9FNEVpOWxYVUFlOTZ2cWJOa040UmlGa2NX?=
 =?utf-8?B?VVhRUEdNdjVlbXM2TmNkLzRzS2Q3U1FUQUJVWnE5dE96QjBTcjJpbDhIdnVl?=
 =?utf-8?B?WFc0VEZHYlppY3U1VHFBY3kwVlBBVys5UlFZTWE4MU0xbElhL1ZaU00zd1lj?=
 =?utf-8?B?L3VheG5ZYVRtbTJqR1JmUTI1dUpkeDk1bk1LNjR2ckhQdU1iS0xhSlEvcmtN?=
 =?utf-8?B?WTVGWFhuTzhwb0JYQlZIVTJ6dWN6T1BpaUNjMnA2UlhjbHh6eVBmemJ6cmRV?=
 =?utf-8?B?bVNYOWJFTzVvL1VIbFJaRVRiaDhsSFcyelNFS09QeFduWmppUUVzNkhuNnU5?=
 =?utf-8?B?VTBjQkJ0Y0p0TG9zczdlQlFWR0hzTEJQVHlwTnBGUUFwcEJxOEFJcm5WR2Jl?=
 =?utf-8?B?c1FHUVlsYjhuUW5LYWRzMldTYVNtK1ZBQzc2TlBHc2x2NjBQN2dqaXNZNTFG?=
 =?utf-8?B?aWdOQ3BCdkdWSlZ2dGFXbFdCbnQ0RTFvMzE3b3NyL2lkQWFRTUVrYTBab2hK?=
 =?utf-8?B?dnpEZjFZTHFSbDFwVURMdEtQTXl0SDhDNmJyT1pBYnphZHV6WEJvQTRWMS9L?=
 =?utf-8?B?OUI0aVYrWUZzSUs2TklTVXdtc1hZbXRoV2pOS056dHBLdHVFTW9OY003eUcx?=
 =?utf-8?B?OTJNemVHT0NhemgvOTVzL2hmamVpUHdqdEJjdCtXUHFKTUdOc2ExN2haZFY1?=
 =?utf-8?B?TE5Lc2IycDZHTmJHL1YzNGdQVFo2RUJKRHdwUnRlMGZvNXBJL2Q3T1dNaUhv?=
 =?utf-8?B?b2FzNzUrYWhXTVUxdmgydjJiSkR6SVhSOExwb2dnN2p2amJaNE9QYmh1UjBx?=
 =?utf-8?B?Vk1KSFUzaXhrWGo1L0xoekhlcjJKbmxxSThvTnNTeGRHMlhmZG5WNHVuYzhM?=
 =?utf-8?B?WlozMjFNUVo3eVA3QTNFTU8xM0hGWFArTFcvK0M2SG5aaDRnbkRlUldNSUJ1?=
 =?utf-8?B?SUJuQjMrTktCSTNiU3d3VjF3SXQwUGJZWkh5d211VmE0ak5SaHFzQXFKR3pt?=
 =?utf-8?B?S2NzdGd0bENieGxtbCtTdDNLN3d5bzE5b3RUaEtjeDdNNWdldlV2eUJ2RFV0?=
 =?utf-8?B?ekFSWjNsQnk4ajJTcVE3NFVTUG9HcTlBNFZ6Z1prdGNCbEpYcmN0SU9tWW1E?=
 =?utf-8?B?bFZ1RHVsYUlPc0xHS09GLzNPVVIzMHNkdmpZWDl3eG5ta3M4MDdkMk5DRjdx?=
 =?utf-8?Q?igTaX3WMAmR7r+xVeIa3NuAes?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5655.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0662869b-0caf-4688-022c-08dcef3a3cf8
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Oct 2024 06:00:58.9724 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7ixJ/KA1ps58R33H0HoCSvwGxYp57G0mkABMOc9CStPC9DoWSAOxY2bxQf2gI5R/kvD68N8mdS5o8ZHZRnotcA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5876
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

SGksIA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEludGVsLWdmeCA8
aW50ZWwtZ2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YNCj4g
UGF0Y2h3b3JrDQo+IFNlbnQ6IEZyaWRheSwgMTggT2N0b2JlciAyMDI0IDIuMDENCj4gVG86IFNv
dXNhLCBHdXN0YXZvIDxndXN0YXZvLnNvdXNhQGludGVsLmNvbT4NCj4gQ2M6IGludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDog4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBm
b3IgZHJtL2k5MTUveGUybHBkOiBVcGRhdGUgQzIwIEhETUkgVE1EUw0KPiBhbGdvcml0aG0gdG8g
aW5jbHVkZSB0eF9taXNjDQo+IA0KPiBQYXRjaCBEZXRhaWxzDQo+IFNlcmllczoJZHJtL2k5MTUv
eGUybHBkOiBVcGRhdGUgQzIwIEhETUkgVE1EUyBhbGdvcml0aG0gdG8gaW5jbHVkZQ0KPiB0eF9t
aXNjDQo+IFVSTDoJaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy8xNDAx
MzYvDQo+IFN0YXRlOglmYWlsdXJlDQo+IERldGFpbHM6CWh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS0NCj4gdGlwL1BhdGNod29ya18xNDAxMzZ2MS9pbmRleC5odG1sDQo+IA0K
PiBDSSBCdWcgTG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV8xNTU1MiAtPiBQYXRjaHdvcmtfMTQw
MTM2djENCj4gDQo+IA0KPiBTdW1tYXJ5DQo+IA0KPiANCj4gRkFJTFVSRQ0KPiANCj4gU2VyaW91
cyB1bmtub3duIGNoYW5nZXMgY29taW5nIHdpdGggUGF0Y2h3b3JrXzE0MDEzNnYxIGFic29sdXRl
bHkgbmVlZA0KPiB0byBiZSB2ZXJpZmllZCBtYW51YWxseS4NCj4gDQo+IElmIHlvdSB0aGluayB0
aGUgcmVwb3J0ZWQgY2hhbmdlcyBoYXZlIG5vdGhpbmcgdG8gZG8gd2l0aCB0aGUgY2hhbmdlcw0K
PiBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xNDAxMzZ2MSwgcGxlYXNlIG5vdGlmeSB5b3VyIGJ1
ZyB0ZWFtIChJOTE1LWNpLQ0KPiBpbmZyYUBsaXN0cy5mcmVlZGVza3RvcC5vcmcpIHRvIGFsbG93
IHRoZW0gdG8gZG9jdW1lbnQgdGhpcyBuZXcgZmFpbHVyZQ0KPiBtb2RlLCB3aGljaCB3aWxsIHJl
ZHVjZSBmYWxzZSBwb3NpdGl2ZXMgaW4gQ0kuDQo+IA0KPiBFeHRlcm5hbCBVUkw6IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS0NCj4gdGlwL1BhdGNod29ya18xNDAxMzZ2MS9p
bmRleC5odG1sDQo+IA0KPiANCj4gUGFydGljaXBhdGluZyBob3N0cyAoNDMgLT4gNDIpDQo+IA0K
PiANCj4gTWlzc2luZyAoMSk6IGZpLXNuYi0yNTIwbQ0KPiANCj4gDQo+IFBvc3NpYmxlIG5ldyBp
c3N1ZXMNCj4gDQo+IA0KPiBIZXJlIGFyZSB0aGUgdW5rbm93biBjaGFuZ2VzIHRoYXQgbWF5IGhh
dmUgYmVlbiBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xNDAxMzZ2MToNCj4gDQo+IA0KPiBJR1Qg
Y2hhbmdlcw0KPiANCj4gDQo+IFBvc3NpYmxlIHJlZ3Jlc3Npb25zDQo+IA0KPiANCj4gKglpZ3RA
aTkxNV9zZWxmdGVzdEBsaXZlQGFjdGl2ZToNCj4gDQo+IAkqCWZpLWdsay1qNDAwNTogUEFTUyA8
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLQ0KPiB0aXAvQ0lfRFJNXzE1NTUy
L2ZpLWdsay1qNDAwNS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQGFjdGl2ZS5odG1sPiAgLT4NCj4g
RE1FU0ctRkFJTCA8aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLQ0KPiB0aXAv
UGF0Y2h3b3JrXzE0MDEzNnYxL2ZpLWdsay1qNDAwNS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQGFj
dGl2ZS5odG1sPg0KU2VlbSBrbm93biBpc3N1ZSBidXQgZ290IGNsb3NlZCAxLDUgbW9udGhzIGFn
bzogaHR0cHM6Ly9nZngtY2kuaWdrLmludGVsLmNvbS9jaWJ1Z2xvZy1uZy9pc3N1ZS8xNDA4Nj9x
dWVyeV9rZXk9ZDM4ZDNhMmI2NjZhZmY5MzAwODU2OWFmZTEyNzY5NWFiMmRkOTQxOCANCkkgZ3Vl
c3Mgd2UgbmVlZCB0byByZS1vcGVuIHRoYXQ/IA0KDQo+IA0KPiANCj4gS25vd24gaXNzdWVzDQo+
IA0KPiANCj4gSGVyZSBhcmUgdGhlIGNoYW5nZXMgZm91bmQgaW4gUGF0Y2h3b3JrXzE0MDEzNnYx
IHRoYXQgY29tZSBmcm9tIGtub3duDQo+IGlzc3VlczoNCj4gDQo+IA0KPiBJR1QgY2hhbmdlcw0K
PiANCj4gDQo+IElzc3VlcyBoaXQNCj4gDQo+IA0KPiAqCWlndEBpOTE1X3NlbGZ0ZXN0QGxpdmU6
DQo+IA0KPiAJKgliYXQtYXJscy0xOiBQQVNTIDxodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tDQo+IHRpcC9DSV9EUk1fMTU1NTIvYmF0LWFybHMtMS9pZ3RAaTkxNV9zZWxmdGVz
dEBsaXZlLmh0bWw+ICAtPiBETUVTRy1GQUlMDQo+IDxodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDAxMzZ2MS9iYXQtYXJscy0NCj4gMS9pZ3RAaTkx
NV9zZWxmdGVzdEBsaXZlLmh0bWw+ICAoaTkxNSMxMDI2Mg0KPiA8aHR0cHM6Ly9naXRsYWIuZnJl
ZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tL2lzc3Vlcy8xMDI2Mj4gIC8NCj4gaTkxNSMx
MDM0MSA8aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tDQo+
IC9pc3N1ZXMvMTAzNDE+ICAvIGk5MTUjMTIxMzMNCj4gPGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNr
dG9wLm9yZy9kcm0vaTkxNS9rZXJuZWwvLS9pc3N1ZXMvMTIxMzM+ICkNCj4gCSoJZmktZ2xrLWo0
MDA1OiBQQVNTIDxodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tDQo+IHRpcC9D
SV9EUk1fMTU1NTIvZmktZ2xrLWo0MDA1L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmUuaHRtbD4gIC0+
IERNRVNHLQ0KPiBGQUlMIDxodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xNDAxMzZ2MS9maS1nbGstDQo+IGo0MDA1L2lndEBpOTE1X3NlbGZ0ZXN0QGxp
dmUuaHRtbD4gIChpOTE1IzEyMTMzDQo+IDxodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcv
ZHJtL2k5MTUva2VybmVsLy0vaXNzdWVzLzEyMTMzPiApDQo+IA0KPiAqCWlndEBpOTE1X3NlbGZ0
ZXN0QGxpdmVAZ2VtX21pZ3JhdGU6DQo+IA0KPiAJKgliYXQtYXJscy0xOiBQQVNTIDxodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tDQo+IHRpcC9DSV9EUk1fMTU1NTIvYmF0LWFy
bHMtMS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQGdlbV9taWdyYXRlLmh0bWw+ICAtDQo+ID4gRE1F
U0ctV0FSTiA8aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLQ0KPiB0aXAvUGF0
Y2h3b3JrXzE0MDEzNnYxL2JhdC1hcmxzLQ0KPiAxL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAZ2Vt
X21pZ3JhdGUuaHRtbD4gIChpOTE1IzEwMzQxDQo+IDxodHRwczovL2dpdGxhYi5mcmVlZGVza3Rv
cC5vcmcvZHJtL2k5MTUva2VybmVsLy0vaXNzdWVzLzEwMzQxPiApDQo+IA0KPiAqCWlndEBpOTE1
X3NlbGZ0ZXN0QGxpdmVAZ3VjX211bHRpX2xyYzoNCj4gDQo+IAkqCWJhdC1hcmxzLTE6IFBBU1Mg
PGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS0NCj4gdGlwL0NJX0RSTV8xNTU1
Mi9iYXQtYXJscy0xL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAZ3VjX211bHRpX2xyYy5odG1sPiAg
LQ0KPiA+IERNRVNHLUZBSUwgPGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS0N
Cj4gdGlwL1BhdGNod29ya18xNDAxMzZ2MS9iYXQtYXJscy0NCj4gMS9pZ3RAaTkxNV9zZWxmdGVz
dEBsaXZlQGd1Y19tdWx0aV9scmMuaHRtbD4gIChpOTE1IzEwMjYyDQo+IDxodHRwczovL2dpdGxh
Yi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5MTUva2VybmVsLy0vaXNzdWVzLzEwMjYyPiApICsxMA0K
PiBvdGhlciB0ZXN0cyBkbWVzZy1mYWlsDQo+IA0KPiANCj4gUG9zc2libGUgZml4ZXMNCj4gDQo+
IA0KPiAqCWlndEBpOTE1X21vZHVsZV9sb2FkQGxvYWQ6DQo+IA0KPiAJKgliYXQtYWRscC02OiBE
TUVTRy1XQVJOIDxodHRwczovL2ludGVsLWdmeC0NCj4gY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9D
SV9EUk1fMTU1NTIvYmF0LWFkbHAtDQo+IDYvaWd0QGk5MTVfbW9kdWxlX2xvYWRAbG9hZC5odG1s
PiAgKGk5MTUjMTIyNTMNCj4gPGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaTkx
NS9rZXJuZWwvLS9pc3N1ZXMvMTIyNTM+ICkgLT4gUEFTUw0KPiA8aHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQwMTM2djEvYmF0LWFkbHAtDQo+IDYv
aWd0QGk5MTVfbW9kdWxlX2xvYWRAbG9hZC5odG1sPg0KPiANCj4gKglpZ3RAaTkxNV9zZWxmdGVz
dEBsaXZlOg0KPiANCj4gCSoJYmF0LWFybGgtMjogRE1FU0ctRkFJTCA8aHR0cHM6Ly9pbnRlbC1n
ZngtDQo+IGNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzE1NTUyL2JhdC1hcmxoLQ0KPiAy
L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmUuaHRtbD4gIChpOTE1IzEwMzQxDQo+IDxodHRwczovL2dp
dGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5MTUva2VybmVsLy0vaXNzdWVzLzEwMzQxPiApIC0+
IFBBU1MNCj4gPGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzE0MDEzNnYxL2JhdC1hcmxoLQ0KPiAyL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmUuaHRtbD4N
Cj4gDQo+ICoJaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUB3b3JrYXJvdW5kczoNCj4gDQo+IAkqCWJh
dC1hcmxoLTI6IERNRVNHLUZBSUwgPGh0dHBzOi8vaW50ZWwtZ2Z4LQ0KPiBjaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV8xNTU1Mi9iYXQtYXJsaC0NCj4gMi9pZ3RAaTkxNV9zZWxmdGVzdEBs
aXZlQHdvcmthcm91bmRzLmh0bWw+ICAoaTkxNSM5NTAwDQo+IDxodHRwczovL2dpdGxhYi5mcmVl
ZGVza3RvcC5vcmcvZHJtL2k5MTUva2VybmVsLy0vaXNzdWVzLzk1MDA+ICkgLT4gUEFTUw0KPiA8
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQwMTM2
djEvYmF0LWFybGgtDQo+IDIvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUB3b3JrYXJvdW5kcy5odG1s
Pg0KPiAJKgliYXQtbXRscC02OiBBQk9SVCA8aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLQ0KPiB0aXAvQ0lfRFJNXzE1NTUyL2JhdC1tdGxwLTYvaWd0QGk5MTVfc2VsZnRlc3RA
bGl2ZUB3b3JrYXJvdW5kcy5odG1sPg0KPiAoaTkxNSMxMjIxNiA8aHR0cHM6Ly9naXRsYWIuZnJl
ZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tDQo+IC9pc3N1ZXMvMTIyMTY+ICkgLT4gUEFT
UyA8aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLQ0KPiB0aXAvUGF0Y2h3b3Jr
XzE0MDEzNnYxL2JhdC1tdGxwLQ0KPiA2L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAd29ya2Fyb3Vu
ZHMuaHRtbD4gICsxIG90aGVyIHRlc3QgcGFzcw0KPiANCj4gKglpZ3RAa21zX2NoYW1lbGl1bV9l
ZGlkQGhkbWktZWRpZC1yZWFkOg0KPiANCj4gCSoJYmF0LWRnMi0xMzogRE1FU0ctV0FSTiA8aHR0
cHM6Ly9pbnRlbC1nZngtDQo+IGNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzE1NTUyL2Jh
dC1kZzItDQo+IDEzL2lndEBrbXNfY2hhbWVsaXVtX2VkaWRAaGRtaS1lZGlkLXJlYWQuaHRtbD4g
IC0+IFBBU1MgPGh0dHBzOi8vaW50ZWwtDQo+IGdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xNDAxMzZ2MS9iYXQtZGcyLQ0KPiAxMy9pZ3RAa21zX2NoYW1lbGl1bV9lZGlkQGhk
bWktZWRpZC1yZWFkLmh0bWw+DQo+IA0KPiANCj4gQnVpbGQgY2hhbmdlcw0KPiANCj4gDQo+ICoJ
TGludXg6IENJX0RSTV8xNTU1MiAtPiBQYXRjaHdvcmtfMTQwMTM2djENCj4gDQo+IENJLTIwMTkw
NTI5OiAyMDE5MDUyOQ0KPiBDSV9EUk1fMTU1NTI6IDRhMWE0ZmM2NzhhMDYwNDZjYTA0NDNhMmQw
ZDYxZjIxNzRjNTZiMWQgQA0KPiBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kv
bGludXgNCj4gSUdUXzgwNzg6IDE3NWJkZGYyMDE0MWNjYWQ0MDEzMDcxOWNhNDZiZGU1MTQwZjQ4
NzIgQA0KPiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2lndC1ncHUtdG9vbHMu
Z2l0DQo+IFBhdGNod29ya18xNDAxMzZ2MTogNGExYTRmYzY3OGEwNjA0NmNhMDQ0M2EyZDBkNjFm
MjE3NGM1NmIxZCBADQo+IGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51
eA0KDQo=
