Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC0E9C4B702
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Nov 2025 05:14:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16DAD10E12D;
	Tue, 11 Nov 2025 04:14:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GEF676oM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE00D10E12D;
 Tue, 11 Nov 2025 04:14:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762834491; x=1794370491;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ojBjL0vw24yBAc97ew1FTlK5fVEVNrgNmFkdoeVBeZU=;
 b=GEF676oMrsAz/4VzoczMS7HDQlm5zdzgiChQgbszrXgM/22ceSMtrwPp
 s50G9p2RuMcgh9Bi6LrdIwwDFdG1rNOLrjAvlWykbPg4jpq3O4SlpDoyQ
 qGiqZh5L0rRZMa9jjEgv6Z8kaSBRRKC+zJk4HKwPiNS7xrBpftbcvm3/7
 ePDUVAJ30SoHfyIPEis1w1iciEu1lwtKkrjYMPw7jH4PlcttU7szuPNqS
 3pcLJ0BmRx6T7zmkaOcfTJa4lOnEYKF1qMVMxeEaeYFWnxZ7cQRFxrvBs
 ZMYWPMuciWM/fop9Xbl4ubWLNngG5TjyzTS6xQuYDDoWMGWCtedwqKkHw g==;
X-CSE-ConnectionGUID: bER64W+zQ9WVkZWnCnPLOw==
X-CSE-MsgGUID: gp/5vmzkTxydcsd7T/3eUg==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="75578484"
X-IronPort-AV: E=Sophos;i="6.19,295,1754982000"; d="scan'208";a="75578484"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 20:14:50 -0800
X-CSE-ConnectionGUID: YTVXKU3xQHOzyzMeD0Wzkw==
X-CSE-MsgGUID: e9/IDpb4TWeguWBed1iIWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,295,1754982000"; d="scan'208";a="193243503"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 20:14:50 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 20:14:49 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 10 Nov 2025 20:14:49 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.25) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 20:14:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iv0E88khpzKzy9Trj0OgcZFnViICF02B2LwaYUkt1Sm7kVE2b+C2hBMvwwkYGkhKaW9UzD7MrQf4R0XAjhj+mkIMIjubUPXqN4Z4gxrBhTu43UdWAxw/MW1SjUo09IzlmLVgNYEojCmElTWkgpqV6rgNu3NgiZiKHNst9EJW2hiRKMsHpfFOJvWtHVCzi/zJGu6WbbHO2ieCwRbmiaySiRdg+CSo2t4ncTRUmEQ//M9ChhFub4PlUUGF7VIkswIhQv/W8Kp93FDW4025OHpR4K6l2giB1fnuJZInBIhS1152Byq66ImDt4Q9GbdbGNhOyQ59j8cXUNYkRlkern2Vew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ojBjL0vw24yBAc97ew1FTlK5fVEVNrgNmFkdoeVBeZU=;
 b=QoPb5ULeeI+Iy2occ1bSEBOCZrbYaVcwwCBOm5w8MnM5URh3czAC31Pan0+dfWJ3a4RhUJHKnQge5I6nyfpi3rxYjUmqpZ3052sbIi4TcJYp03X15864bqVhkTfWJ9dS9jmX3G/dCrLxUKtnZDfTmtxHJYLJVkHUrjR4240OiR44hFBeuT3X2OanXesTe9802547MsreWf2Js3GLEAOJEX5rxuylP3WyIZFK/MymJ/SUMtnAFAGV9t6e96y00myeY/1eKPgf/JIDfzLYfPkt8toUlSViVtw4CZq97Uk4BZ9cAy6vbXy7rN+eDr529cL2QN+8mwURXPH1eT4CFRjbrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8937.namprd11.prod.outlook.com (2603:10b6:208:57c::14)
 by SN7PR11MB6559.namprd11.prod.outlook.com (2603:10b6:806:26d::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.16; Tue, 11 Nov
 2025 04:14:41 +0000
Received: from IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3]) by IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3%4]) with mapi id 15.20.9298.015; Tue, 11 Nov 2025
 04:14:41 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 02/16] drm/i915/de: Have intel_de_wait() hand out the
 final register value
Thread-Topic: [PATCH 02/16] drm/i915/de: Have intel_de_wait() hand out the
 final register value
Thread-Index: AQHcUmdvy1GzPAc7zUKue863+2Ml8LTs3lAA
Date: Tue, 11 Nov 2025 04:14:41 +0000
Message-ID: <IA3PR11MB8937E1090C145EF04E1F0E45E3CFA@IA3PR11MB8937.namprd11.prod.outlook.com>
References: <20251110172756.2132-1-ville.syrjala@linux.intel.com>
 <20251110172756.2132-3-ville.syrjala@linux.intel.com>
In-Reply-To: <20251110172756.2132-3-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8937:EE_|SN7PR11MB6559:EE_
x-ms-office365-filtering-correlation-id: 933313b8-d256-44de-7c72-08de20d8d68f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?YWJud0VBQ1FBbHM2a1Y0TitqN3R2NW1wYW9NeVdHWGFETUtvTElWNXp5eCs1?=
 =?utf-8?B?NFZIS2hHaU1aakdWUWxJZjJEWk1aQnRjQlVESHRXaWc2d2E3aG5Qa3J1Q0h1?=
 =?utf-8?B?TjdNU2VDWTR5Slhmbm03TDNkTGdpNmxkRDF2MkFLTXM4bVlwa09YZFcweXpQ?=
 =?utf-8?B?Y1pVekJhcFpoNU9nNnZ6SXpXT0Zzdkd3cHhIb0JvdXZiazdSTFE2MG9mVlJK?=
 =?utf-8?B?c1ZpbnRTNDJCUGJQOVJOSTV2dTRyKzdna1V1TFBqQVZ2dTY4b3dzOXBINTY5?=
 =?utf-8?B?MG9GUTFtU29hYjZBWno3Y3k4dE1YSlUybzUzZTQwZy9WMmJnUmZLU05iaDVF?=
 =?utf-8?B?aXFib3lldzVEVWlzZ0d4eSt4cnBrbHZRVlQzT2YxakVhRmppc1pJS2t0VzNI?=
 =?utf-8?B?NVZkTEVVVWZ5YXVGZnNjdWlKRDMrajdSUjFZcDlFWktmOXQ0RnBFckpMODVM?=
 =?utf-8?B?NlNnOGlWQnFIMjVpUGxEaGM1NStLQkxVcFVxSlB5NThucG9TL3R2cVlQV0Vn?=
 =?utf-8?B?eGVQbDBrS2tzNzBhTU42S2NXdDR3cVB2RExZS0w3dHM1aVhtM29WZnRmQTJV?=
 =?utf-8?B?RnBHYmx2R3NlWGNqd2JjbGVTTmRMeS91MUdwcVNiK0Y0cmNhdmpTem5NaTRr?=
 =?utf-8?B?MUcxM2gzRGdIbzRwUDEvREMvb3h2K2VRYUs2aXRNUmtaZlJxOFpZUkNXMkp3?=
 =?utf-8?B?R3Y0NG56WGlGSjlpeldXdGF5NUVreUxiTGZEelRaWjBaN1NZQndiSGtnUUh1?=
 =?utf-8?B?S1BxTkVwVXpDZWpmMHcreVdaZ2swMXo5eXpLRno0ZHpLRTV6NXpDZkJmTXlM?=
 =?utf-8?B?NjhGQzUyaWNxdm9HTEJwcUFqUHpYSEVvb3hLZzMrcVQvREtOcCs0c1pDOGtX?=
 =?utf-8?B?Z3BlOXEwdXJDdEQvTWFKcFJEWHlZY2poYWEvdTZWVGJyR0NNR3A5Y2s2MEN5?=
 =?utf-8?B?Y0lRbDJkUHduUjdXQklrRmU2WEhBNjgrajIvRjRQK2pMV0ZXYjVGV2M0MXFi?=
 =?utf-8?B?K0xCQWtVR0cvRGJiVkRqK1FEQlArd2VSRkFsTnc1RVZjZkhRNjBXQ011L2Iw?=
 =?utf-8?B?b284bWlCQ3VSTXB2QTZGUjdVYzltMEdPY1RKbzF4VERqbHFQOVBZVjEzdkdw?=
 =?utf-8?B?TmlYMXpSQiticU94eGxJbUIxYjZkdEIwaUswa2tHVjFqWDJPZTN6UXVZeUhC?=
 =?utf-8?B?ZnA0NHdBQVNtWWxSR1BrKzJZTnMrbC96UXJKZmtDWm01K0NRb3NZcGJHRzlu?=
 =?utf-8?B?MXRBayswNFgwVXJEdFpZZjF5ME9peVhYVi9wZUZ3Y0pvQXlCRWY0K2NoRy9H?=
 =?utf-8?B?Q3ZMME9MempzTGJLVFRVaUlkRXBxSmZ3cHhTMVRaVXdoRlBid3dYb28xS0hy?=
 =?utf-8?B?c0s0M3JMNk9NVDIxemQwcWF3c3h5cXYrcTRKaU10UW52ci82czk4ZTJhRERO?=
 =?utf-8?B?RXV4KzQzemN4cDlHaHVlUFFOZnNrVTc3VEFIck1vRit6Q2djOHN5R1VtUGVB?=
 =?utf-8?B?ZXNWSXhPWFhsbjhyeE11ZFIyOVJRRVVoWXpvS3BIZlAzRnFyUFFNZDg5VFVO?=
 =?utf-8?B?QzlZSHVIbnozaWZYRkZJZDlKTTBFeFMyRGxHUWNnUUpjNldzek1HbUtKRm1t?=
 =?utf-8?B?UkxPRVlBME0rS0NBTzRUL3Z5RXJnM0RuUUI0WDZ0RXZENEtnMWlUam54SVUr?=
 =?utf-8?B?OHJYVzVhRmZuS0N1Q3d5WnFwOG1kdlBMZ2VSNENDYjJLYUl5YndqNmlRb0M3?=
 =?utf-8?B?bTl1SCtqOUJyNlFIZlVMNEFPNmc0TXFhd3A2Kzd4N1RpQzhnS2dIZzdjVkl0?=
 =?utf-8?B?WFowdmgwZGpxaitTZ1pyT3JQUEd2NU9SSHpIL0lnWFBxUHBodEZBSEVZU09W?=
 =?utf-8?B?ampHNE4xTExIZ1NWWERJb1FCVHBRak9uNU1zY2xVZ0RJUDdZRWdZcC9ZN1B6?=
 =?utf-8?B?cXJydU9hUldDZEdkYnlCOSsyelJ0VHlsQUJQVi8vYWlnWlQwSzVHQzR4UTA3?=
 =?utf-8?B?d1FWVFJyMHpTa2Y5Y1FhS05iTllYdFRrbGxWMERwWXF2bjRTREErVURRZzJ4?=
 =?utf-8?Q?Ys4qqE?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8937.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?T3U4TVdQeVZQWWtjSUM3aWJtY2xBUjNjV1ZCMnBTM2o4dHFJdTg4VHA2a2VC?=
 =?utf-8?B?WG81WDBDN2dVeVlXdVVxb05MUVNEb2g3MFNabHk1K2M4M2RIMDN3aUZlT01L?=
 =?utf-8?B?ZDZONkI3Wk1obDQ2U0c1VnJtZjZrOW5qQUhXaUY1K3o3bjhkRFRTSWhKazB4?=
 =?utf-8?B?MVF5OXR2bEtVbjdFb3JLdU5pcGxNS21qSzZIc2Uzd0VneW1Rc29Wc2lXRS9Z?=
 =?utf-8?B?S1RZNTNqVFlVd2ZTc1BXbzd4TEVXMk9uWXZaQTlvb29Ka3RWZmxBZzRhWGxZ?=
 =?utf-8?B?aEFJU2VCcFJQYjlqaDVLQVZhR2RaUXU5dzlvUGUxTVlhclBkQ0swUy96WEE1?=
 =?utf-8?B?aVNJTXBZZWh0SDFNVWcrV1JUZkhSSXZLT25CYW9GcW5vRzJuUTQ1UVRTeUV2?=
 =?utf-8?B?VXh2QTJrVnBtbDNoY2ZJZXdsbzVzbFpHSjRQUUlJbWoycjFmSzlKUDU3UnR2?=
 =?utf-8?B?L3dEUFV3bVFuRE85VDRCblo5VDBMU1ozd0ZjVEl1SFRpbU9aUFRDZThqcTV3?=
 =?utf-8?B?VkNqTVpabndrc0R5bDV2bnl3QXRRV1BFeWNYTExhRjY5ZDBLcE50bkJaMkl4?=
 =?utf-8?B?eTc5aTU2UER0SnNnc1hkRzd4VWtLcVlyMHRlVEdwcFpNNU5Obmc0L0ZRRUww?=
 =?utf-8?B?RndZRDMyaTFhcU5GWmVvSVdXaFdkT1dzMGRmOHBVSHRzT0MzdWdVSWdGUUc5?=
 =?utf-8?B?dHVxRGJMOUhYajRkNjYxTTkySHlKRE9XeklqSHFiVEN3bHVjcVhMeUdMVy90?=
 =?utf-8?B?RVZueUphcTk4M2VTMVZPVHE1VDM5R29iYkFJRFRzTzRWUklRa1dwenFIT0R1?=
 =?utf-8?B?RDl6UkxEc0tIWmtaWUdWZHFvSm8zTWN0dXRBK2F5MGpvenlkcWdRUTgxaGgz?=
 =?utf-8?B?dm1venBvRFprRjZrbGlEL1BrQ2Rxbk9NRnpoTitXc2V6WU5TdmswUHM3bEwz?=
 =?utf-8?B?dkxpajV5ck0rblBwZFNCVENIbXJBQXdHY2ExSkl5eFNwdDM1Z1NBS3lueFpt?=
 =?utf-8?B?WmwrbENOSkRjUklYNXl3N0hHcnlKSU9LSXY1S0ZBd1dtVGw1UXdSbDJPMkRW?=
 =?utf-8?B?TjJxUjM2M1hReE51K0xwc3k2VGIxcmFXWXBWS2dSZklOR3YrSzdxQUkzNGhy?=
 =?utf-8?B?NFBoNlNqZ3RIaVNQMDh4bGxkTFVQV0VNMW9LZ1ZpYWhpdGsrQkNYZ0JqQ1BR?=
 =?utf-8?B?dkxZQUgyR1JMY0xvOVoxQTJ6TFRxb3NrV0J0RDhFK1c2S2VhSEluVlU5bitK?=
 =?utf-8?B?NTJvQi9GNlVwV0Jhamd6TW04YnRlQXh0bEZURnJYQTBOUVNGV3BTMGZHUU5z?=
 =?utf-8?B?L1o0UVR3ZTRNMGFsd3EyWUEwZ2x5bTNXQ0RyVkNUa20zMU5GdkRFaDNpQXNQ?=
 =?utf-8?B?SUNJOGNEdHJYdjVGb1JMRktGRzlaa28wanZBOG9oNkZYdFZKRUpFNkZrNHpz?=
 =?utf-8?B?em04M002djRFTWFNenRLOGo5TlhuQkNid1hldW9aZCtZVW9QNFBFQUEvNzdq?=
 =?utf-8?B?QjYyRUJTME00bndPZlF6WkN3MlAwVHVyNzdtcEJTQngvVnV2ekNFbVZyNWh5?=
 =?utf-8?B?ZVJGdUlObzZtSWgzOFR4NTUzRStzMitTUzJQVU41aVllcTFpa3Z5UWdSYjNH?=
 =?utf-8?B?SmlXZUF2SXBRb3ZkYUk4d2RQN3pvckpDMmJTS1hQMzF5SVY4Tk5YcEQrRjBz?=
 =?utf-8?B?dWFaNnJiR0lJcUhYRUxOcFhoQXBDbFFrRzBRY0xhQi9aZmF1UTF3b3kwRFh6?=
 =?utf-8?B?RUhjQjNPM2tHYmRNelFKdVFlR3FpdDdQazVUR09rWStUbVkwOFh0S3I0amEv?=
 =?utf-8?B?aHZhM1ZkRVM1RitpTlJHbHhZWVRWWHpyZGFrM0QwWWVtQVpxeUtDcUdSRFNq?=
 =?utf-8?B?YjNFbnkzUk5tMCtYWUdsUGxrMkVjckdPTXhPUGZxMm0vYXJRcXBtRm1HZGh1?=
 =?utf-8?B?aW91OWdiM2dSV3FaZmU3V2VlcEliOCtJaFpOV1ltZHBvUXEyMEkwWlR2a1Zu?=
 =?utf-8?B?Uzd4Z1cyT2VRbHlwTjZDUEQzK2h1WFdpbDBhL2xjVVlrYWczZUZYM2RlekRj?=
 =?utf-8?B?c3Y2a2lGamFSU25Cbk5yTU1Ha2UwMm9TYml0V2FjRUhBTGREbmMvUnhQT2N4?=
 =?utf-8?Q?cytT3sAbtTb4hBbqANSViUsaP?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8937.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 933313b8-d256-44de-7c72-08de20d8d68f
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2025 04:14:41.7361 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5VlPXsbP28JckBPOu4ULJ0sfipwcaXopj4Cik+Idt0ASlMCN60FEpJG/suWSeJasF85vEPGfKunaSNNUdETAJA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6559
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

PiBTdWJqZWN0OiBbUEFUQ0ggMDIvMTZdIGRybS9pOTE1L2RlOiBIYXZlIGludGVsX2RlX3dhaXQo
KSBoYW5kIG91dCB0aGUgZmluYWwNCj4gcmVnaXN0ZXIgdmFsdWUNCj4gDQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBXZSBjdXJy
ZW50bHkgaGF2ZSBhIGJ1bmNoIG9mIHBsYWNlcyB0aGF0IHdhbnQgdGhlIGZpbmFsIHJlZ2lzdGVy
IHZhbHVlIGFmdGVyDQo+IHJlZ2lzdGVyIHBvbGxpbmcuIEN1cnJlbnRseSB0aG9zZSBwbGFjZXMg
YXJlIG1vc3RseSB1c2luZw0KPiBpbnRlbF9kZV93YWl0X2N1c3RvbSgpLiBUaGF0IGlzIG5vdCBh
IGZ1bmN0aW9uIHRoYXQgd2Ugd2FudCB0byBrZWVwIGFyb3VuZA0KPiBhcyBpdCBwcmV0dHkgbXVj
aCBwcmV2ZW50cyBjb252ZXJzaW9uIHRvIHBvbGxfdGltZW91dF91cygpLg0KPiANCj4gSGF2ZSBp
bnRlbF9kZV93YWl0KCkgYWxzbyByZXR1cm4gdGhlIGZpbmFsIHJlZ2lzdGVyIHZhbHVlIHNvIHRo
YXQgc29tZSBvZiB0aGUNCj4gY3VycmVudCB1c2VycyBjYW4gYmUgY29udmVydGVkIG92ZXIgdG8g
dGhlIHNpbXBsZXIgaW50ZXJmYWNlLg0KPiANCj4gRG9uZSB3aXRoIGNvY2NpOg0KPiBAQA0KPiBA
QA0KPiBpbnQgaW50ZWxfZGVfd2FpdCguLi4NCj4gKyAsdTMyICpvdXRfdmFsdWUNCj4gICkNCj4g
ew0KPiAuLi4NCj4gX19pbnRlbF93YWl0X2Zvcl9yZWdpc3RlciguLi4sDQo+IC0gTlVMTA0KPiAr
IG91dF92YWx1ZQ0KPiAgKQ0KPiAuLi4NCj4gfQ0KPiANCj4gQEANCj4gQEANCj4gIGludGVsX2Rl
X3dhaXQoLi4uDQo+ICsgLE5VTEwNCj4gICkNCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQoNCkxHVE0sDQpSZXZpZXdl
ZC1ieTogU3VyYWogS2FuZHBhbCA8c3VyYWoua2FuZHBhbEBpbnRlbC5jb20+DQoNCj4gLS0tDQo+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RlLmggICAgICAgICAgICAgICAg
IHwgOCArKysrLS0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X3Bvd2VyX3dlbGwuYyB8IDIgKy0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHBfaGRjcC5jICAgICAgICAgICAgfCA0ICsrLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHBpb19waHkuYyAgICAgICAgICAgfCAyICstDQo+ICA0IGZpbGVz
IGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RlLmgNCj4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RlLmgNCj4gaW5kZXggZWE5OTczZGJiZmZjLi5h
NGFkMjAwMzBjMDkgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGUuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rl
LmgNCj4gQEAgLTExNiwxNCArMTE2LDE0IEBAIF9faW50ZWxfZGVfd2FpdF9mb3JfcmVnaXN0ZXJf
YXRvbWljX25vd2woc3RydWN0DQo+IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksDQo+IA0KPiAgc3Rh
dGljIGlubGluZSBpbnQNCj4gIGludGVsX2RlX3dhaXQoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRp
c3BsYXksIGk5MTVfcmVnX3QgcmVnLA0KPiAtCSAgICAgIHUzMiBtYXNrLCB1MzIgdmFsdWUsIHVu
c2lnbmVkIGludCB0aW1lb3V0X21zKQ0KPiArCSAgICAgIHUzMiBtYXNrLCB1MzIgdmFsdWUsIHVu
c2lnbmVkIGludCB0aW1lb3V0X21zLCB1MzIgKm91dF92YWx1ZSkNCj4gIHsNCj4gIAlpbnQgcmV0
Ow0KPiANCj4gIAlpbnRlbF9kbWNfd2xfZ2V0KGRpc3BsYXksIHJlZyk7DQo+IA0KPiAgCXJldCA9
IF9faW50ZWxfd2FpdF9mb3JfcmVnaXN0ZXIoX190b191bmNvcmUoZGlzcGxheSksIHJlZywgbWFz
aywNCj4gLQkJCQkJdmFsdWUsIDIsIHRpbWVvdXRfbXMsIE5VTEwpOw0KPiArCQkJCQl2YWx1ZSwg
MiwgdGltZW91dF9tcywgb3V0X3ZhbHVlKTsNCj4gDQo+ICAJaW50ZWxfZG1jX3dsX3B1dChkaXNw
bGF5LCByZWcpOw0KPiANCj4gQEAgLTE2OSwxNCArMTY5LDE0IEBAIHN0YXRpYyBpbmxpbmUgaW50
DQo+ICBpbnRlbF9kZV93YWl0X2Zvcl9zZXQoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXks
IGk5MTVfcmVnX3QgcmVnLA0KPiAgCQkgICAgICB1MzIgbWFzaywgdW5zaWduZWQgaW50IHRpbWVv
dXRfbXMpICB7DQo+IC0JcmV0dXJuIGludGVsX2RlX3dhaXQoZGlzcGxheSwgcmVnLCBtYXNrLCBt
YXNrLCB0aW1lb3V0X21zKTsNCj4gKwlyZXR1cm4gaW50ZWxfZGVfd2FpdChkaXNwbGF5LCByZWcs
IG1hc2ssIG1hc2ssIHRpbWVvdXRfbXMsIE5VTEwpOw0KPiAgfQ0KPiANCj4gIHN0YXRpYyBpbmxp
bmUgaW50DQo+ICBpbnRlbF9kZV93YWl0X2Zvcl9jbGVhcihzdHJ1Y3QgaW50ZWxfZGlzcGxheSAq
ZGlzcGxheSwgaTkxNV9yZWdfdCByZWcsDQo+ICAJCQl1MzIgbWFzaywgdW5zaWduZWQgaW50IHRp
bWVvdXRfbXMpDQo+ICB7DQo+IC0JcmV0dXJuIGludGVsX2RlX3dhaXQoZGlzcGxheSwgcmVnLCBt
YXNrLCAwLCB0aW1lb3V0X21zKTsNCj4gKwlyZXR1cm4gaW50ZWxfZGVfd2FpdChkaXNwbGF5LCBy
ZWcsIG1hc2ssIDAsIHRpbWVvdXRfbXMsIE5VTEwpOw0KPiAgfQ0KPiANCj4gIC8qDQo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXJf
d2VsbC5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bv
d2VyX3dlbGwuYw0KPiBpbmRleCBlYWI3MDE5ZjIyNTIuLmFmYTVkODk2NGYwZCAxMDA2NDQNCj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyX3dl
bGwuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
cG93ZXJfd2VsbC5jDQo+IEBAIC0xNDQ2LDcgKzE0NDYsNyBAQCBzdGF0aWMgdm9pZCBhc3NlcnRf
Y2h2X3BoeV9zdGF0dXMoc3RydWN0DQo+IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpDQo+ICAJICog
c28gdGhlIHBvd2VyIHN0YXRlIGNhbiB0YWtlIGEgd2hpbGUgdG8gYWN0dWFsbHkgY2hhbmdlLg0K
PiAgCSAqLw0KPiAgCWlmIChpbnRlbF9kZV93YWl0KGRpc3BsYXksIERJU1BMQVlfUEhZX1NUQVRV
UywNCj4gLQkJCSAgcGh5X3N0YXR1c19tYXNrLCBwaHlfc3RhdHVzLCAxMCkpDQo+ICsJCQkgIHBo
eV9zdGF0dXNfbWFzaywgcGh5X3N0YXR1cywgMTAsIE5VTEwpKQ0KPiAgCQlkcm1fZXJyKGRpc3Bs
YXktPmRybSwNCj4gIAkJCSJVbmV4cGVjdGVkIFBIWV9TVEFUVVMgMHglMDh4LCBleHBlY3RlZCAw
eCUwOHgNCj4gKFBIWV9DT05UUk9MPTB4JTA4eClcbiIsDQo+ICAJCQlpbnRlbF9kZV9yZWFkKGRp
c3BsYXksIERJU1BMQVlfUEhZX1NUQVRVUykgJg0KPiBwaHlfc3RhdHVzX21hc2ssIGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2hkY3AuYw0KPiBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfaGRjcC5jDQo+IGluZGV4IGJkNzU3
ZGI4NTkyNy4uMjdiYjIxOTk2NTlmIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwX2hkY3AuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwX2hkY3AuYw0KPiBAQCAtNzg0LDcgKzc4NCw3IEBAIGludGVsX2RwX21z
dF9oZGNwX3N0cmVhbV9lbmNyeXB0aW9uKHN0cnVjdA0KPiBpbnRlbF9jb25uZWN0b3IgKmNvbm5l
Y3RvciwNCj4gIAkvKiBXYWl0IGZvciBlbmNyeXB0aW9uIGNvbmZpcm1hdGlvbiAqLw0KPiAgCWlm
IChpbnRlbF9kZV93YWl0KGRpc3BsYXksIEhEQ1BfU1RBVFVTKGRpc3BsYXksIGNwdV90cmFuc2Nv
ZGVyLCBwb3J0KSwNCj4gIAkJCSAgc3RyZWFtX2VuY19zdGF0dXMsIGVuYWJsZSA/IHN0cmVhbV9l
bmNfc3RhdHVzIDogMCwNCj4gLQkJCSAgSERDUF9FTkNSWVBUX1NUQVRVU19DSEFOR0VfVElNRU9V
VF9NUykpIHsNCj4gKwkJCSAgSERDUF9FTkNSWVBUX1NUQVRVU19DSEFOR0VfVElNRU9VVF9NUywN
Cj4gTlVMTCkpIHsNCj4gIAkJZHJtX2VycihkaXNwbGF5LT5kcm0sICJUaW1lZCBvdXQgd2FpdGlu
ZyBmb3IgdHJhbnNjb2RlcjogJXMNCj4gc3RyZWFtIGVuY3J5cHRpb24gJXNcbiIsDQo+ICAJCQl0
cmFuc2NvZGVyX25hbWUoY3B1X3RyYW5zY29kZXIpLA0KPiBzdHJfZW5hYmxlZF9kaXNhYmxlZChl
bmFibGUpKTsNCj4gIAkJcmV0dXJuIC1FVElNRURPVVQ7DQo+IEBAIC04MjQsNyArODI0LDcgQEAg
aW50ZWxfZHBfbXN0X2hkY3AyX3N0cmVhbV9lbmNyeXB0aW9uKHN0cnVjdA0KPiBpbnRlbF9jb25u
ZWN0b3IgKmNvbm5lY3RvciwNCj4gIAlpZiAoaW50ZWxfZGVfd2FpdChkaXNwbGF5LCBIRENQMl9T
VFJFQU1fU1RBVFVTKGRpc3BsYXksDQo+IGNwdV90cmFuc2NvZGVyLCBwaXBlKSwNCj4gIAkJCSAg
U1RSRUFNX0VOQ1JZUFRJT05fU1RBVFVTLA0KPiAgCQkJICBlbmFibGUgPyBTVFJFQU1fRU5DUllQ
VElPTl9TVEFUVVMgOiAwLA0KPiAtCQkJICBIRENQX0VOQ1JZUFRfU1RBVFVTX0NIQU5HRV9USU1F
T1VUX01TKSkgew0KPiArCQkJICBIRENQX0VOQ1JZUFRfU1RBVFVTX0NIQU5HRV9USU1FT1VUX01T
LA0KPiBOVUxMKSkgew0KPiAgCQlkcm1fZXJyKGRpc3BsYXktPmRybSwgIlRpbWVkIG91dCB3YWl0
aW5nIGZvciB0cmFuc2NvZGVyOiAlcw0KPiBzdHJlYW0gZW5jcnlwdGlvbiAlc1xuIiwNCj4gIAkJ
CXRyYW5zY29kZXJfbmFtZShjcHVfdHJhbnNjb2RlciksDQo+IHN0cl9lbmFibGVkX2Rpc2FibGVk
KGVuYWJsZSkpOw0KPiAgCQlyZXR1cm4gLUVUSU1FRE9VVDsNCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBpb19waHkuYw0KPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBpb19waHkuYw0KPiBpbmRleCA1ZGY2MzQ3YTQyMGQu
LjM3OGYwODM2YjVhNSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcGlvX3BoeS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHBpb19waHkuYw0KPiBAQCAtMTE5Myw3ICsxMTkzLDcgQEAgdm9pZCB2bHZfd2FpdF9w
b3J0X3JlYWR5KHN0cnVjdCBpbnRlbF9lbmNvZGVyDQo+ICplbmNvZGVyLA0KPiAgCQlicmVhazsN
Cj4gIAl9DQo+IA0KPiAtCWlmIChpbnRlbF9kZV93YWl0KGRpc3BsYXksIGRwbGxfcmVnLCBwb3J0
X21hc2ssIGV4cGVjdGVkX21hc2ssIDEwMDApKQ0KPiArCWlmIChpbnRlbF9kZV93YWl0KGRpc3Bs
YXksIGRwbGxfcmVnLCBwb3J0X21hc2ssIGV4cGVjdGVkX21hc2ssIDEwMDAsDQo+ICtOVUxMKSkN
Cj4gIAkJZHJtX1dBUk4oZGlzcGxheS0+ZHJtLCAxLA0KPiAgCQkJICJ0aW1lZCBvdXQgd2FpdGlu
ZyBmb3IgW0VOQ09ERVI6JWQ6JXNdIHBvcnQgcmVhZHk6DQo+IGdvdCAweCV4LCBleHBlY3RlZCAw
eCV4XG4iLA0KPiAgCQkJIGVuY29kZXItPmJhc2UuYmFzZS5pZCwgZW5jb2Rlci0+YmFzZS5uYW1l
LA0KPiAtLQ0KPiAyLjQ5LjENCg0K
