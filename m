Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 30BBD9F93BF
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2024 14:57:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 849F510E391;
	Fri, 20 Dec 2024 13:57:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nJqBNvQq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8C1C10E010;
 Fri, 20 Dec 2024 13:57:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734703041; x=1766239041;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=3RO2A/SsQL6c/P4ICSWZOsuR7KeIit/+gqxXMPNFels=;
 b=nJqBNvQqMxs5MTT23oKUWLlUjUuoHSFsKkWLOJqQ5+xiIel38IKc36oK
 lZY8MuX5yv/2b/N2GkEsUMUuDA+z/M73utPISBBJMQo2sKE8DpelRktOB
 YuVh+kd3w7rSM1+vu2le5gJucyaoWhKy5sZ5D3AWb75F9xIOWSCoc37HQ
 u2breO/wVZBnHtPmJX02a5n42QxRbmpSE6JFNfd7l8V9C6kQ6hcCp1rqG
 dHZbeoZ4+dTfStqZpJQI1BwbxiFtjYP4Mk09uHy2CTLk1x8tae1F2SrHw
 NgD4+oM7j/OE3Jd+SAne0ZNx2mQ8sAH0OeHjYq9rmI0jXWnHk4n8n/GTz Q==;
X-CSE-ConnectionGUID: mhnv0mPdR+iqaFPLmKpONg==
X-CSE-MsgGUID: Q9Jokv/eQqSt1onXxEzkzA==
X-IronPort-AV: E=McAfee;i="6700,10204,11292"; a="39036811"
X-IronPort-AV: E=Sophos;i="6.12,250,1728975600"; d="scan'208";a="39036811"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2024 05:57:21 -0800
X-CSE-ConnectionGUID: XpwC+F1/Sfm5kW73c37icQ==
X-CSE-MsgGUID: 4js1vcdgQL2D05rsySGi4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,250,1728975600"; d="scan'208";a="103501429"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Dec 2024 05:57:21 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 20 Dec 2024 05:57:19 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 20 Dec 2024 05:57:19 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 20 Dec 2024 05:57:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LTTC94yeL3WrrEBYfSalWqzA9JkJkqnL9NXxt92vyHQXlgzP/68/0/jHVIiKUQiQrEPbLvH9XnMMOmAEc+lk4gwI0K0wKeAqsIawgR3j+jmrayYtYYpKa601dEfrXrVvU2GNQ3OCLCfp27o1RtpEsmR40GvGWfWz0AvVOwb+CLDq5YqHIUIZ7yA/BHkezOWbeVVpFBNN5bHBtEOlQOFEu7eDrxcJvjJTvlkWHJ3LD5CE9bM8cuMk+LZunvxXAq6vi9MDb/3KOB/eixocPG4u7QMAgGcDET8Evbyrkf4eLFz2bBYEQKFahgKevA9t2w3wqfe9wZAfGX+8A/aIcsn03Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nA4KhlVaC1w2XWd2Lns7TZ73vVGgMc4Eo7aSw/64orU=;
 b=MU63RHvIqobW0Dj5YcRbV0ID06pUF2347m+4aHtNL1oaVb0PJrv4A/Jm2ncoOGNI2I6ldiGkmPG9FkZ+7bv3EvghnKxHJfAQHWy1mJk6xesOngwCxCHTq/VZr4J5F9FGdomeBqn5Fv4UY8fffHBVnJhQYzTwxw8G7WGZt+CPeyJFMZYfaVoC6dfkrx4VgCis0dGB75fkUmv0smr99vGRHmNhcsveCICpD0O0MIgSXPfdkoq//oOz1c+MMadIoIT++rXLtiasZY3EO6Fhihc++Z0eCZ4P+gkcb5D5kVUzsqKwOtG+6WTn1Cg3We7x7osJGDNCvfum1PZfUhlozMg+iw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by MW3PR11MB4636.namprd11.prod.outlook.com (2603:10b6:303:5a::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.16; Fri, 20 Dec
 2024 13:56:51 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8272.005; Fri, 20 Dec 2024
 13:56:51 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <87ldwapwig.fsf@intel.com>
References: <20241219214909.104869-1-gustavo.sousa@intel.com>
 <20241219214909.104869-3-gustavo.sousa@intel.com> <87ldwapwig.fsf@intel.com>
Subject: Re: [PATCH 2/3] drm/i915/display: Add infra to reduce global state
 funcs boilerplate
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Fri, 20 Dec 2024 10:56:46 -0300
Message-ID: <173470300698.2440.11037743612320372311@intel.com>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR03CA0328.namprd03.prod.outlook.com
 (2603:10b6:303:dd::33) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|MW3PR11MB4636:EE_
X-MS-Office365-Filtering-Correlation-Id: 28181fe0-dac9-4072-8713-08dd20fe275c
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UVkvMExKMHZDK3NITmpzalR0MnQ5Sngyc1lpeCtEYWhDRkpXcEplRVJDdlFM?=
 =?utf-8?B?aHV1d2JPeVk0emlQWWlWbS9NL0Y0VlJSUHFXb3ZnRzltczljcHNvMUMxdEJF?=
 =?utf-8?B?WEI5d2t1SklrT2lPNXlKcmpNT2t2YzJzUEtZWkRTeFFBMDNUc3JjSmZPMnd2?=
 =?utf-8?B?SEdGZjk2OG1POUJ3YjZtM2Rzbi9oQUVpWjNXSHkwWFE3UmNyT0J3ek4ydzhr?=
 =?utf-8?B?SWFUV293N3R0ajg3VjlRQzIyV0dYRU01encwWmxxb2hQVUVPaHZKMXBBWFNB?=
 =?utf-8?B?ZGMwNkpXM1Z4eGJ5MWVwS0NXYW5rNEgzSFJFb3FUNlJZSHFNQXZqUmNkS3Fx?=
 =?utf-8?B?RWNJK2FFUDJ4Rlp2RzFrREZuUnI0QVpMTHllZ2tqZWEra1QxbEFQeHM0RVI4?=
 =?utf-8?B?WnhkSmE5RVF3UTBtRCtzeUJQTWE5WlVKRG9yOSt1Wmg3U3BBMGg4QUdQeUhJ?=
 =?utf-8?B?amVJUnMyL1J1YTdjVTcyUGlSWGViSlpXdGt1OHRJQWVDcU9jdno1NDFzQ0cw?=
 =?utf-8?B?Qi82ZFBDVTBBY3JxaDU4QXlDSWdINlpwa1hQdGJ6YlN2eUlPQjlqcVUvVmpT?=
 =?utf-8?B?NjZMaTFwekVNaGhKUjkzU2Y5TjJCVk02TUg0R0RwbDJnWmpHODlXalFrbE9l?=
 =?utf-8?B?UERVeG45TnJFWWhSUCtsb29Kc0JPTGtORG1Wa1dnd2VoRHozTzd3SjdMcEcx?=
 =?utf-8?B?UG5NbStyWElMWWdTWFRXTmw4ZkVrbVVYU0l2VVU3ZUdzRm1CWkRudTk0Q0tH?=
 =?utf-8?B?ZHNYZE5nVm1tVWJpT1VIbUF0MDJheTJrQ2NJdmJuWDUzdGp0anFjQzBZS0Fq?=
 =?utf-8?B?Tm9rN0ZDemNmekI0WXlmK3NXdzdGSlVDU2VJenNIYVlQUUpIODdmTnNTUVVO?=
 =?utf-8?B?V1dFSUpDQmxyWFczRWpVZndwaEVmUzFVY1pIVjFhNDRRK1B4UXBvb3g4Zzdo?=
 =?utf-8?B?V0xaNVpCZU1QOFg5Tm82d3ByRExlcnl4V3FJRHFpT1pWYXd0Qkg4WjY0cGgr?=
 =?utf-8?B?aTZzc2kwZVlOeGNqZlNXcktGamRaeGIyZk1qMmVyWFV1bHdmWFNOSVVmM1po?=
 =?utf-8?B?YnVTelBoRUh1ZDRFWEF6em8zWVQvdS9hUjVITGxvM1Babm0xWWRvNWxXRWZB?=
 =?utf-8?B?YjJzSEw1ODVLVHRDVmZuQUx2d2FsYjliU1BDQ1k4QWZnTzd3ek5lM3djSm9Q?=
 =?utf-8?B?dHd0UnpteTAxWkZtQzdVTnZla3FlamtIUnRGQlBWb2tVQWhERk0wNzNla2dK?=
 =?utf-8?B?TENOZmxrOVgvS3J1Q0tZeENpQldWYWJFT1UrUTI0enRPenJpaFYwaFpiTjNi?=
 =?utf-8?B?WGhLc0h6U3V6NzRPWkp3YXBRbzk1ekNEQkl4cWtoYllYaDJFUFZRSWxudnFT?=
 =?utf-8?B?eGJJeTd4d2RaMlhhM3FIQjNKSjh6OXZGMUZQU0VmcEJEVGEyNHU5dDFYcE5H?=
 =?utf-8?B?OFIwU0lGRDl0R09VSGVKNitDM0FWY1BxRFF4TUtrd3Vya3R4R3RudGlySHIy?=
 =?utf-8?B?Qlhub1RRZEN5ZG9wZ3lOdEFPTHVxcjJXVUNtZVRZWWU4Y0prL1FPYitNcWpu?=
 =?utf-8?B?WUZpUHlwSkxvNlFodjhTNS9GMWlpTU9rSDNPOTdORHZvT3FJS3lzcTIwVFQx?=
 =?utf-8?B?V3lNQTcvOEdhc1hpd3M4N1daelRlUGNKNEs3dk5LdWxFcWJjS216L0F5cUIr?=
 =?utf-8?B?amNlempmZ0EzaWxpVnYxdHdQdXdVeFBlSWNVWXVjTFhRRmV1LzhKazd5QkdX?=
 =?utf-8?B?RHZEMGNLRWlwOHcyZ08vV3E3UzJzd1JSL0M1c3BuelJ4SDNqVTZXUlJjRWFW?=
 =?utf-8?B?d005bFZwbU9WZ1dBbHcrbmpVbnIyclJKL3J6T1ViVDA1aFZOeTIxL2pEQnRv?=
 =?utf-8?Q?Ex8szN2D7nizo?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q21NMEdSZ1hFaVNjckprclBESXFIc3Z5WlBWeDlkSTdzRlQ5NGxick5VYmI1?=
 =?utf-8?B?SDZrazA1K3lkYW53ZDhGV0pOS0pxL3lmV3E5Vk5ldEU1QUx6RlhxT2JqYW9x?=
 =?utf-8?B?dzhycmVYOWxCMHFXUFhwaG85aTdHY1o2eGhRZjg5eEthT1IyNjhMeUhraEVY?=
 =?utf-8?B?alFZSTJlS0ZYYXdCV0VNK0ZEZFJ1dGhTQmRYZGU2SFlDVlFBTUNXYmNzMzhz?=
 =?utf-8?B?Q2NZWG1hSHJNRXN0VTVRVHlzb1FuSk9PaWhtZkducHoxcGpaR2V2WkxGcFpD?=
 =?utf-8?B?aGRSQzlId3dIS2N1aTFmZ1ZmY0JXQzJzUnhFaUEvOWg0V1lMaXQyQUhNcFJS?=
 =?utf-8?B?OHFJbHZEaDNlZU5xMVBRRUpRQ1NWM0VBR3E2eEM0RFNQbkMzVTdvRzliRE5n?=
 =?utf-8?B?blM1UG1QMUtCVTlXcjNvQUZnVnRMOTFycE9nVU1BRFFSeG9ZcTA0YWFCdFJq?=
 =?utf-8?B?SS9GVktYMXZ4dWtnbE9FdmRuWEZ6TW95ZStSQU5GTndqUnY0ZmtVK3dRY0RI?=
 =?utf-8?B?dk84cFNXY2lrOEVXNzBjQUtQWFUzUG04NEF5ZU5WMGVFTHBoM3N1cEplUDh4?=
 =?utf-8?B?RXA5dUI0a0FOY3cxNGRvMDF1eU5LemtVdUVuaVpMdDBzYnA5NEI2andKMjV5?=
 =?utf-8?B?MlpNWk9OWW1Dd1Vybk16dHhsY1Q5V21tRWNLSDY5ZlZPVGtGb3BlN3o3RlpZ?=
 =?utf-8?B?K3cwN3NudHNTTFZJU2pTMnRDTyt4dUJ3c0xnVjNKRjhSS2VNZndoU1d1VW5G?=
 =?utf-8?B?UU1JVXVTbGVhei9veDR1MklCbE1zeGJVaXhKRXVIbUpYbm4vL3ZhTVNVNUVm?=
 =?utf-8?B?SGNMT1VRZFJhYnRtdGFtdlc2VnFpN2dzVWpFb2VDODNlMm4wNEN2VCtlcWJk?=
 =?utf-8?B?cUZhMWNibHU0UHhGdGVobzA3YTE3SWtqQ29NQXpBL29HUVk4cWNPclVsWFpO?=
 =?utf-8?B?aUhQRXJOcStxNUJrS05rbFNWRHpJTkZQRTF4Qm1PUVpNRnFPRCtzUUFLZHRO?=
 =?utf-8?B?TFc1ODA4VU1yWE43QTdFK2hOdDlpREJob3JtckRRK1FQd2hwdUo1RDJHdmdK?=
 =?utf-8?B?T1FsM05WZ0tDNjNlQzB6dFA2Z0hiUVdpaHNJNjc4YnIxNTRwc3VjK0tTZ0FJ?=
 =?utf-8?B?ME16UThwMThOSmlkUFZpM2RrWC9aMnpPV0N1L0txclo4aXVkT2VQNHZ5cXlR?=
 =?utf-8?B?UkcrNEFaWSsxbGp3VjBVR0dvZlp4a08wamlUd0haNit2Y216SllzRnZ1aDJV?=
 =?utf-8?B?aDd0TVQxbHMzS2tBN1lmdHFYVmhabDU5YUtxQ0ZIS1FUcXVQcVVFblZNekZN?=
 =?utf-8?B?bTZ1RjFMVTJsdWlhUHQ5RHIyY0d0OFFZb2JGWXRCbkdNTmNDZVFkUng3d0tn?=
 =?utf-8?B?d1RibENMVjlLc3BaaEY3U3Z3aXltbzZ6dS8wR0ZtVnBYZDZZS3dkdW1lcitC?=
 =?utf-8?B?UUpwYjdSMitJeXQwWFE2QkhFQWJnaVd3S3NERUZyQkhUcGt5VVJlaW9JZDds?=
 =?utf-8?B?Sm94eWxIclAwZk5XOXB1M3QyOWJpdFNvMGRaZStIQXBVdU5DV0hmajVPN3FD?=
 =?utf-8?B?S2JVNmdsZU1xS0kvcTUzMXFyTUlWU1RMOUJMY1h0UEtxd1BKZ0Z0a2JISy8y?=
 =?utf-8?B?eDQ3TkgwUkpaRCtXNGhiMEl1aVplSHFmRERwWEJrNk1EVmZxeVBMeTNiTVFK?=
 =?utf-8?B?b0I4b1ZUL09EcjF6V0hSbjgycVRDZ1ZWNGVLWnhZNHh4OUwxYThseGF4eVJv?=
 =?utf-8?B?d1hUSEZwSW41WUJRZmRiM1hwYXVvN0JsNnpDREZyL0cyREdhVkdRZlRscis3?=
 =?utf-8?B?dXN3SEc1c2VDSkU4bVJwZy81N0k2L0VkbjFYR3NCeFRCcEsweUVZRzdVMEsr?=
 =?utf-8?B?eTdBdGxCbHVwU24yYUZ1OWlYY0dHa015aDNMbkZQMkxyUEc4VTNDK2N5QlBQ?=
 =?utf-8?B?Tjk5aFdoVkhpblJpNGxDYk5laTZpaUVDcGNZUnFrcXBscnkwaU5UWkwwY2Rz?=
 =?utf-8?B?VEpUOUdrOTVNSzc0cHBKWGJlaWJFbXIxdzFabjRUTmx3Wi90dUIyZWI3UnRt?=
 =?utf-8?B?eGV1VVpZNzBvTU9pVTFiaGZjOFAxTUhYNWlBdWpIZXZ1dGhVUWNUZlltMFNy?=
 =?utf-8?B?MkwwZEp5Mmx0VDFNM1hXT1o0TFd0QTJ6dUJEd3J6Z0dXMml1WjY3dnV5ajly?=
 =?utf-8?B?Rnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 28181fe0-dac9-4072-8713-08dd20fe275c
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Dec 2024 13:56:51.2074 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: g4ZciboyiNxsl2x8kJ4qdxISuq1mn9gWC14oz0btMYLyyr77TkRSPF2j+w1HkfUCPVCPb/7wOUdhIRsAUIzZtw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4636
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

Quoting Jani Nikula (2024-12-20 05:51:51-03:00)
>On Thu, 19 Dec 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> diff --git a/drivers/gpu/drm/i915/display/intel_global_state.h b/drivers=
/gpu/drm/i915/display/intel_global_state.h
>> index 6506a8e32972..e47e007225cc 100644
>> --- a/drivers/gpu/drm/i915/display/intel_global_state.h
>> +++ b/drivers/gpu/drm/i915/display/intel_global_state.h
>> @@ -8,6 +8,8 @@
>> =20
>>  #include <linux/kref.h>
>>  #include <linux/list.h>
>> +#include <linux/stddef.h>
>
>What do you need this for?

Because of offsetof().

--
Gustavo Sousa

>
>> +#include <linux/types.h>
>> =20
>>  struct drm_i915_private;
>>  struct intel_atomic_state;
>> @@ -15,6 +17,10 @@ struct intel_global_obj;
>>  struct intel_global_state;
>> =20
>>  struct intel_global_state_funcs {
>> +        /* state_size and base_offset are initialized by INTEL_GLOBAL_S=
TATE_DEFAULTS() */
>> +        size_t state_size;
>> +        size_t base_offset;
>> +
>>          struct intel_global_state *(*atomic_duplicate_state)(struct int=
el_global_obj *obj);
>>          void (*atomic_destroy_state)(struct intel_global_obj *obj,
>>                                       struct intel_global_state *state);
>> @@ -26,6 +32,10 @@ struct intel_global_obj {
>>          const struct intel_global_state_funcs *funcs;
>>  };
>> =20
>> +#define INTEL_GLOBAL_STATE_DEFAULTS(type, base_member) \
>> +        .state_size =3D sizeof(type), \
>> +        .base_offset =3D offsetof(type, base_member)
>> +
>>  #define intel_for_each_global_obj(obj, dev_priv) \
>>          list_for_each_entry(obj, &(dev_priv)->display.global.obj_list, =
head)
>> =20
>> @@ -96,4 +106,9 @@ int intel_atomic_global_state_wait_for_dependencies(s=
truct intel_atomic_state *s
>> =20
>>  bool intel_atomic_global_state_is_serialized(struct intel_atomic_state =
*state);
>> =20
>> +struct intel_global_state *
>> +intel_atomic_global_duplicate_state_common(struct intel_global_obj *obj=
);
>> +void intel_atomic_global_destroy_state_common(struct intel_global_obj *=
obj,
>> +                                              struct intel_global_state=
 *state);
>> +
>>  #endif
>
>--=20
>Jani Nikula, Intel
