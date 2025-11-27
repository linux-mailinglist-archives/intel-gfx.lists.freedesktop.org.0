Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4F2EC8DDC4
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 11:57:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4DD010E80F;
	Thu, 27 Nov 2025 10:57:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vw6Za0sF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0359510E7DC;
 Thu, 27 Nov 2025 10:57:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764241034; x=1795777034;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=FtoG6/G4diX2WF69SSKOI8xcgjnbNC+gM1f4FWQ7caE=;
 b=Vw6Za0sFF9YOGlhjf3j2RXv9KKdGYvOjP+527xwapfau1llGOpIuP207
 ISF8X2H9vX+j7ucozk9ZPA1HdMB3uaaQ0FGc3EoPD4/Xy22WGsa769pDh
 d6aNp4NfQczElQLyF6aFaNXkDLhcUM03jgrmvVp4hmZNvlkHFsqCPRlst
 r0RWCop5LGID9iDGESip50Ee9MelwggyOMk7tLv8caJ0wNZuGumWZ/hU4
 BKDRMYvhtjzhR1WYQCNNUNINK854pEsKwBS2aaDw3Bck0ICENkNlhNEyk
 +DCmGFJKShoGy8+go4OnPi6FTP1rtfkBumng6bww3la+LM891opUeX0AU g==;
X-CSE-ConnectionGUID: iUTUprTKTYqq26nhlyOn8w==
X-CSE-MsgGUID: eybqdxkiTH2PXPqVMMagjQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11625"; a="66174474"
X-IronPort-AV: E=Sophos;i="6.20,230,1758610800"; d="scan'208";a="66174474"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 02:57:13 -0800
X-CSE-ConnectionGUID: oc6UTzeURByT5OmmsbYQGw==
X-CSE-MsgGUID: rAb0epAkRoq/paRdiPzMwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,230,1758610800"; d="scan'208";a="192867710"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 02:57:13 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 02:57:12 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 27 Nov 2025 02:57:12 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.56)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 02:57:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Bdf6+kW8F9lVslqRo/kOewoQtnCZOFldVzzYuN8eie26MLg1PQcok5Ns+jh7eo78fKpKQWv6vv6kethMtBRyuwP2c8cloZcVXM1nV10m6nPwq1hamBtnUc9IGouiBfTCiLqdGnm83QndzRo1O7kJHLAI/Yaifep9wiCP1aumOdIGw+NcQtv8XA/Mi+9kO329YKk8DLKiqJ3AbU/MxJih+/6CFdL20u0Tvna49HqFNxsR04CBGgQ5jsCIcWotWS3b8TCNPsg5NbpVdatawi1anTnhIyyyMffGL5Ukb/C88QKNyLmPLLhAr07NH3jUWuidZxqhtlMPZ4n7EBu2nbuP8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FtoG6/G4diX2WF69SSKOI8xcgjnbNC+gM1f4FWQ7caE=;
 b=a54ASRHdtalNtYDDJUXdeNXt+L3BN65WZjEGMSQC/YYOFiteysB5aPbPHT/Xeq1h4TvL8jAKC3bJ8IIRumAfLq61DJOUAXqvrV57QrJBn7GM/i2udnthiZB2ZY3bT0jI8c0XgF7fczGiLM6z6l0Ly8FaB9L2nubDw8161LpQZPQqurENY8afKVCMv2qDbqcD5A4sZW4RijRErSPqpvnCMKQ35/KGU1bpeJyau3DWBXkBP643LvIKdhAgWqzEwViCD6Kk/TsmLC4z18UD/Yrq4UAxICZigHaAdIg8t2MpNZv8zvnOOacfS3WwIuHwG3SJqyoLrDJyu1/pDakAYIb7ig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DS0PR11MB7558.namprd11.prod.outlook.com (2603:10b6:8:148::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9366.14; Thu, 27 Nov 2025 10:57:10 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 10:57:10 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 2/4] drm/i915/psr: Perform vblank evasion on async flip as
 well for PSR
Thread-Topic: [PATCH 2/4] drm/i915/psr: Perform vblank evasion on async flip
 as well for PSR
Thread-Index: AQHcXdVjFBCb/eQwwUmLJzTAbHIGE7UD5rGAgAJ2yIA=
Date: Thu, 27 Nov 2025 10:57:09 +0000
Message-ID: <dbaa6e77740c23604420d9ff5031cddc4bd37108.camel@intel.com>
References: <20251125063253.328023-1-jouni.hogander@intel.com>
 <20251125063253.328023-3-jouni.hogander@intel.com>
 <aSYdX7eGVOMapiJ7@intel.com>
In-Reply-To: <aSYdX7eGVOMapiJ7@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DS0PR11MB7558:EE_
x-ms-office365-filtering-correlation-id: 6627f51c-2a1f-4990-898f-08de2da3b6a1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|10070799003|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?S3pHbVJ3Y0ZKNXVraDZJQmdxaGtiQm1TcjZ2ajFwOGtoR2s0OFpSUExXTy9B?=
 =?utf-8?B?N2oycEZxVzVmZWtKSVBLRGZBakd2bEFORHV6OGhiRFdHNFpBUXpPc1ZuRzJk?=
 =?utf-8?B?RGIrU3BtZStXVmdVOXJteVFPeDZRcTJ6MnNEajhqU0RTUGlQZzFQY1VCZFMy?=
 =?utf-8?B?bkhHTFEyZm1VRjF5bE1EVHpyRHYwSTdNdWd1cGNPK1ZtSzg2MFc4aStuSDcy?=
 =?utf-8?B?bnFEK3dTK1RaQ2VVaUpPT2w3amNBaFNSaWZQVFI2VWZMalloekJ4c0VWVW1G?=
 =?utf-8?B?VURLV0xwOXR6Q0dzSE5OM2hrZzRpakQ2eENwWTV4Y2N4Zy9Pb2prSDZjWElT?=
 =?utf-8?B?ZTk4N3B2ZWNYNldrTHRYTGxhOWlnUUxITlhiQ0wzTG1MSEJMekpEcGhKQzY4?=
 =?utf-8?B?aXZRU1lIZUNSKzZzVHZCd0VhNFVmenJqbXYybU8xOHlOMWxTa3kzUXZHVVMr?=
 =?utf-8?B?TWlYVjhNdE9BT21pL2tIaENUQXBSZUtKVUtJNDlyc1l3L0dJeHo5SExXeVNI?=
 =?utf-8?B?ZUZVSDVpcG5qQVNKYm1Eb1U3N2dBL2J1Z25iam12ZktGK2VYVHJneDEwSEpn?=
 =?utf-8?B?RmREc1Q4OTRMTTRnSlVZNmRFeGREcWJIb1FrM1FPMmxick5zdEFoKzVtQ0Ji?=
 =?utf-8?B?SnAwMFdLS2k0ZkVPUkNFSldUaWlSbDVOVUhNMHJVY1R1R2xIMndkb1dkcWVG?=
 =?utf-8?B?dlkyUlM3WEdwV201dTFPSExES244bHNWajJOS01kTkFobERGL3R0OEowNTRu?=
 =?utf-8?B?dmJSRnpkSXVRbkZvNlR5TE5UZ0gzZDRPajFCcFo1cHNBQWFjb3B4L0lxTU05?=
 =?utf-8?B?WnIyNTU4M1dzamE1QjEvOVNVbXBVMkJzRHRnc0J4QlpIeElBK1JTQmF5WWRr?=
 =?utf-8?B?amk0N2VyM3VTWEFDVW5PTGZiVEhHblJMTHJuMkhaY1M3UzhyMjVaL2hlczQy?=
 =?utf-8?B?aFdteW1UeHppanhySnBhOG05RHBpQ0d5TmNSdGp4c3FVUk5YMEltY0krc1pT?=
 =?utf-8?B?VFdqQ2JialpET2dOdEVYUDl1ejMxZTZnRzM0bDVuS0UyWDlvMDZ1TDVKOXZG?=
 =?utf-8?B?WTRJRVl4NndqVUZOVmRtL3AwRHhnRWRZNGVONVJ0WlBDTyttaGxVY3VzcFBM?=
 =?utf-8?B?RlVkaWJuSDlWRXVZWHdpSkJ2Wk51YTNwWnZQeDYvOWtsbDQ3dTdQSjdNbzZn?=
 =?utf-8?B?WlpRNm9qSi9IeVJCSnZmTHMveGlMaC9uaDAvTDNuT0RFZlRsQ3VDVWNYcE53?=
 =?utf-8?B?bGNwNDZTbU5reWJ5ak5zczhvS2ZoaUE5R0YyNmhjK2hiSDR2NXFIdlM2dUVz?=
 =?utf-8?B?UkRmTlo5eXNqN0h5UmZ5MzRwb0o5TDl2M2lXTjNydXJCeDVRVW9CeDNEcnZI?=
 =?utf-8?B?Z09ZUHlQcGhNcFRNQjd4OGJUWGU1VG5SQllGUHdxQUVocU80RWhKRk9vVWRi?=
 =?utf-8?B?UjYyVGZtclA3b1VoSzBxSkZIcTFQSFBGcVdKeUtJUS9QSlFVUkdWVnB1RnZq?=
 =?utf-8?B?KzJBVFZ4bEV1SjRxajh6M1RDNm5LYU1IakJLOU9SdmlvS21IVDJLMUNUdTBr?=
 =?utf-8?B?Z0NPYkEwODk4MlZXdFhNSDBzOU4vY2gyVjBNdXQxTGVORnAxZEVZeTB4aU9x?=
 =?utf-8?B?SkhVdElBWXNqQk54Y1U5OGNPZkU2NzRYZ01rQ0lGVzBHdVJlMUlSdXNLL25w?=
 =?utf-8?B?YlZSTkE1UFlCWDV3YXBEeEJkMVpTSnFQK0wybFRIUjhqODVqTjN5N3NDejBO?=
 =?utf-8?B?VU5OaHd6dHRUaitqVDZ1elgvaVdnV1gvOGlRazdWNThzb3NYeWMra1kySldn?=
 =?utf-8?B?V25Fajh4a05kdGtQT0JYWEtkamxDeVlGU1RuQ0ExT0xVbyt1c21nZGwrOVov?=
 =?utf-8?B?OVIrTGowc080UWxZeHZ6T2NCamh5OHNVeTVESlR4NW5MaWNjbk1jRmNMNmZF?=
 =?utf-8?B?QzUzKzZJQStWSjRyUSt3YkNvYmJON3cyRUZZYzVKYUxnRFpiUGVzSzN1MkJ4?=
 =?utf-8?B?YjdBMncrdG1TVlFHZjhCQzdWd0lUZWVXUWEwSW5KbXBWc2NWTDlVZ0RhMjB3?=
 =?utf-8?Q?FlCNk+?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(10070799003)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?b1FZL0JVVW45b21zMnVjeGg3RXJvcjdKYjBkamRHekRyWUs1cFhHNzhlZUV3?=
 =?utf-8?B?cXVrSkRodG4vRHJBUmIwd3ltZGxaWWszY3dZWlJwcndEZ0NHbFI4dkxNay84?=
 =?utf-8?B?ZHFhdk1zR1RJQ1lTOWRGUm41WnBrSjRwcm1OTlpnNTVzTE8va3JKTnNNNFFs?=
 =?utf-8?B?OFlMRW1XcGRwWkdubGlvbXorK2UyYXJnN1FxaGhJT0tJUkNrd09yU2dLMUZV?=
 =?utf-8?B?dFM5UHdIdUswZlhXRGRmdCsyU1l5VUdMRFF1cDY2WjVWOTVycWVZaEE0RXZx?=
 =?utf-8?B?WWgzRlRJWmFiTHdqam95UW5PNTRrcHJ6TGVIYVFXRXVGbXh0NjZIQmlERFRI?=
 =?utf-8?B?YTdYVTM1OGczVEtia05WRDByMG04Ky8yRS9WcXo3TlE0U1VnRmxFMG91dGtI?=
 =?utf-8?B?WDhvWW9GMG5Qem1oTlJxVFpJakg2bmF6Mi9CT2k0QXdYcHVWUy9KWHIxdWlp?=
 =?utf-8?B?MjhUYllDUEhwbXFtV2ZJVzFMTVN5TisxZStyRjhSWkZyU212SjcwMlJwSEZv?=
 =?utf-8?B?VlZnOVZqcWl5clVzVGNpdFhyUDNsMUlDRVVjcC9HWjhuVzVBS0w4N2piSHR5?=
 =?utf-8?B?Z1RiNWoxUUZ6bjl0ZkJuZzJ4cjBYc3kwMExzVk9VOHpucDRaZkxBSGpKdXlv?=
 =?utf-8?B?RlI3cTduZDgrUldJTFExaE95aWRyVDltRFo4ZktSZzZlK0ErWkZvQ1Q3SCtv?=
 =?utf-8?B?ZFN1S3I2RExEM3ZBZWJRY09JQ0UxUFpRNnF0TEJLNmlCTmExdnpXM3EzbElV?=
 =?utf-8?B?aDJhd2tBSjB1UlFIR3VIcWFJR2YrdjNwa3JHcG9Ub3g4R3J4aXNhVVlzbUJH?=
 =?utf-8?B?dUJ1YVV0cFZwUHJzUEpORm0vNHBnV3FTN0MvT2MzcVZZeFllZUdhVFZKRkY0?=
 =?utf-8?B?MWgxYWZMcjdFVFlVNkFjbnlGREZBOXh6czRaN3RQUy9hUXJQSnk2by9TOE9P?=
 =?utf-8?B?eXp3WEgwVEhPUDRFSTFCeFpHQXh4b3hXVGFwK1U0dGRCTkdiSktQamI3c2dK?=
 =?utf-8?B?eEVMaU0zdmZ6dU9XQmdHQnIwT3FWcGVJbHlVdi95U3VQanlhdUhaby9JSWRS?=
 =?utf-8?B?eE0zeE1iZktkL2MxcnM5eWtWd3E0SlgvYUFLRlgzUmNDaEZCNHdrUzlUSGUw?=
 =?utf-8?B?MCtCaTBrYVVvU0xBekY3NmNtL0V3eHJaczNPcGZFUEUza3grTnhxOTQ3TWRR?=
 =?utf-8?B?M2N2bDlUQXNUNTE1S2xWd2ptdlpqVTJJRWQ1Z0kvcDF4UitnMFlNL293Slo4?=
 =?utf-8?B?UU1HUGNDVzFlNzk1UVI5bndPUXk0TWl3ZFlpRnhORXpEQWNiTXQwbWQ4cGFN?=
 =?utf-8?B?MUlXdk9YcnVGZ0xhRCswS1ZoTXZreTRQSTFSSVR5dkRkNGFIOGpkMG1rQnd4?=
 =?utf-8?B?aXJnZExXWW9EMHhnc2plenkvdHl3OHZCVENtUVJpZ1RWSEpXOFdjZnFYVFlW?=
 =?utf-8?B?RzhCT1hnOElwVUdLa1QxSGNOdmhuTHFVa2gybFIwRExmV0dFdlRSQXVwTnJl?=
 =?utf-8?B?aERvNzFBTjVRcHp4a3dVQk5idmZGMmROWXNsTmlPSXpHZXlKWm5WczJBNGU4?=
 =?utf-8?B?OE9SMnFRYVVsK08rMlhhbzNzcTYvdmREM0tpdk9VOWdOK0g4MDE5ZTk1a25G?=
 =?utf-8?B?ZnNsdnYyRzExaDNzMDJyZCtwQ1paNjNSUkpPRmUvdlhYcE9mMktGQTJZclRt?=
 =?utf-8?B?SXJGZ0hIVko1UWwwU2lqU01qMHZyNVl6MDFld1lvVVpkWTcyWVRtSXJDLzh5?=
 =?utf-8?B?SUEzVkU1a2VPbExXREFmYkE0RS92MGllakJqaFBPdy8vVnZIQnpDaFpHdWxD?=
 =?utf-8?B?OEYxcDRXMzBrYldkZEM1Z29BYkxya3hQYzNCNy83UmRvejZuZlcyTUl1Tm1S?=
 =?utf-8?B?WTgraTJiVlVYZzF5VG00QktJOVZRekljSk43ZXBJblZNMFlQSmxndTBrNC9T?=
 =?utf-8?B?ZHllNFNoOVZDdGlFK1gyOXNJY0lFZWVqa1llVmVJT21tL0JKUmpnNnBPb2FX?=
 =?utf-8?B?UWl3UjFRRjZVeUpnU09FMzFLQXorY1IxODBuenVVdjFSMjRnYmJ6TjlJMlNj?=
 =?utf-8?B?dmdNeXFnbnVjSGdjOG9LV1VzRkpEY0tWbVJ1RWpjaW5kSDl1WC9FZHR4UnBa?=
 =?utf-8?B?VDVRZDI0YTlob3hFUUkxZzY3UGdhZ0hnVXFSNTZneEJpb0s0Z0xKeFNqNEhN?=
 =?utf-8?B?bW5uWVg1UytsM3hRaTRwU2tYYThZN25CNDB1cXhBM2w0M25vK2NMV2IvTFVV?=
 =?utf-8?B?RGE5MGprelVSdEhoZWRoc0Q1MlVnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <7C0E38D1DD9F0246BB5BEC0FF52548C7@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6627f51c-2a1f-4990-898f-08de2da3b6a1
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Nov 2025 10:57:09.9734 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ypdBpA7ArdBbUcQOvPQneBqDVG3z2yxtkOlmMk69xUILzhpdqfbEF2z3bT+URIAEhGnvhuMAX8ABzVmeqV+TwN6hYSboFsnvPeKI6EC45Lk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7558
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

T24gVHVlLCAyMDI1LTExLTI1IGF0IDIzOjE5ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFR1ZSwgTm92IDI1LCAyMDI1IGF0IDA4OjMyOjUxQU0gKzAyMDAsIEpvdW5pIEjDtmdh
bmRlciB3cm90ZToNCj4gPiBQU1IyX01BTl9UUktfQ1RMW1NGIENvbnRpbnVvdXMgZnVsbCBmcmFt
ZV0gaXMgc2FtcGxlZCBvbiB0aGUgcmlzaW5nDQo+ID4gZWRnZSBvZg0KPiA+IGRlbGF5ZWQgdmJs
YW5rLiBTVyBtdXN0IGVuc3VyZSB0aGlzIGJpdCBpcyBub3QgY2hhbmdpbmcgYXJvdW5kDQo+ID4g
dGhhdC4gRHVlIHRvDQo+ID4gdGhpcyBQU1IyIFNlbGVjdGl2ZSBGZXRjaCBuZWVkcyB2Ymxhbmsg
ZXZhc2lvbi4NCj4gPiANCj4gPiBDdXJyZW50bHkgdmJsYW5rIGV2YXNpb24gaXMgbm90IGRvbmUg
b24gYXN5bmMgZmxpcC4gUGVyZm9ybSBpdCBpbg0KPiA+IGNhc2UNCj4gPiByZXF1aXJlZCBieSBQ
U1IuDQo+ID4gDQo+ID4gQnNwZWM6IDUwNDI0DQo+ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2
Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gwqBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydGMuYyB8IDYgKysrKy0tDQo+ID4gwqAxIGZp
bGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiA+IA0KPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydGMuYw0KPiA+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnRjLmMNCj4gPiBpbmRleCAx
NTNmZjRiNGI1MmMuLjQyYzRjZTA3ZjhjMCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydGMuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfY3J0Yy5jDQo+ID4gQEAgLTQzMyw3ICs0MzMsOCBAQCBzdGF0aWMg
Ym9vbCBpbnRlbF9jcnRjX25lZWRzX3ZibGFua193b3JrKGNvbnN0DQo+ID4gc3RydWN0IGludGVs
X2NydGNfc3RhdGUgKmNydGNfc3RhDQo+ID4gwqAJCShpbnRlbF9jcnRjX25lZWRzX2NvbG9yX3Vw
ZGF0ZShjcnRjX3N0YXRlKSAmJg0KPiA+IMKgCQkgIUhBU19ET1VCTEVfQlVGRkVSRURfTFVUKGRp
c3BsYXkpKSAmJg0KPiA+IMKgCQkhaW50ZWxfY29sb3JfdXNlc19kc2IoY3J0Y19zdGF0ZSkgJiYN
Cj4gPiAtCQkhY3J0Y19zdGF0ZS0+dXNlX2RzYjsNCj4gPiArCQkhY3J0Y19zdGF0ZS0+dXNlX2Rz
YiAmJg0KPiA+ICsJCSFjcnRjX3N0YXRlLT5kb19hc3luY19mbGlwOw0KPiA+IMKgfQ0KPiA+IMKg
DQo+ID4gwqBzdGF0aWMgdm9pZCBpbnRlbF9jcnRjX3ZibGFua193b3JrKHN0cnVjdCBrdGhyZWFk
X3dvcmsgKmJhc2UpDQo+ID4gQEAgLTUzOSw3ICs1NDAsOCBAQCB2b2lkIGludGVsX3BpcGVfdXBk
YXRlX3N0YXJ0KHN0cnVjdA0KPiA+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ID4gwqAJ
aWYgKG5ld19jcnRjX3N0YXRlLT5kb19hc3luY19mbGlwKSB7DQo+ID4gwqAJCWludGVsX2NydGNf
cHJlcGFyZV92YmxhbmtfZXZlbnQobmV3X2NydGNfc3RhdGUsDQo+ID4gwqAJCQkJCQkmY3J0Yy0N
Cj4gPiA+ZmxpcF9kb25lX2V2ZW50KTsNCj4gPiAtCQlyZXR1cm47DQo+ID4gKwkJaWYgKCFpbnRl
bF9wc3JfbmVlZHNfZXZhc2lvbihuZXdfY3J0Y19zdGF0ZSkpDQo+ID4gKwkJCXJldHVybjsNCj4g
DQo+IEkgZG9uJ3QgdGhpbmsgd2Ugd2FudCBoYWNrIHRoaXMgaW50byBzdWNoIGxvdyBsZXZlbCBj
b2RlLiBXZQ0KPiBhbnl3YXkgY29udmVydCB0aGUgZmlyc3QgYXN5bmMgZmxpcCB0byBhIHN5bmMg
ZmxpcCAoc2VlDQo+IGludGVsX3BsYW5lX2RvX2FzeW5jX2ZsaXAoKSksIHNvIHRoYXQncyB3aGVu
IHlvdSBzaG91bGQgZGlzYWJsZQ0KPiBzZWxlY3RpdmUgZmV0Y2gsIGFuZCBrZWVwIGl0IGRpc2Fi
bGVkIGFmdGVyd2FyZHMgYXMgbG9uZyBhcw0KPiBhc3luYyBmbGlwcyBhcmUgYmVpbmcgcmVxdWVz
dGVkIGZvciB0aGUgcGxhbmUgYnkgdXNlcnNwYWNlLg0KDQpJc24ndCBhc3luYyBmbGlwIGFsd2F5
cyBpbml0aWF0ZWQgYnkgdXNlciBzcGFjZSAodWFwaS5hc3luY19mbGlwID09IDEpPw0KQXJlIHlv
dSBjb25jZXJuZWQgb24gdGhpcyBzZXF1ZW5jZToNCg0KMS4gYXN5bmMgZmxpcCBvbiBwcmltYXJ5
IHBsYW5lIChmdWxsIGZyYW1lIHVwZGF0ZSkNCjIuIG5vcm1hbCBmbGlwIG9uIHNlY29uZGFyeSBw
bGFuZSAoc2VsZWN0aXZlIGZldGNoL3VwZGF0ZSkNCjMuIGFzeW5jIGZsaXAgb24gcHJpbWFyeSBw
bGFuZSAoZnVsbCBmcmFtZSB1cGRhdGUpDQoNCklzIHRoZXJlIHNvbWUgcHJvYmxlbSBpbiBwZXJm
b3JtaW5nIHNlbGVjdGl2ZSBmZXRjaC91cGRhdGUgb24gc3RlcCAyPw0KUGxlYXNlIG5vdGUgdGhh
dCB3ZSBhcmUgbm90IGRpc2FibGluZyBQU1IyIGF0IHN0ZXAgMi4gV2UgYXJlIGp1c3QNCnBlcmZv
cm1pbmcgMSBzZWxlY3RpdmUgZmV0Y2gvdXBkYXRlIGluIGJldHdlZW4gdGhlcmUuDQoNCkJSLA0K
DQpKb3VuaSBIw7ZnYW5kZXINCg0KPiANCj4gVGhlIHByb2JsZW0gaXMgdGhhdCB1YXBpLmFzeW5j
X2ZsaXAgaXMgZXBoZW1lcmFsLCBzbyB5b3UgY2FuJ3QNCj4ganVzdCBjaGVjayBmb3IgdGhhdC4g
SSB0aGluayB3aGF0IHdlIG5lZWQgaXMgYSB3YXkgdG8gdHJhY2sNCj4gd2hpY2ggcGxhbmVzIGhh
dmUgYmVlbiByZXF1ZXN0ZWQgdG8gZG8gYXN5bmMgZmxpcHMuIFdlIGFsbW9zdCANCj4gaGF2ZSB0
aGF0IHdpdGggdGhlIGFzeW5jX2ZsaXBfcGxhbmVzIGJpdG1hc2ssIGFuZCBJIHRoaW5rIHdlDQo+
IGNhbiBtYWtlIGl0IGRvIGV4YWN0bHkgd2hhdCB3ZSB3YW50IGJ5IGp1c3QgZHJvcHBpbmcgdGhl
DQo+IG5lZWRfYXN5bmNfZmxpcF90b2dnbGVfd2EgY2hlY2sgZnJvbSANCj4gaW50ZWxfcGxhbmVf
YXRvbWljX2NhbGNfY2hhbmdlcygpLiBUaGF0IHNob3VsZCBiZSBzYWZlIHNpbmNlDQo+IGFsbCBw
bGFjZXMgdGhhdCBjdXJyZW50bHkgdXNlIHRoZSBiaXRtYXNrIGFsc28gY2hlY2sgZm9yDQo+IG5l
ZWRfYXN5bmNfZmxpcF90b2dnbGVfd2EuDQo+IA0KPiBUaGUgYWx0ZXJuYXRpdmUgd291bGQgYmUg
dG8gdHJhY2sgdGhlIHVhcGkgYXN5bmMgZmxpcCByZXF1ZXN0cw0KPiBpbiBhIHNlcGFyYXRlIGJp
dG1hc2suIFRoYXQgbWlnaHQgYmUgYSBiaXQgbW9yZSBvcHRpbWFsIGluIHRoYXQNCj4gd2Ugd291
bGRuJ3QgY2xlYXIgdGhlIGJpdCBmcm9tIHRoZXJlIHdoZW4gc29tZSBvdGhlciBwbGFuZQ0KPiBv
ciB0aGUgcGlwZSBpdHNlbGYgbmVlZHMgYSBzeW5jIHVwZGF0ZSB3aGlsZSB0aGUgcGxhbmUgaXMg
YWxyZWFkeQ0KPiBwZXJmb3JtaW5nIGFzeW5jIGZsaXBzLiBCdXQgbm90IGhhdmluZyB0aGF0IGp1
c3QgbWVhbnMgeW91J2xsDQo+IGVuZCB1cCB0b2dnbGluZyBzZWxlY3RpdmUgZmV0Y2ggYmFjayBv
biBhbmQgdGhlIG9mZiBhZ2FpbiB3aGVuDQo+IGEgc3luYyB1cGRhdGUgaW50ZXJ2ZW5lcyBhIHN0
cmVhbSBvZiBhc3luYyBmbGlwcy4NCj4gDQo+IE9oLCBhbmQgbmVlZHNfYXN5bmNfZmxpcF92dGRf
d2EoKSBzaG91bGQgcHJvYmFibHkgYWxzbyB1c2UNCj4gdGhlIGJpdG1hc2sgcmF0aGVyIHRoYW4g
bG9va2luZyBhdCB1YXBpLmFzeW5jX2ZsaXAuDQo+IA0KPiA+IMKgCX0NCj4gPiDCoA0KPiA+IMKg
CWlmIChpbnRlbF9jcnRjX25lZWRzX3ZibGFua193b3JrKG5ld19jcnRjX3N0YXRlKSkNCj4gPiAt
LSANCj4gPiAyLjQzLjANCj4gDQoNCg==
