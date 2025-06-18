Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA632ADEF6A
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jun 2025 16:32:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 689EA10E883;
	Wed, 18 Jun 2025 14:32:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LVmDnZBl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78A7010E87B;
 Wed, 18 Jun 2025 14:32:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750257175; x=1781793175;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3IG9KVOyUihkxmLbJQK7aciunnmitJK4CR7Uiqb9yd0=;
 b=LVmDnZBlOgSfRSlUoYpuJJk2Gc30sZa6wSbTovFcT9ABweu4w/RpiGBb
 JJaSRUn6fvv4OGcIKtXquGQqzjgD7x2aCxp7NNNuZZe2a8eDJ90wAPIck
 qnh++M+rm/l81LJE9YNHUrWeD52T2AAYmEpVj1GWiloQfI+1UqI1qwGvL
 iiepsRavLbs45lNESDRfwsbC0i6prc3PiZYhDGLJyXubWAklxOwjcDGd/
 U2pETipEvpE2QL4q1GIeSFLgYYcCUIbVyngYcJVdu8ghrLeNv//wzUvfq
 f4TCg+tleLqvaqvwKDknufeE17pxQoRd7FEL+0+sM6GILNe7/jzmz3mQb g==;
X-CSE-ConnectionGUID: HhXkRk0tQAOKKh7WLCJ10A==
X-CSE-MsgGUID: jW4rWf5zRA6TiM0XNTaVdw==
X-IronPort-AV: E=McAfee;i="6800,10657,11468"; a="69920725"
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="69920725"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 07:32:43 -0700
X-CSE-ConnectionGUID: PB/Mx/LJRX2Ue+usD/s/7A==
X-CSE-MsgGUID: jFNaldb7RRGF6+jDKH/Kfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="155111848"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 07:32:43 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 18 Jun 2025 07:32:42 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 18 Jun 2025 07:32:42 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (40.107.102.80)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 18 Jun 2025 07:32:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BhfRd3jBui1+lcMTqqdIr5UjUmHE0aCplXVuHZI7Uaj/mDHA+7L+29Z3ZeNjW7lWzMDyqUFJI2PAj9OrKqYOXjC+a/6VQW3M2m3ix9j2aW+QKQWp+WW5957z4VInOmkFXTHdSDrd0Dm5+XkfcHN+ABh9V1+cnJeuY2ZjjQ7TVHKx0k/f4pDTwmbzKw4eWfM9tghhqnLdZkZQU/eg6a2wjFwYY4ebDxeHtgdcp5gDxuT4DmUv+vlfovI8387m+edOwo2lWFthvKJCJDrCQB8MHYQdtXN47zRZ0bSliFMeML8hsYPNJo+lpS1yT4NfAzfqWPNAE4Dncc1EG+Rytluw7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3IG9KVOyUihkxmLbJQK7aciunnmitJK4CR7Uiqb9yd0=;
 b=cB7n26TXegDjNU8JSQyxmsHjiVhEVPADhUPdnDZlMQ0NMetIxegenrlCL/BP2UGJoYCVcgMs6ERgPG1iORtowaMC8438jOBU37amvKcq7LRMRfqpvDyfASYFRpltLQeJjqMdEeXH+PfxK+OUTTqwOk2rK2xHk87OGrs2e5ObxLTRQomxLeNgBYo2NC62QLNoU/V++uvgm7rOeioFLcSddFPbVrMXu1kGxKFO5mkyUq730RU6TnC3QvhJK5nofV8zfnQZpe3P0B/2I55ypkKUtW67TEepJXTMuPKGUaf995EtmH9qNb33wDg392stkxtiDsLXStnvgJ7DSo3H2M6KCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH0PR11MB4855.namprd11.prod.outlook.com (2603:10b6:510:41::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8835.18; Wed, 18 Jun 2025 14:32:39 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.8835.027; Wed, 18 Jun 2025
 14:32:39 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 6/9] drm/i915/dmc: Reload pipe DMC MMIO registers for
 pipe C/D on various platforms
Thread-Topic: [PATCH v2 6/9] drm/i915/dmc: Reload pipe DMC MMIO registers for
 pipe C/D on various platforms
Thread-Index: AQHb36q7/Rj1JxnTa0+KpAG/wF81Z7QI+zSQ
Date: Wed, 18 Jun 2025 14:32:39 +0000
Message-ID: <DM4PR11MB63602DD1C21286FE5A90B67FF472A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20250617170759.19552-1-ville.syrjala@linux.intel.com>
 <20250617170759.19552-7-ville.syrjala@linux.intel.com>
In-Reply-To: <20250617170759.19552-7-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH0PR11MB4855:EE_
x-ms-office365-filtering-correlation-id: f53f2f65-01a4-48c9-2ad6-08ddae74fa2e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?VDNCb2lLZ0l2Y2JaZWszNUo2emxKZWZmVEY1bzZtV2V3NDVHeGJNcjhtU0Fz?=
 =?utf-8?B?K1pKbDJnakNjWHFmenRnazc4eWhVK0p2WUpwTlBOLy9DbGVwTkJSay8yVkl1?=
 =?utf-8?B?NHI5Ky8ybnJWNWRjVDJyV0ZmMDRFa0E1UjhGUVZNVm9Hc05VUjhDRVYrVFY4?=
 =?utf-8?B?eWVoaGhFYzgxVGV4N29WSFcyZDBacFNyNFVBSGl1dERSZDFKR09vZ3l0R2sy?=
 =?utf-8?B?VzZzWDU3N0RIOUVGWjc0MGZMaWdDbXVuYWUzNks1aERHemZ5NG51d2FHenBp?=
 =?utf-8?B?ZVo0dmdHU1l6Q0Z5aDQzNjlUSEJqZkQvbHJ1MXlCbm1TWHUvaHBaRjhnVDZr?=
 =?utf-8?B?c2tXTUd3UE41QzRWcXYydUlWMnJ4SkhYRkg4V0hsSU0yTitJWk04MHdBNFd6?=
 =?utf-8?B?Q1M0TDNibXdhaDVzZ2ZZOFAvdSt3YS8ySmJpZlVOdStMS3cwRlhQOW9JQ2lW?=
 =?utf-8?B?Y201aTF4Ris0YzNCY0taV2NKWnFiVTlobzRYRkQwbmFYZ0VaWVJtWVU0ZERF?=
 =?utf-8?B?QW8rSmI2Y25RWXRnZDF3TzFqT0NxWnpGTzBjU2NrUTZKQmJLNTJvWTZmZVhM?=
 =?utf-8?B?WEt1WkJhNUVFZlA4WDlZRFFEQTdpdEZzcnErQmJVWmxpWGQ5V1FOcXhJSzFs?=
 =?utf-8?B?NEpidUxaY251MGlhTi9NV3Q5akhrMWpBV0VrY0NwUEZCY0ZkZ1MyTmIrL3la?=
 =?utf-8?B?OTlZanZXdjZTdm5NQ0VGd3N4TzZacThEYkw3OXFMeXhTZTliM0ZtN3h4Q2lx?=
 =?utf-8?B?dnZBelZMRThLajlMbTNCenR0aUg1c3dOV3o2bTVkQ0h1SzdTdWM0dDQwZFBz?=
 =?utf-8?B?bVJUeGdSY3ZNck40WVhxVXlvS2pFOTJ0eUJIRHpSdEtoZG1ac1JhVWhoSlBS?=
 =?utf-8?B?eExMdnljQjFJMXFIams1OHVNYWpRWjIzdVdERndzOWlTUjk0bnJXQ1NWd0w4?=
 =?utf-8?B?b25rV0ZuY2ozTXRnazJ4SWxMMXN6R0JIclNPVFdZQzNCVjF6d1FuaTVqV00r?=
 =?utf-8?B?c0RXRUo3K292cjcrUUtiWmlnUWVieDVLRk56S0gvdkVpMEhMK2V6emtJdC90?=
 =?utf-8?B?Y25BRmRENngwelc2WXY3ZFBqVkpnSVEwZDBJM2RGbXZUQ2pzRk16ZW51ZHNa?=
 =?utf-8?B?amtSSXMzd3J5TTZWMUlHTnBsaVNzbGhQdTN4alczeGFCZWo1MFhERGNEM3Fi?=
 =?utf-8?B?TVBOZjQraWdpenJGUXJta3N5SlBzNGJranI1QlErSFhMUDNxNnZhWjlyTTYy?=
 =?utf-8?B?aklwUTVmZTY1Z1ZFWkZXV3JGR3Z4T2lIbG1SUUFSekVacVYvY0haNnhWa0ZP?=
 =?utf-8?B?WjJxNGV2YU9OZFV5Z2Z5bTN0My9RUGE3czZqRmQxQkY2Z3hMMGFPZkRLOUFi?=
 =?utf-8?B?WjEvOUZGNnFJR05vRGFPTTh1TnBXNkhYNTEybGNidFFEWWF2ZUZZKyt6Z0Y1?=
 =?utf-8?B?aEtWYzh1NDdVRkFhRGc0WFdlU09GUHp5a0JoVVRmWnY4TktaMjZ0VTZmbFU2?=
 =?utf-8?B?NXdwcUpTYVVqNjdqdEYzVndXZVpOd0thaXRwNG1HV0VtMnpwZS9ldDhZWkp4?=
 =?utf-8?B?RkR4K1JNS0dPL2tzVk53ejZ0Z21kQUxOeko0N0dKRnZJMWJwSU5lamRkUUov?=
 =?utf-8?B?dDJmQklicFh4M1pzNTlzdWcxQ0lKSEFQMDJIVzJWRUdPSk9oRDMrYm0xb1Zq?=
 =?utf-8?B?ODNRQXVReHJieU9MNmx5ZXI3bSt0Yys0OTJ0OUJDQ056SVBveXg3djN4S2Rn?=
 =?utf-8?B?V055K3cxUTFFSk1ZSFY5ZnRVRDRScEljRWlMaHQ5Vm9OUmZmWjRTTWhTZHpJ?=
 =?utf-8?B?VVhaR2ozWm8rVUNvNFQvdWdZRUhCamRLeFVQdVFqclFjR21sNlViM1VLYkc1?=
 =?utf-8?B?b1lqUisxU0hKLzdBeCtSbUlNSWRWSFFVMUkwRTM1b0lEdjN6OWdybFd1bjJv?=
 =?utf-8?B?eldZampFUnd4VG4vTnpSZGx6TW1JbDc1ZU9qbGUwMjA2UTVFY0F3aFE1RGJQ?=
 =?utf-8?Q?9QNc998NykqHPsYPfRe1pOEFnOPs74=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RXMzYWVFL0tSRXFWY0Q3SGYrZHB1Zllnd04wdmd0VUlDSHU4QXJ0U3EwMHpi?=
 =?utf-8?B?R2lqOExyYUk2TCtOWWc0Z01vR0x0d2xFMkRoQlBlb0dxVm1KN2hGMldHSmhT?=
 =?utf-8?B?ZklmcXlnM1V2QjlqSjA2VGg5VmN3NTY0eEt2dzJJL2ExY01lYjNHdHRMOWNC?=
 =?utf-8?B?V2J2d2xyNlUySVJ6RERoZ1F3bzRnN1hSSGJYOVY1ZVpCeXBWOG9qZ2ZuYVJF?=
 =?utf-8?B?dmdYZTdIbHcycjZ4YlBhTFhYRDVQbXJqNnZPRkxYTmpJSjAvcWdQNEtOTm50?=
 =?utf-8?B?T2VzUlRKbStXQkpuT0tzSEc2OUI1dFVPN1JzbEJUZnkxVXRlYkNMYnQ3OHlh?=
 =?utf-8?B?TjhEOEwyT2dTZHR3NXBCdEVVVUNoK2dVbGVxQXZSclI1U0x3NHBaL24vUy80?=
 =?utf-8?B?eGIxYUR1NVlEaXJiNGJ5SG1HaTZCUDN3QUI3eHlIalM1ZmE5Q3BHVlBvaW02?=
 =?utf-8?B?Zzl1alRRdE0wSmtUclFXNEIwNkFrNXQyVnlTc0RWeVpXN3ZCb1VWRklUQ2Zk?=
 =?utf-8?B?MHhpeW9MZnQwWDJId0k2M1FHMjNSQ1NiNFV6aU5sWE1GS2oxUVlvOU1WQlNt?=
 =?utf-8?B?d21Eam5ibDROVkc4WU9EeDNkeUlobTNETXNTeVZNb2tKV0FYUVN6Z1I1Wlpy?=
 =?utf-8?B?RWtrQWhOWEdlNlEwUjI4Nnpjc2RsemFkZ1Z1MFVyRzU3ZTVzNi8zRjJCanhl?=
 =?utf-8?B?VjJuVmwyanVIMFB6UzBQWDhjcGx3R3lxdFhETDBzaXJnZlpCUFZGVXFnZWtO?=
 =?utf-8?B?QzVNN1NUaDZOTjB4cllPZnhnaE1MRVBmZGttNFlieTNMMEkrcmVGTWtJcUNX?=
 =?utf-8?B?Z3V2QXNlRXZkOVJsYUNTMUJqUGc5c3doaDNsTkpCTy9RR1VhMzU1bDZ6UVRo?=
 =?utf-8?B?elVTWXZtK00zL1JyMVp6Q1pEMlFKU1N0MlZDVXpiNnNsUlkwMzRBSFE3ckZr?=
 =?utf-8?B?L0ZiWTBlQ3FKdW5PRnFtM29EcXp6Qy93TlNncXVVRnh5NHIzdC9TYUx2SjhJ?=
 =?utf-8?B?ZGgxSThlR2RjWjhLY3RSUWdxajg5TTIzL0lwZlZYZVQvdmJXMHhLbDAxVVJV?=
 =?utf-8?B?NUNpSzllWGtKUHcyRUc5ckJ6ZzUvK2owOVVPa3BabmpPTXhHMVBPMThFc3Rw?=
 =?utf-8?B?S3RzaE05N3U2RnpHU3A5QzhSc0U4dzBib2hUL1dXQmxXRmRGcWNrbnlHb0o3?=
 =?utf-8?B?UHBDVFE5OEdrYUdaVHJocXJxUjBldS9HWFVsekZTaWNNMWNsOVBmWSszZXU1?=
 =?utf-8?B?Mi9CNGJPdGJvMk8yWGcrdlRDM2Z1Y1psQjU1K1pnQWdqZkVwVE1VS3V5Vk5k?=
 =?utf-8?B?bEZmMUNDWTVTRjhERGhMNWFHSURrb0Y4V29nL3RicExLaUNBczFHeGhrNnJq?=
 =?utf-8?B?U1ZuYm9PUzBLY2J4TGwyclIzYlBkQjdsUHZaOFkyTU5uWnNPdTVuVURRVGN4?=
 =?utf-8?B?L0Exa3lKNUR0cVZlSit1ZXFOQ2dPeXBDRWREMU1QRmhINmZkRVN1M3BHaW51?=
 =?utf-8?B?UTczRFJjR2hkbEkvVDhLcWorZzNQRnpnZVlCVFZndTBoRzBxUlFOY2p1bHpK?=
 =?utf-8?B?dnZ5Vm43S3FoSEQ3ZURiemJ3dGp4RzNoS1NUTzg1NVNzbU16Z2VxVWNNbVFk?=
 =?utf-8?B?eVlGNkMzdjk1aUsvRW44NmRMcVBQaWlmUnBRSEpwVlpoL2lzZVpvTDdxWUlG?=
 =?utf-8?B?bDBFUktOdUNjY3Y2OXdEcHJQS2xvWjNtOHFYUzh4eHJ5ZHJ3WHgzb2ZrOEpv?=
 =?utf-8?B?OWFUSTVOVHQ1Rk1yZk1JQ3BlRk41N3Rtc3doWlhZVnRRQU0vZGxJelI1RzFO?=
 =?utf-8?B?UDZ4aHBWMGdHMm0vdEx1eEJBcFo3d0FOa3d3bVcvNWlocytkeHF5TlMzU0NF?=
 =?utf-8?B?VTVhOFZmTldyNHVIZHY3NXNLVVhsSm1KSmhkckpwY0dHRnVvZmc2V29YTGwr?=
 =?utf-8?B?WHZuWG1lMXNSQWpHbjRuUTVVeHBjTGFtZU9URXA2ZWVZY0l4SDgxdWpObHV0?=
 =?utf-8?B?Uk8yR3J4dk56bEhWTnNVUjhGSE91eG0vRWFmTGRzbUNhbDhScjJGQ1YyaGR0?=
 =?utf-8?B?Zm9tMGlUaHlIQjRGKzdOaC9vQmE0b1Y5YlkyaDFtdXJjN0JIYUxQZkRjMUdu?=
 =?utf-8?Q?okxJfHFME5t0yby8jWGbsg1sI?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f53f2f65-01a4-48c9-2ad6-08ddae74fa2e
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2025 14:32:39.3099 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1N7H4Ad6rU1VY7jH3bRe+m1SBQ8gzQ0z9xjFcmdXF01En8JtbL6ww8VtaYBCQU5f7TrMXMZ163VP+H6fx6P2Xw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4855
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwteGUgPGludGVs
LXhlLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgVmlsbGUNCj4g
U3lyamFsYQ0KPiBTZW50OiBUdWVzZGF5LCBKdW5lIDE3LCAyMDI1IDEwOjM4IFBNDQo+IFRvOiBp
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBpbnRlbC14ZUBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIHYyIDYvOV0gZHJtL2k5MTUvZG1jOiBSZWxv
YWQgcGlwZSBETUMgTU1JTyByZWdpc3RlcnMgZm9yIHBpcGUNCj4gQy9EIG9uIHZhcmlvdXMgcGxh
dGZvcm1zDQo+IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPg0KPiANCj4gT24gQURML01UTCBwaXBlIERNQyBNTUlPIHN0YXRlIGV2aWRlbnRs
eSBsaXZlcyBpbiBQRzAuIFRoZSBtYWluIERNQw0KPiBzYXZlcy9yZXN0b3JlcyBpdCBmb3IgcGlw
ZXMgQS9CLCBidXQgZm9yIHBpcGVzIEMvRCB3ZSBoYXZlIHRvIGRvIGl0IGluIHRoZSBkcml2ZXIu
DQo+IA0KPiBPbiBQVEwgdGhlIHNpdHVhdGlvbiBpcyBtb3N0bHkgdGhlIHNhbWUsIGV4Y2VwdCB0
aGUgbWFpbiBETUMgZmlybXdhcmUgZG9lc24ndA0KPiBzZWVtIHRvIGhhdmUgdGhlIFBHMCBzYXZl
L3Jlc3RvcmUgY29kZSBhbnltb3JlLCBhbmQgaW5zdGVhZCB0aGUgaGFyZHdhcmUgKG9yDQo+IG1h
eWJlIFB1bml0Pykgc2VlbXMgdG8gdGFrZSBjYXJlIG9mIHRoaXMgam9iIG5vdy4gUGlwZXMgQy9E
IHN0aWxsIG5lZWQgYSBtYW51YWwNCj4gcmVzdG9yZSBieSB0aGUgZHJpdmVyLg0KPiANCj4gT24g
TE5MIEkndmUgYmVlbiB1bmFibGUgdG8gbG9zZSBhbnkgcGlwZSBETUMgc3RhdGUsIGRlc3BpdGUg
dGhlIG1haW4gRE1DDQo+IGZpcm13YXJlIHN0aWxsIGltcGxlbWVudGluZyB0aGUgUEcwIHNhdmUv
cmVzdG9yZSBmb3IgcGlwZXMgQS9CLg0KPiBOb3Qgc3VyZSB3aGF0J3MgZ29pbmcgb24gaGVyZS4N
Cj4gDQo+IE9uIERHMiBJJ3ZlIGFsc28gbm90IGJlZW4gYWJsZSB0byBsb3NlIHRoZSBwaXBlIERN
QyBzdGF0ZS4gREcyIGRvZXNuJ3Qgc3VwcG9ydA0KPiBEQzYsIHNvIHRoYXQgbWlnaHQgZXhwbGFp
biBwYXJ0IG9mIGl0LiBCdXQgZXZlbg0KPiBEQzkgZG9lc24ndCBtYWtlIGEgZGlmZmVyZW5jZSBo
ZXJlLiBQZXJoYXBzIFBHMCBpcyBqdXN0IGFsd2F5cyBvbiBmb3IgREcyPw0KPiANCj4gQk1HIEkn
dmUgbm90IHRlc3RlZCBhdCBhbGwuIFRoZSBtYWluIERNQyBmaXJtd2FyZSBkb2VzIGFwcGFlciB0
byBpbXBsZW1lbnQgdGhlDQo+IFBHMCBwaXBlIEEvQiBzYXZlL3Jlc3RvcmUgbG9naWMuDQoNCk5p
Y2UgdG8gZ2V0IHRoZSBiZWhhdmlvdXIgb24gYWxsIHRoZSBwbGF0Zm9ybXMsIEkgdGhpbmsgd2Ug
Y2FuIGV2ZW4gYXNrIERNQyB0ZWFtIHRvIGdldA0KdGhpcyBwcm9wZXJseSBkb2N1bWVudGVkIGlu
IHNwZWMgYXMgd2VsbC4gDQoNCkNoYW5nZXMgTG9vayBHb29kIHRvIG1lLg0KUmV2aWV3ZWQtYnk6
IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RtYy5jIHwgNjcgKysrKysrKysr
KysrKysrKysrKysrLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgNjEgaW5zZXJ0aW9ucygrKSwgNiBk
ZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RtYy5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
bWMuYw0KPiBpbmRleCBmZDk5YzQ2NDUyNjAuLmRkMTVkMzVmYmFlOCAxMDA2NDQNCj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWMuYw0KPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RtYy5jDQo+IEBAIC01NzUsOCArNTc1LDE4IEBA
IHN0YXRpYyB1MzIgZG1jX21taW9kYXRhKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LA0K
PiAgCQlyZXR1cm4gZG1jLT5kbWNfaW5mb1tkbWNfaWRdLm1taW9kYXRhW2ldOw0KPiAgfQ0KPiAN
Cj4gLXN0YXRpYyB2b2lkIGRtY19sb2FkX3Byb2dyYW0oc3RydWN0IGludGVsX2Rpc3BsYXkgKmRp
c3BsYXksDQo+IC0JCQkgICAgIGVudW0gaW50ZWxfZG1jX2lkIGRtY19pZCkNCj4gK3N0YXRpYyB2
b2lkIGRtY19sb2FkX21taW8oc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksIGVudW0NCj4g
K2ludGVsX2RtY19pZCBkbWNfaWQpIHsNCj4gKwlzdHJ1Y3QgaW50ZWxfZG1jICpkbWMgPSBkaXNw
bGF5X3RvX2RtYyhkaXNwbGF5KTsNCj4gKwlpbnQgaTsNCj4gKw0KPiArCWZvciAoaSA9IDA7IGkg
PCBkbWMtPmRtY19pbmZvW2RtY19pZF0ubW1pb19jb3VudDsgaSsrKSB7DQo+ICsJCWludGVsX2Rl
X3dyaXRlKGRpc3BsYXksIGRtYy0+ZG1jX2luZm9bZG1jX2lkXS5tbWlvYWRkcltpXSwNCj4gKwkJ
CSAgICAgICBkbWNfbW1pb2RhdGEoZGlzcGxheSwgZG1jLCBkbWNfaWQsIGkpKTsNCj4gKwl9DQo+
ICt9DQo+ICsNCj4gK3N0YXRpYyB2b2lkIGRtY19sb2FkX3Byb2dyYW0oc3RydWN0IGludGVsX2Rp
c3BsYXkgKmRpc3BsYXksIGVudW0NCj4gK2ludGVsX2RtY19pZCBkbWNfaWQpDQo+ICB7DQo+ICAJ
c3RydWN0IGludGVsX2RtYyAqZG1jID0gZGlzcGxheV90b19kbWMoZGlzcGxheSk7DQo+ICAJaW50
IGk7DQo+IEBAIC01OTMsMTAgKzYwMyw3IEBAIHN0YXRpYyB2b2lkIGRtY19sb2FkX3Byb2dyYW0o
c3RydWN0IGludGVsX2Rpc3BsYXkNCj4gKmRpc3BsYXksDQo+IA0KPiAgCXByZWVtcHRfZW5hYmxl
KCk7DQo+IA0KPiAtCWZvciAoaSA9IDA7IGkgPCBkbWMtPmRtY19pbmZvW2RtY19pZF0ubW1pb19j
b3VudDsgaSsrKSB7DQo+IC0JCWludGVsX2RlX3dyaXRlKGRpc3BsYXksIGRtYy0+ZG1jX2luZm9b
ZG1jX2lkXS5tbWlvYWRkcltpXSwNCj4gLQkJCSAgICAgICBkbWNfbW1pb2RhdGEoZGlzcGxheSwg
ZG1jLCBkbWNfaWQsIGkpKTsNCj4gLQl9DQo+ICsJZG1jX2xvYWRfbW1pbyhkaXNwbGF5LCBkbWNf
aWQpOw0KPiAgfQ0KPiANCj4gIHN0YXRpYyBib29sIG5lZWRfcGlwZWRtY19sb2FkX3Byb2dyYW0o
c3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpIEBAIC02MDUsNg0KPiArNjEyLDUyIEBAIHN0
YXRpYyBib29sIG5lZWRfcGlwZWRtY19sb2FkX3Byb2dyYW0oc3RydWN0IGludGVsX2Rpc3BsYXkN
Cj4gKmRpc3BsYXkpDQo+ICAJcmV0dXJuIERJU1BMQVlfVkVSKGRpc3BsYXkpID09IDEyOw0KPiAg
fQ0KPiANCj4gK3N0YXRpYyBib29sIG5lZWRfcGlwZWRtY19sb2FkX21taW8oc3RydWN0IGludGVs
X2Rpc3BsYXkgKmRpc3BsYXksIGVudW0NCj4gK3BpcGUgcGlwZSkgew0KPiArCS8qDQo+ICsJICog
UFRMOg0KPiArCSAqIC0gcGlwZSBBL0IgRE1DIGRvZXNuJ3QgbmVlZCBzYXZlL3Jlc3RvcmUNCj4g
KwkgKiAtIHBpcGUgQy9EIERNQyBpcyBpbiBQRzAsIG5lZWRzIG1hbnVhbCBzYXZlL3Jlc3RvcmUN
Cj4gKwkgKi8NCj4gKwlpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPT0gMzApDQo+ICsJCXJldHVy
biBwaXBlID49IFBJUEVfQzsNCj4gKw0KPiArCS8qDQo+ICsJICogRklYTUUgTE5MIHVuY2xlYXIs
IG1haW4gRE1DIGZpcm13YXJlIGhhcyB0aGUgcGlwZSBETUMgQS9CIFBHMA0KPiArCSAqIHNhdmUv
cmVzdG9yZSwgYnV0IHNvIGZhciB1bmFibGUgdG8gc2VlIHRoZSBsb3NzIG9mIHBpcGUgRE1DIHN0
YXRlDQo+ICsJICogaW4gYWN0aW9uLiBBcmUgd2UganVzdCBmYWlsaW5nIHRvIHR1cm4gb2ZmIFBH
MCBkdWUgdG8gc29tZSBvdGhlcg0KPiArCSAqIFNvQyBsZXZlbCBzdHVmZj8NCj4gKwkgKi8NCj4g
KwlpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPT0gMjApDQo+ICsJCXJldHVybiBmYWxzZTsNCj4g
Kw0KPiArCS8qDQo+ICsJICogRklYTUUgQk1HIHVudGVzdGVkLCBtYWluIERNQyBmaXJtd2FyZSBo
YXMgdGhlDQo+ICsJICogcGlwZSBETUMgQS9CIFBHMCBzYXZlL3Jlc3RvcmUuLi4NCj4gKwkgKi8N
Cj4gKwlpZiAoZGlzcGxheS0+cGxhdGZvcm0uYmF0dGxlbWFnZSkNCj4gKwkJcmV0dXJuIGZhbHNl
Ow0KPiArDQo+ICsJLyoNCj4gKwkgKiBERzI6DQo+ICsJICogLSBQaXBlIERNQ3MgcHJlc3VtYWJs
eSBpbiBQRzA/DQo+ICsJICogLSBObyBEQzYsIGFuZCBldmVuIERDOSBkb2Vzbid0IHNlZW0gdG8g
cmVzdWx0DQo+ICsJICogICBpbiBsb3NzIG9mIERNQyBzdGF0ZSBmb3Igd2hhdGV2ZXIgcmVhc29u
DQo+ICsJICovDQo+ICsJaWYgKGRpc3BsYXktPnBsYXRmb3JtLmRnMikNCj4gKwkJcmV0dXJuIGZh
bHNlOw0KPiArDQo+ICsJLyoNCj4gKwkgKiBBREwvTVRMOg0KPiArCSAqIC0gcGlwZSBBL0IgRE1D
IGlzIGluIFBHMCwgc2F2ZWQvcmVzdG9yZWQgYnkgdGhlIG1haW4gRE1DDQo+ICsJICogLSBwaXBl
IEMvRCBETUMgaXMgaW4gUEcwLCBuZWVkcyBtYW51YWwgc2F2ZS9yZXN0b3JlDQo+ICsJICovDQo+
ICsJaWYgKElTX0RJU1BMQVlfVkVSKGRpc3BsYXksIDEzLCAxNCkpDQo+ICsJCXJldHVybiBwaXBl
ID49IFBJUEVfQzsNCj4gKw0KPiArCXJldHVybiBmYWxzZTsNCj4gK30NCj4gKw0KPiAgdm9pZCBp
bnRlbF9kbWNfZW5hYmxlX3BpcGUoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksIGVudW0g
cGlwZSBwaXBlKSAgew0KPiAgCWVudW0gaW50ZWxfZG1jX2lkIGRtY19pZCA9IFBJUEVfVE9fRE1D
X0lEKHBpcGUpOyBAQCAtNjE0LDYgKzY2Nyw4DQo+IEBAIHZvaWQgaW50ZWxfZG1jX2VuYWJsZV9w
aXBlKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LCBlbnVtIHBpcGUgcGlwZSkNCj4gDQo+
ICAJaWYgKG5lZWRfcGlwZWRtY19sb2FkX3Byb2dyYW0oZGlzcGxheSkpDQo+ICAJCWRtY19sb2Fk
X3Byb2dyYW0oZGlzcGxheSwgZG1jX2lkKTsNCj4gKwllbHNlIGlmIChuZWVkX3BpcGVkbWNfbG9h
ZF9tbWlvKGRpc3BsYXksIHBpcGUpKQ0KPiArCQlkbWNfbG9hZF9tbWlvKGRpc3BsYXksIGRtY19p
ZCk7DQo+IA0KPiAgCWlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA+PSAyMCkgew0KPiAgCQlpbnRl
bF9kZV93cml0ZShkaXNwbGF5LCBQSVBFRE1DX0lOVEVSUlVQVChwaXBlKSwNCj4gcGlwZWRtY19p
bnRlcnJ1cHRfbWFzayhkaXNwbGF5KSk7DQo+IC0tDQo+IDIuNDkuMA0KDQo=
