Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C287D1EF1C
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jan 2026 14:02:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73F4A10E156;
	Wed, 14 Jan 2026 13:01:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ln5SB8/b";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17FD48902A;
 Wed, 14 Jan 2026 13:01:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768395717; x=1799931717;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=mQUj651of7Rs2Qm6t537EPXNdOvKxQkK6DF+4v9S3NE=;
 b=Ln5SB8/bi+75nE0arLrHVRHEEDD9207gPMiN7n9x0qJJfKCKy7IPuFki
 HUfaGhC3gbx+EImujXs0vrGk7eUN0LHSxBYoD/B3cDGcKfo0FrRRgSRQw
 gRpqThoVKsZNiaQ5xaSvvVpc7E11Wd1K0zGEEtljVBFBAmA4YcY0TVwBK
 +Y56hoxksE4ygJIoMyYyMMbOjNuJwtj5b025VDZhtZwyUIsQjSzeQHz6n
 afnY0FZUunAbIX8bn4XlPlVWUU0AdmIPl5bfC87ZcCOYzLGtCbbrymyqa
 /wXRY/fssrD+2kkknY5Mc8pbrlpX0AT9UvDlMlRsLMg/5KoeNHMguZu6w g==;
X-CSE-ConnectionGUID: aVuSwWphSpOoZq7jcPv/5Q==
X-CSE-MsgGUID: C+fXtCjNT6CCD5+d3IF0vA==
X-IronPort-AV: E=McAfee;i="6800,10657,11671"; a="69603088"
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="69603088"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 05:01:54 -0800
X-CSE-ConnectionGUID: f5ZXZJiPQwKXq1n7syIz6w==
X-CSE-MsgGUID: +hMyLH9RTo+mg9BkvyfZiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="204565348"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 05:01:54 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 14 Jan 2026 05:01:53 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 14 Jan 2026 05:01:53 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.40)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 14 Jan 2026 05:01:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uJZ8QgWSuw3o2t717OWGQ1X2EYC6IQap7Z8W679MfZMZcezadF4wRCatmh/Wm10zSolVTiSyIzzNLx36Kcvn8gDOWEjVP3TD/AMeLl383TWxaRKvaZRbKL/x/d6/VyZgqfQvflMert5YFvtDmimoZ94PWHNBXCl694QP8etEzIIbhQiSnPphd8S4fbx8GlNHDqeLPgGXdqG3f49WTSFgK3P/dwNAgvRpGTqnOxEAq/oLpmVE5/ImBolTB5LWaaTcTolnXfZ6OSPTp38F9iooHkkVy/UdrSbYt1b0zMitVXCRYyPiWqKMLvX3r566h1rZKKve+MwKmkCN0thRjLWeYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mQUj651of7Rs2Qm6t537EPXNdOvKxQkK6DF+4v9S3NE=;
 b=uR7isaR7Jy/S62gSuRcOu177DvgUxYSkFoMoxiHaFxf7UXXxXwkwJNtnySRIxGosuK72g9aBrWp8BwC9Ux0ZNamPiTUY7y34z1PPmyBmQQFcAouUazu0T7+TSXIyndJzerh/WbKMVP5Q4d16poMqSbH2fAgHGSV/tm7RVCkRBJ4lAUPKZ8t6owf+asiUXdy1vp48Rl7TMleEA0loTvKj03DdgV5wG7WWvIWkZYxUcInF4fBEYy0jwXF4T7iYe4azypyjP/zx8rHkri8LQ2IiFDBGA9uDB9qSbz96ZCmTVu3IUQWaiEAmUFI0fmEhuTcgFbV+VXLV01JhnVYxvz4Bmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by SA3PR11MB7414.namprd11.prod.outlook.com
 (2603:10b6:806:31c::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Wed, 14 Jan
 2026 13:01:50 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::c241:4530:b5a1:30c8]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::c241:4530:b5a1:30c8%3]) with mapi id 15.20.9520.005; Wed, 14 Jan 2026
 13:01:50 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 08/15] drm/i915/display: Add helper function for fuzzy
 clock check
Thread-Topic: [PATCH v2 08/15] drm/i915/display: Add helper function for fuzzy
 clock check
Thread-Index: AQHcb2ngjFvGuJ6VXEGKM0B/pONtCLVHxfwAgAoGyvA=
Date: Wed, 14 Jan 2026 13:01:50 +0000
Message-ID: <DS4PPF69154114F9BB29E6F0F185DEE2DEEEF8FA@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20251217151955.1690202-1-mika.kahola@intel.com>
 <20251217151955.1690202-9-mika.kahola@intel.com>
 <DM3PPF208195D8DE6C38E02FC91FB1A3C2FE385A@DM3PPF208195D8D.namprd11.prod.outlook.com>
In-Reply-To: <DM3PPF208195D8DE6C38E02FC91FB1A3C2FE385A@DM3PPF208195D8D.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|SA3PR11MB7414:EE_
x-ms-office365-filtering-correlation-id: 7c93bff1-8606-4819-1bc6-08de536d1544
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?Umd6bzVOODRoeVhmamRGemlJckFYSXYrSWY5WDBhVXhDcjNYRXFoY3UwNU9v?=
 =?utf-8?B?MU1EUlR6cTIwT3JMMm15ejl4U1BoR1JmbnA3RWxDQzVVaVV0elUxTS9EZW1E?=
 =?utf-8?B?Nlo2MXJqUTdPc1VEaFVJWDQrNjJFOE5ydDlpQ2RnczRwaHBOTlpiUXZ4b1RG?=
 =?utf-8?B?bjd4b0lwRFR6MXg3QzVkOUI2dTc5dVRsL1hHVCtjUWhveENaVmJqRkJNRFRG?=
 =?utf-8?B?NmxSeENyVEtKMWlGTlVudkR0cmlRZk5zeVpDMVBlYnVwTm5vaWl1b0FRNEk4?=
 =?utf-8?B?OVlCRXhCMFRvTzhxUEVBamFQT0Roa1g3NVJtKzFpSDloa05ia2kyMGdaL0Jk?=
 =?utf-8?B?eDJwQzNxYjJPTysyQmJDMWNuZ3dWZXB0Y1VSYXI5MVpZc2JDQytWai90Mlln?=
 =?utf-8?B?cE9BSUlzYnhKNXNaYjVsak9mVVJCay9UejVYRkY3UnArekdIendIeEhzUFc0?=
 =?utf-8?B?anR6b2l2NW9NcGE2L3piZmphU1F6N2k5eGFUeE5OT3hjUStpMmdSNTdFQjZh?=
 =?utf-8?B?Y1ptdmFxeEhYRXFxUGZSV2RRQ2lYaXNCeC9Nc1dHaklvWXdjaGVjTXR5bjQ4?=
 =?utf-8?B?YTR0bVJ6eHg1dU1FZERjMmMzdXZkWEdVTWFVTWYwZUF6Z0d5bGRhM0JnaFdJ?=
 =?utf-8?B?ckJxV0tJWVpFT21wSkJ3MUxVcXpQbmx3RWtzVEdEell2bjFYUHVTeFMrbUJm?=
 =?utf-8?B?SCtpOVBEb0hkNXByUVVVVlJ5WmdtUWdXNXJjK0ZaSXp1ZU1ac0lHSGVEbnR0?=
 =?utf-8?B?bGtHYkhjYW84ZjFkVWZUNWlLRmR2NVYxdFp3d01JbmJrZHFkdi9adDVTNUFR?=
 =?utf-8?B?Mk9vL1hyYU1RVzdMdGZvWTBsSHN5Z1ErRnZaY1RLUFU0RDYxSlo0UGgwWFU5?=
 =?utf-8?B?bE9IdVNCd2ZSV0l6SUMyNEU3eDFrRkFjZ1J0dUphRFN5eWlqd1NxdzlpQjVY?=
 =?utf-8?B?Y1NRb1o4Q1pkWWRUbUhaK0RnWWJWbEl0b1k3bHV3dFBVWjB3a05DYmRlUzdJ?=
 =?utf-8?B?TkNZK1YxWS9uS1BkTDVVR2djQkVJMVl1K05nQmYvV0dYTDBMT1FZWUxZYmZt?=
 =?utf-8?B?VFh1K2NXQUNqSUNOMk1ta2hGOWwrS2NLLzFFVERwSm04bEpRVjY1czUwbmlP?=
 =?utf-8?B?VmFMVUh4SVN2dEVyR1hoQlBCWHIzTEhRejZMWUNzbHc4OVNydGxQSUxrV0F0?=
 =?utf-8?B?SGVwb01sYUVNMVVxM3ZGYzYwZDVYYzZhUEhzSmxmSjV6MVlPZFFpalhBQnFi?=
 =?utf-8?B?K2dPYlY0SFBNSHg3ZUZNL1lCeWhrb1lPSWxtY21pb2V5MkUxMmJKS3haMHVR?=
 =?utf-8?B?eTNpejJYdHl0QW9uVDd5bVp4aE9aOVlzS2dueUs1TUdVQ3MxSkg4K05QcEVB?=
 =?utf-8?B?ejhITTZTckxrZmlaK0RmRWh3ZklJbi9KQWVUa0FIZVROOXlrZGVXU1hLYmlU?=
 =?utf-8?B?Um1YbEtLSzBXdXpoV0NPNENOVVJhdHNZZ1R5aXJ6RU9XOFdLQThTVkhNT2xm?=
 =?utf-8?B?UXJMSkFTbWhTeXJ1alF0QW1tNld5WFNPb3hvaFNEU3RqakJ3NUVwNUF0a0Rq?=
 =?utf-8?B?UnFDRTFBWStGa3NCb2RkWXZZc2pwV3c4dE0wODFVdFlGeVRpNzViQ25vMVlv?=
 =?utf-8?B?TFVuaFptZkxYd2xMcGdOcGhFK0lmcC9hMTBwM0krSzVHTnQ1YnlWdXoyM1NB?=
 =?utf-8?B?Y2s0LzB5c2d2a2pHWGdmNGNmL2JkT21JeDNYNFplZjg5VVN1RXVhNTZudHFv?=
 =?utf-8?B?cmlRb0NQdmxPeGVhQ25BUnk3OVEzZnkxYUxSREJOZnhnRWRrU1lueitNMElt?=
 =?utf-8?B?aXZtaVo4VHhqSGZZcGZoaDZRN1hFVURjRE1QUFQ0VlcxV1lsY29OVkRqM3Qr?=
 =?utf-8?B?aFpVNVBMeGtjWnhUVW1MWllxeXl6Mi8wVXEySjd1OG1BejdkQU9GcGFpMXJk?=
 =?utf-8?B?MG9ZaTJiTWt6SkRWclJJd3RNRXo2WDREd1p4QTdya0dpREZ1SzhTdU9Sa2Vl?=
 =?utf-8?B?WjA0dzlxZ0lVTTl6alcySVhlRjFSTVR5UmkxMU1USnYrS2RNOXFTUmdna2hn?=
 =?utf-8?B?WGhEOW9HbEpDNGcxRTdxNW9vRDBZcnRkdEV4cS9oa1lkZkwzaGx4cy9jRlM2?=
 =?utf-8?B?cUxVN0RjMHF1aHVSYXFVMmlvMy9zMnd0c2x1NUtiT3pkSE9rTmYvWEFtQkJR?=
 =?utf-8?Q?WNebE5ujoHrYu3xcYSAaoRQ=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?T3lJb2tPcHoxYVFsQlhqcjlLcnVFTmVKSkp5bjVYMnNRdS9DMXYwanJZYndC?=
 =?utf-8?B?Tk40T3ljZG1yS1RJYnB6ZzlTRzhSY29ka1JWeG5ndytYbHQ4OFBjNlpaUXJI?=
 =?utf-8?B?bU4yV3l0MDNDa2QzbHNrREh6YzYvbnBwc1d5YjZrUzFYMWk4Q2dUY3BMS2Vr?=
 =?utf-8?B?dFJ3TjhpcEJkWUJlbi9QUTVEbkdmcVViS2dWeEwyWnU1VmF4bXdRK25tY3FF?=
 =?utf-8?B?cjVyaUd1NDhMaXVaSldkODZhQkNtbndOK1FTRTBsL1R0OGN0S0hTbG9YNDFO?=
 =?utf-8?B?RDFnamJIMnRnV01JK0RBcHVuL3JJL2RWWjFLODkwRWJTbUNQRVByMVlmY3Zr?=
 =?utf-8?B?amQ0Sm5ocTNsdVljWWFMckxMdDJBMUROdFpSd0R6b05IaHZEQ08yb0lDdW55?=
 =?utf-8?B?ZEh3QWtDVVRtQlo2dVhQOE9DRituVjZvZCtidkVFSVgzU1RtVkFLMU8wdjQ2?=
 =?utf-8?B?OHNDOHRUbE9ZSzAwbXBPLzJiQnVjVTNUR280bXNOekNHTVVWWG1SdWt1di91?=
 =?utf-8?B?QlhnS2FMNHp0dlpNZHRGc3dILzRTVjBvKy8zaWhBNWU5bHV1cmUxWDB1ZGta?=
 =?utf-8?B?VU16cVN2TnlGSVhYMjlLeHZaZmhUb0xyb1REa2d5K3BOc2VXMVVYZHhLV2V5?=
 =?utf-8?B?WVQ3ODltTE9mdElWUTlCU2Y4UkU0SjBZc0EzclF6SGxFUUgvUUJNWHUvaXU3?=
 =?utf-8?B?VjI4eGJOUVloUHF2bFg2UzRURTR4UTlQaW5aMTgwR0M2dFhUQy9FTE00S0k2?=
 =?utf-8?B?dmlmK3cwOHhQdkxUT2FiSXViZVJmK2pnOXcyZXk3UkdpNWc3anNHdEVSL0dY?=
 =?utf-8?B?L3dpajVJc3pIYkJJL0xwYlY0ZVBranVnQ2xIZmU1Rm5QeFppL3BwTUR5eHpN?=
 =?utf-8?B?alVvV1dEd05qTGN3WVBra3E0VVFJdm1PSHVHckhKMEFDeUlFSXMxQ29qUUl1?=
 =?utf-8?B?RmtqM0RoUjFBNVk2bEsrOStGTnU5amZhRjVnMkxvcGZDK2tTRWhSTUp6dFJv?=
 =?utf-8?B?K1FFNjVRK2Qza1JWb0FSTWMxSFJmam05cExxNzVGaExMbUJhQ1ljOThzeVNu?=
 =?utf-8?B?cWRMR2RibjU3cmlEZm51dFVyUzNtQVFBOTVjWld3a1I3ZVZVYTBvQ2E0QkM1?=
 =?utf-8?B?cGpYUXZCY3h3WmZ3TW9zdU1jVEdpNmNZWmRHSVFKYlFJMXM0Q29Hd1VQdDhD?=
 =?utf-8?B?MndGYVprLzFkWHhFckV5UmRtSjBZZFpZN2RRanc0TktQOUcrT25oV2NIem5l?=
 =?utf-8?B?WWV5aGxuTUlaak81SEZJaDJpSk9oM0VNUUJnUmpQek9uY0k1cU8rVGI1TTU0?=
 =?utf-8?B?ZFAxUE9PWVd6R2ZWSlFBZ0dhOE5JNnUwaG9udk53dnBEeUg1VC9LVFI2bFVN?=
 =?utf-8?B?QVlXSXB5amcwRU5lMDlWWFovZ3RVaVRpckkwUmFNRHMyMHFiaVhIdUVleUc4?=
 =?utf-8?B?Zzd6WUIyOUhyT3JRbGpOZlJ3ekxYS3daalE1UFFxNXNLRXJjbkJidzRhSDJu?=
 =?utf-8?B?TDhjRXMySWJyenZJd2hKMStBWVBWRGNESnZURjd5ZVJzQW5ibmlzNFVRWXVy?=
 =?utf-8?B?U3E4S0NRem1HUDhrNmx5bWJaTUpSN05mQ0p2SFZyLzhzZXFmY0owYkRTdGI0?=
 =?utf-8?B?Qy9wbWlQSTVVNERVaDN6YlRSZjlGVHZ4RlVDTGpwV0k2dVFmSWdkRDBtWTFN?=
 =?utf-8?B?SGZHSFNNbVhKMXVWWjIxT0w5dXFqSnIwTDM4SG9OZ0ZxSEQ2MVlCM3F2czk3?=
 =?utf-8?B?UWx3VUNLN0svYThxcFMyL0lERG5KYmVsTERnNHNhQjdFNDl1U05DS245VFZ0?=
 =?utf-8?B?RmZCR1BEWEo0Qk5HV3E3TFVqd2RvKy9VOWg0QVhuYUFsR2dOZFpMcnpqS3h2?=
 =?utf-8?B?cEJxMjNVaUgrVkk1ZTZVeCtoMnVIcFlQVE4wdjE4aVhxbDIwb0g2VFR3anhO?=
 =?utf-8?B?ZkM3SStXZkJKMVNyNUczTHh6VGg2MkxoVkhaVFRtVm1BQ2p6djE2MlZtL3d6?=
 =?utf-8?B?aGh6djhmd2ZtWmpkaXM5K3JUZGo0bll2TmswUUFXR0o5TmdoaU1nTHRvR01t?=
 =?utf-8?B?UDluTWl4dDVxaUpSZUZjcTVNUU1zTlpFalVXUHVOTTZoWTRld3YvQ3Y4cXFK?=
 =?utf-8?B?bU9XcFR3UGpoQk9iQUkrVjkralVIeVptR1lGSSs5NFpMcHdXU1BMNUNkZVdP?=
 =?utf-8?B?aEs2LzFpbUZlTStya2hIU1ZVWUF1Umw4VVI5VmtnSFdNdVlYaFFmck43N2ZF?=
 =?utf-8?B?UFNvVElDY203d3pXcTZGdW5SRy9ldEd3M3ByQ1phSWtJd0ZoYWxGYkVMZFFj?=
 =?utf-8?B?U1N3OVI0VlRkV2hVRFVLeGMwbi9sbkJrVWhJaHRZZW16bWR2VUpmUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c93bff1-8606-4819-1bc6-08de536d1544
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2026 13:01:50.6462 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cw0r1paycUMgo61GqkWpAtdOQNaebTb8fFCDczTYmHB8DhjlSd5oIM0q8KxMwZrY7eVckaoI9JyYAGGhQhvkEA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7414
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBLYW5kcGFsLCBTdXJhaiA8c3Vy
YWoua2FuZHBhbEBpbnRlbC5jb20+DQo+IFNlbnQ6IFRodXJzZGF5LCA4IEphbnVhcnkgMjAyNiA1
LjU0DQo+IFRvOiBLYWhvbGEsIE1pa2EgPG1pa2Eua2Fob2xhQGludGVsLmNvbT47IGludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0K
PiBDYzogS2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJF
OiBbUEFUQ0ggdjIgMDgvMTVdIGRybS9pOTE1L2Rpc3BsYXk6IEFkZCBoZWxwZXIgZnVuY3Rpb24g
Zm9yIGZ1enp5IGNsb2NrIGNoZWNrDQo+IA0KPiA+IFN1YmplY3Q6IFtQQVRDSCB2MiAwOC8xNV0g
ZHJtL2k5MTUvZGlzcGxheTogQWRkIGhlbHBlciBmdW5jdGlvbiBmb3INCj4gPiBmdXp6eSBjbG9j
ayBjaGVjaw0KPiA+DQo+ID4gVGhlIGhhcmQgY29kZWQgY2xvY2sgcmF0ZSBzdG9yZWQgaW4gdGhl
IFBMTCBzdGF0ZSB3aWxsIGJlIHJlbW92ZWQgYnkgYQ0KPiA+IGZvbGxvdy0gdXAgY2hhbmdlLiBQ
cmVwYXJlIGZvciB0aGF0IGhlcmUgdG8gY2FsY3VsYXRlIGluc3RlYWQgdGhlDQo+ID4gY2xvY2sg
ZnJvbSB0aGUgUExMDQo+IA0KPiBNYXliZSBmaXggdGhlIHNlbnRlbmNlIHVwIGhlcmUgYSBiaXQN
Cj4gDQo+ID4gZGl2aWRlciB2YWx1ZXMgaW4gdGhlIFBMTCBzdGF0ZS4gU2luY2UgdGhpcyBjYWxj
dWxhdGVkIGNsb2NrIGNhbiBoYXZlDQo+ID4gYSArLTEga0h6IGRpZmZlcmVuY2Ugd3J0LiB0aGUg
cmVxdWVzdCBjbG9jaywgdXNlIGEgZnV6enkgY2hlY2sgd2hlbg0KPiA+IGxvb2tpbmcgdXAgdGhl
IGNvcnJlc3BvbmRpbmcgdGFibGUgZW50cnkuDQo+ID4NCj4gPiB2MjoNCj4gPiAtIFVzZSB0aGUg
c3RyaWN0ZXIgKy0xIGtIeiBhbGxvd2VkIGRpZmZlcmVuY2UuDQo+ID4gLSBEZXJpdmUgdGhlIGNs
b2NrIGZyb20gUExMIGRpdmlkZXJzIGluIGludGVsX2N4MHBsbF9lbmFibGUoKS4NCj4gPiAtIE1v
dmUgY29ycmVzcG9uZGluZyBmdXp6eSBjaGVjayBmb3IgTFQgUEhZIFBMTHMgdG8gdGhpcyBwYXRj
aC4NCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRl
bC5jb20+DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y3gwX3BoeS5jIHwgMjYNCj4gPiArKysrKysrKysrKysrKysrKy0tLSBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuaCB8ICAxDQo+ID4gKyBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2x0X3BoeS5jICB8ICA2ICsrKystDQo+ID4gIDMgZmlsZXMgY2hh
bmdlZCwgMjggaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkNCj4gPg0KPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYw0KPiA+IGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gPiBpbmRleCBh
YjQwMmJkOGExMjUuLjRkMDA2YzE0YzA0OSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jDQo+ID4gQEAgLTIyMTEsNiArMjIxMSwxMSBA
QCBzdGF0aWMgaW50IGludGVsX2MyMHBsbF9jYWxjX3BvcnRfY2xvY2soY29uc3QNCj4gPiBzdHJ1
Y3QgaW50ZWxfYzIwcGxsX3N0YXRlICpwbGxfc3RhDQo+ID4gIAlyZXR1cm4gdmNvIDw8IHR4X3Jh
dGVfbXVsdCA+PiB0eF9jbGtfZGl2ID4+IHR4X3JhdGU7ICB9DQo+ID4NCj4gPiArYm9vbCBpbnRl
bF9jeDBwbGxfY2xvY2tfbWF0Y2hlcyhpbnQgY2xvY2sxLCBpbnQgY2xvY2syKSB7DQo+ID4gKwly
ZXR1cm4gYWJzKGNsb2NrMSAtIGNsb2NrMikgPD0gMTsNCj4gPiArfQ0KPiA+ICsNCj4gPiAgLyoN
Cj4gPiAgICogVE9ETzogQ29udmVydCB0aGUgZm9sbG93aW5nIHRvIGFsaWduIHdpdGggaW50ZWxf
YzIwcGxsX2ZpbmRfdGFibGUoKSBhbmQNCj4gPiAgICogaW50ZWxfYzIwcGxsX2NhbGNfc3RhdGVf
ZnJvbV90YWJsZSgpLg0KPiA+IEBAIC0yMjI0LDcgKzIyMjksMTAgQEAgc3RhdGljIGludA0KPiA+
IGludGVsX2MxMHBsbF9jYWxjX3N0YXRlX2Zyb21fdGFibGUoc3RydWN0DQo+ID4gaW50ZWxfZW5j
b2RlciAqZW5jb2RlciwNCj4gPiAgCWludCBpOw0KPiA+DQo+ID4gIAlmb3IgKGkgPSAwOyB0YWJs
ZXNbaV0ubmFtZTsgaSsrKSB7DQo+ID4gLQkJaWYgKHBvcnRfY2xvY2sgPT0gdGFibGVzW2ldLmNs
b2NrX3JhdGUpIHsNCj4gPiArCQlpbnQgY2xvY2sgPSBpbnRlbF9jMTBwbGxfY2FsY19wb3J0X2Ns
b2NrKHRhYmxlc1tpXS5jMTApOw0KPiA+ICsNCj4gPiArCQlkcm1fV0FSTl9PTihkaXNwbGF5LT5k
cm0sDQo+ID4gIWludGVsX2N4MHBsbF9jbG9ja19tYXRjaGVzKGNsb2NrLCB0YWJsZXNbaV0uY2xv
Y2tfcmF0ZSkpOw0KPiA+ICsJCWlmIChpbnRlbF9jeDBwbGxfY2xvY2tfbWF0Y2hlcyhwb3J0X2Ns
b2NrLCBjbG9jaykpIHsNCj4gPiAgCQkJcGxsX3N0YXRlLT5jMTAgPSAqdGFibGVzW2ldLmMxMDsN
Cj4gPiAgCQkJaW50ZWxfY3gwcGxsX3VwZGF0ZV9zc2MoZW5jb2RlciwgcGxsX3N0YXRlLCBpc19k
cCk7DQo+ID4gIAkJCWludGVsX2MxMHBsbF91cGRhdGVfcGxsKGVuY29kZXIsIHBsbF9zdGF0ZSk7
IEBAIC0NCj4gPiAyNzEwLDYgKzI3MTgsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2N4
MHBsbF9wYXJhbXMgKg0KPiA+IGludGVsX2MyMF9wbGxfZmluZF90YWJsZShjb25zdCBzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gPiAgCQkJIHN0cnVjdCBpbnRlbF9lbmNv
ZGVyICplbmNvZGVyKQ0KPiA+ICB7DQo+ID4gKwlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxh
eSA9IHRvX2ludGVsX2Rpc3BsYXkoY3J0Y19zdGF0ZSk7DQo+ID4gIAljb25zdCBzdHJ1Y3QgaW50
ZWxfY3gwcGxsX3BhcmFtcyAqdGFibGVzOw0KPiA+ICAJaW50IGk7DQo+ID4NCj4gPiBAQCAtMjcx
Nyw5ICsyNzI2LDEzIEBAIGludGVsX2MyMF9wbGxfZmluZF90YWJsZShjb25zdCBzdHJ1Y3QNCj4g
PiBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLA0KPiA+ICAJaWYgKCF0YWJsZXMpDQo+ID4g
IAkJcmV0dXJuIE5VTEw7DQo+ID4NCj4gPiAtCWZvciAoaSA9IDA7IHRhYmxlc1tpXS5uYW1lOyBp
KyspDQo+ID4gLQkJaWYgKGNydGNfc3RhdGUtPnBvcnRfY2xvY2sgPT0gdGFibGVzW2ldLmNsb2Nr
X3JhdGUpDQo+ID4gKwlmb3IgKGkgPSAwOyB0YWJsZXNbaV0ubmFtZTsgaSsrKSB7DQo+ID4gKwkJ
aW50IGNsb2NrID0gaW50ZWxfYzIwcGxsX2NhbGNfcG9ydF9jbG9jayh0YWJsZXNbaV0uYzIwKTsN
Cj4gPiArDQo+ID4gKwkJZHJtX1dBUk5fT04oZGlzcGxheS0+ZHJtLA0KPiA+ICFpbnRlbF9jeDBw
bGxfY2xvY2tfbWF0Y2hlcyhjbG9jaywgdGFibGVzW2ldLmNsb2NrX3JhdGUpKTsNCj4gPiArCQlp
ZiAoaW50ZWxfY3gwcGxsX2Nsb2NrX21hdGNoZXMoY3J0Y19zdGF0ZS0+cG9ydF9jbG9jaywgY2xv
Y2spKQ0KPiA+ICAJCQlyZXR1cm4gJnRhYmxlc1tpXTsNCj4gPiArCX0NCj4gPg0KPiA+ICAJcmV0
dXJuIE5VTEw7DQo+ID4gIH0NCj4gPiBAQCAtMzI1Miw3ICszMjY1LDYgQEAgc3RhdGljIHUzMiBp
bnRlbF9jeDBfZ2V0X3BjbGtfcGxsX2Fjayh1OA0KPiA+IGxhbmVfbWFzaykgc3RhdGljIHZvaWQg
aW50ZWxfY3gwcGxsX2VuYWJsZShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gPiAg
CQkJCWNvbnN0IHN0cnVjdCBpbnRlbF9jeDBwbGxfc3RhdGUgKnBsbF9zdGF0ZSkgIHsNCj4gPiAt
CWludCBwb3J0X2Nsb2NrID0gcGxsX3N0YXRlLT51c2VfYzEwID8gcGxsX3N0YXRlLT5jMTAuY2xv
Y2sgOiBwbGxfc3RhdGUtDQo+ID4gPmMyMC5jbG9jazsNCj4gPiAgCXN0cnVjdCBpbnRlbF9kaXNw
bGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShlbmNvZGVyKTsNCj4gPiAgCWVudW0gcGh5
IHBoeSA9IGludGVsX2VuY29kZXJfdG9fcGh5KGVuY29kZXIpOw0KPiA+ICAJc3RydWN0IGludGVs
X2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQgPSBlbmNfdG9fZGlnX3BvcnQoZW5jb2Rlcik7IEBAIC0N
Cj4gPiAzMjYwLDYgKzMyNzIsMTIgQEAgc3RhdGljIHZvaWQgaW50ZWxfY3gwcGxsX2VuYWJsZShz
dHJ1Y3QNCj4gPiBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiA+ICAJdTggbWF4cGNsa19sYW5l
ID0gbGFuZV9yZXZlcnNhbCA/IElOVEVMX0NYMF9MQU5FMSA6DQo+ID4gIAkJCQkJICBJTlRFTF9D
WDBfTEFORTA7DQo+ID4gIAlzdHJ1Y3QgcmVmX3RyYWNrZXIgKndha2VyZWYgPQ0KPiA+IGludGVs
X2N4MF9waHlfdHJhbnNhY3Rpb25fYmVnaW4oZW5jb2Rlcik7DQo+ID4gKwlpbnQgcG9ydF9jbG9j
azsNCj4gPiArDQo+ID4gKwlpZiAocGxsX3N0YXRlLT51c2VfYzEwKQ0KPiA+ICsJCXBvcnRfY2xv
Y2sgPSBpbnRlbF9jMTBwbGxfY2FsY19wb3J0X2Nsb2NrKCZwbGxfc3RhdGUtPmMxMCk7DQo+ID4g
KwllbHNlDQo+ID4gKwkJcG9ydF9jbG9jayA9IGludGVsX2MyMHBsbF9jYWxjX3BvcnRfY2xvY2so
JnBsbF9zdGF0ZS0+YzIwKTsNCj4gPg0KPiA+ICAJLyoNCj4gPiAgCSAqIExhbmUgcmV2ZXJzYWwg
aXMgbmV2ZXIgdXNlZCBpbiBEUC1hbHQgbW9kZSwgaW4gdGhhdCBjYXNlIHRoZSBkaWZmDQo+ID4g
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuaA0KPiA+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmgNCj4gPiBpbmRl
eCA5ZjEwMTEzZTJkMTguLjNkOWM1ODBlYjU2MiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuaA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5oDQo+ID4gQEAgLTQzLDYgKzQzLDcgQEAg
dm9pZCBpbnRlbF9tdGxfdGJ0X3BsbF9lbmFibGVfY2xvY2soc3RydWN0DQo+ID4gaW50ZWxfZW5j
b2RlciAqZW5jb2RlciwNCj4gPiAgCQkJCSAgICBpbnQgcG9ydF9jbG9jayk7DQo+ID4gIHZvaWQg
aW50ZWxfbXRsX3RidF9wbGxfZGlzYWJsZV9jbG9jayhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5j
b2Rlcik7DQo+ID4NCj4gPiArYm9vbCBpbnRlbF9jeDBwbGxfY2xvY2tfbWF0Y2hlcyhpbnQgY2xv
Y2sxLCBpbnQgY2xvY2syKTsNCj4gPiAgaW50IGludGVsX2N4MHBsbF9jYWxjX3N0YXRlKGNvbnN0
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLA0KPiA+ICAJCQkgICAgc3RydWN0
IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ID4gIAkJCSAgICBzdHJ1Y3QgaW50ZWxfZHBsbF9o
d19zdGF0ZSAqaHdfc3RhdGUpOyBkaWZmIC0tZ2l0DQo+ID4gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2x0X3BoeS5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2x0X3BoeS5jDQo+ID4gaW5kZXggNjRlMjIzZjM1ZmRmLi5lMzNmNmY0OGE2Y2Ug
MTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sdF9w
aHkuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHRfcGh5
LmMNCj4gPiBAQCAtMTc5Miw2ICsxNzkyLDcgQEAgaW50DQo+ID4gIGludGVsX2x0X3BoeV9wbGxf
Y2FsY19zdGF0ZShzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gPiAgCQkJ
ICAgIHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyKSAgew0KPiA+ICsJc3RydWN0IGludGVs
X2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KGNydGNfc3RhdGUpOw0KPiA+ICAJ
Y29uc3Qgc3RydWN0IGludGVsX2x0X3BoeV9wbGxfcGFyYW1zICp0YWJsZXM7DQo+ID4gIAlpbnQg
aTsNCj4gPg0KPiA+IEBAIC0xODAwLDcgKzE4MDEsMTAgQEAgaW50ZWxfbHRfcGh5X3BsbF9jYWxj
X3N0YXRlKHN0cnVjdA0KPiA+IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+ID4gIAkJ
cmV0dXJuIC1FSU5WQUw7DQo+ID4NCj4gPiAgCWZvciAoaSA9IDA7IHRhYmxlc1tpXS5uYW1lOyBp
KyspIHsNCj4gPiAtCQlpZiAoY3J0Y19zdGF0ZS0+cG9ydF9jbG9jayA9PSB0YWJsZXNbaV0uY2xv
Y2tfcmF0ZSkgew0KPiA+ICsJCWludCBjbG9jayA9IGludGVsX2x0X3BoeV9jYWxjX3BvcnRfY2xv
Y2soZGlzcGxheSwgdGFibGVzW2ldLnN0YXRlKTsNCj4gPiArDQo+ID4gKwkJZHJtX1dBUk5fT04o
ZGlzcGxheS0+ZHJtLA0KPiA+ICFpbnRlbF9jeDBwbGxfY2xvY2tfbWF0Y2hlcyhjbG9jaywgdGFi
bGVzW2ldLmNsb2NrX3JhdGUpKTsNCj4gPiArCQlpZiAoaW50ZWxfY3gwcGxsX2Nsb2NrX21hdGNo
ZXMoY3J0Y19zdGF0ZS0+cG9ydF9jbG9jaywgY2xvY2spKSB7DQo+IA0KPiBIYXZpbmcgY3gwcGxs
X2Nsb2NrX21hdGNoZXMgZ2V0IGNhbGxlZCBpbiBsdCBwaHkgc2VlbXMgYSBiaXQgd2VpcmQgV2Fz
IHRoaW5raW5nIGlmIHRoaXMgZnVuY3Rpb24gYmVsb25nIGluIEludGVsX2RwbGwuYw0KPiBpbnRl
bF9kcGxsX2Nsb2NrX21hdGNoZXMoKSBzb3VuZHMgQmV0dGVyIGFuZCBnZW5lcmFsaXplZA0KDQpZ
ZXMsIHlvdSdyZSByaWdodC4gVGhlIG5hbWluZyBkb2Vzbid0IHJlYWxseSBtYXRjaCB3aXRoIHRo
ZSBsdCBwaHkgYW55bW9yZS4gSSB3aWxsIHVwZGF0ZSB0aGlzIGZvciB0aGUgbmV4dCB2ZXJzaW9u
Lg0KDQo+IA0KPiBSZWdhcmRzLA0KPiBTdXJhaiBLYW5kcGFsDQo+IA0KPiA+ICAJCQljcnRjX3N0
YXRlLT5kcGxsX2h3X3N0YXRlLmx0cGxsID0gKnRhYmxlc1tpXS5zdGF0ZTsNCj4gPiAgCQkJaWYg
KGludGVsX2NydGNfaGFzX2RwX2VuY29kZXIoY3J0Y19zdGF0ZSkpIHsNCj4gPiAgCQkJCWlmIChp
bnRlbF9jcnRjX2hhc190eXBlKGNydGNfc3RhdGUsDQo+ID4gSU5URUxfT1VUUFVUX0VEUCkpDQo+
ID4gLS0NCj4gPiAyLjM0LjENCg0K
