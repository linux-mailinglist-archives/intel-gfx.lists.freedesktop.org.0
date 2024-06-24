Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6BE89141D5
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2024 07:16:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F93210E342;
	Mon, 24 Jun 2024 05:16:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b+WfDRSp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72F4210E342
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jun 2024 05:16:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719206202; x=1750742202;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=XrUdVO+kQ1xG/yJ8fjOU5PVjOcPiSM84MozVGJ2Z8RI=;
 b=b+WfDRSpvzJomD6T3CMTRCoZ7bHOikulPwlAoLVz3+4S2iX/SG7EZI1R
 Z+29G3NJzo02nT3xN0sljIEhEZvCUiiUXjJxk/KNZtOlfUXqSYNku03Sh
 WDS1RC2H1L3v1Yiy220egGA1io0WF8PC9WMS2gkWnpvCSkh/WjZWZ6vJ4
 0C/yKbZYJG1CXnHb2y3n1RO9HBDH3nYpdabm19ZJsj2TkM6X8ImWsl4ns
 Of8dg6ipIzSq08V9XGxlWOsDh8J0Pz+gV6mDOPtUg9nFUhME9O9CcRd6x
 LU3InsPa643PEBLjy/Sfdw3wKwi/wMzfMBiIrqIjbLiSnbCIKUtk6nANi Q==;
X-CSE-ConnectionGUID: dsckmg57SMqMcPfyQui3oQ==
X-CSE-MsgGUID: 4BFaQwH0SOeZll/qeYIJ9w==
X-IronPort-AV: E=McAfee;i="6700,10204,11112"; a="27565001"
X-IronPort-AV: E=Sophos;i="6.08,261,1712646000"; d="scan'208";a="27565001"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2024 22:16:41 -0700
X-CSE-ConnectionGUID: PUCJ5AcnR8SEx5ZWADYYnw==
X-CSE-MsgGUID: 9EEY/m6nR4CWdm5kvh4t1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,261,1712646000"; d="scan'208";a="42986195"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jun 2024 22:16:41 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 23 Jun 2024 22:16:40 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 23 Jun 2024 22:16:40 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 23 Jun 2024 22:16:40 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 23 Jun 2024 22:16:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YNbTmvH7I0yssDFd8cQEvS5q/DfFT87flAylrSQWEoeLlioVNp7HMJ04zdmgP5yIqxOQFJLXf8isGp/V9ME5JtmPI2DTKD+Fj7R2lnPtNCI/y5juzyMg6Jtcnrt6yDiVt5TYJccJXnFa5pFAYdW4SwL77Upz0Vxk8RmTAJDdOTXXVfAPR8ZsEP+m+SdpDPt7jX5I+R13XL+ksApJalb0RK/VkKZcLVXEyxLY4iMMcNPaKi48oATNLrBF4JFe0dUbQ4ckQ6jVVRbTYxnr2DqxBOcG5r5zrNL0klJKCnyPWMDLYxNzSKD2Va3/+M3U490iv2bZdo14GBLvjNuTxk6iSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XrUdVO+kQ1xG/yJ8fjOU5PVjOcPiSM84MozVGJ2Z8RI=;
 b=fVz1z2WfGg8WCcw6Csr8sNW/N1JsdfYaoTkw4EoIg7Vj/heY4zsD3e5w+NMylfdBtyCczgswo/sQv1j/uvxpTgrLDoI7W6/CcSDL8oBaslBFjammwst+VcNjMv7EIpMCaf2XshfFC/sNDdaH+FJsmbG1p8BH1ioz4Q/XHa3f6urqu67K8p+hDi+CkdtOIVNwBGyXYto1E1urn/nj4tkl9bUoakjXf1rRQDVgGtCB/r9GC88SpFePURpTBYa1lxZyUcv/RND6GJKGBkeBJU5myRA2MSBUMeZQivKNHSjfpMFma0DB41UIROVROHYrz5Pls3rCy99rl0pinBsie+l1SA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MW6PR11MB8337.namprd11.prod.outlook.com (2603:10b6:303:248::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.28; Mon, 24 Jun
 2024 05:16:38 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.7698.025; Mon, 24 Jun 2024
 05:16:38 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/psr: Set DP_PSR_SU_REGION_SCANLINE_CAPTURE bit
 when needed
Thread-Topic: [PATCH] drm/i915/psr: Set DP_PSR_SU_REGION_SCANLINE_CAPTURE bit
 when needed
Thread-Index: AQHawv1Mo4xn4xk9MkeZs3PfklOw1LHQwNKAgAWjWQA=
Date: Mon, 24 Jun 2024 05:16:38 +0000
Message-ID: <183c41ed950d3c4069c4765ab8abd6542a2679bc.camel@intel.com>
References: <20240620103312.903977-1-jouni.hogander@intel.com>
 <PH7PR11MB5981B95FC947C10E9A2DD960F9C82@PH7PR11MB5981.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB5981B95FC947C10E9A2DD960F9C82@PH7PR11MB5981.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MW6PR11MB8337:EE_
x-ms-office365-filtering-correlation-id: ab95e0b4-c979-4ba0-d7d6-08dc940cd357
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230037|376011|1800799021|366013|38070700015;
x-microsoft-antispam-message-info: =?utf-8?B?ZUZTZVQxb1k1ckEzWDdLM1dHSzdSRHdCdzFyV2IxNXBxd0t1Q282ZS84MFNs?=
 =?utf-8?B?azc4NmpBWkRCamxSRXVOR1ltdmZIV1dWb3FlSGxkNEJQMEFROXVsYS9HbnQr?=
 =?utf-8?B?UER4TEdmZG1qSDN3cXBYZ2EwRnlVUEMxelNDRVF5NTkwa0hGaEVPZXN5OUZU?=
 =?utf-8?B?YWp1Ty9ibGZtZ3R1azZ1WjB1TFpibVd5N0lmQVA0VjVKMTlYZG5oV0FYOVZy?=
 =?utf-8?B?enVJWFJ6eDc0R0gzaGh4cjZ1eFVaeVdXcVg2RmdYSzhmMlRQWGFrbis1NFFB?=
 =?utf-8?B?dUtJVFBVVHd3N0dWWEdYN3h5RGJlMTRkWU9raGh5czY2Skd5SmdVVmdrS08z?=
 =?utf-8?B?dWdWMDJ2RjZXUHFiVW9HeHNJUVhVUzE0ekVlWVkvTDZDeGJIcEJVU0I0Vjhj?=
 =?utf-8?B?b2ZlL1VaMEJCZ2FwSWE4ekIzelY0QzVGZk0xVmhZZWZQRnlFSWt4eDJoVXVi?=
 =?utf-8?B?WC9ZcC9UaU9QNnNPckNwTzZRMWRrTlBVWTYvN2xQQXl4Qkxvb0dGamMwVTZZ?=
 =?utf-8?B?NVNjenJlQlZETVZtTlZRUnhPamJsMlVhZTJJRi9tNk03NzZOWlJCa0Y4MWZU?=
 =?utf-8?B?UHZtcmNydVdwSXVmeGtOM3Y5NXBzMmpkNzM3V3JkVXFsMmRVSVlUdEdSNVZD?=
 =?utf-8?B?WDZEdzdwaFBOd1l5NEZ4alFVOWtQVjhRdTVaTXh2T2k1b1pNSTUzZTJWRkxq?=
 =?utf-8?B?V1hubzAybnVRVFpWeEIxemdtcWJmclNmcnRuYTVWdWF6L2krSHU3MjR3RFQ2?=
 =?utf-8?B?ZWRGNGRZREpsNVhTeVdwVzJhWXMwSGlaYjFBUm9oQTJqcUtiZTU3WUs4Y3FH?=
 =?utf-8?B?N2dlYytFdFh0YndMeEJvWE9ZNHFucDE3dW9id0tqRTA3bHQxMXdzTUR2aXNJ?=
 =?utf-8?B?TjV2QUJTNTc0OERJbUhnbzlUbEdvWEVjQXcrcWdLelNoanYrVXZBNk1Ec1pl?=
 =?utf-8?B?RzV5LzVhdll1TmJqVXpicHVPa0h0QjJtWi9nT05MY09NaHBKZjd0VUxBRGR6?=
 =?utf-8?B?OEVYeWw2VllmeUszODNWWGxqRWtzZ0FsUjJJVUxyWDBHR3ltU2lQYnJZK2Y5?=
 =?utf-8?B?VHBhdldEV0FtYTIzeDEyNXdnNUdsZEZkYXRqZWhCTERpekVGeVNYQ21KWEFC?=
 =?utf-8?B?ZG03Ti9tNG55eEdkZWdXNGVEVlBCbWhhUzhaZXRBbUx1clFCdWNrK21OM1di?=
 =?utf-8?B?QncyOTEyMUtjaTdHUHM3dGo3emlPVGlnQ0dTNnZTY0Zqb1E5RnkxZERZY1Rp?=
 =?utf-8?B?Vm9QQ0l6YkdFNTFVVlRpbkx0Ryt6cXdETWJaelIwd3ZuN1RFYmtmSzRvaHpP?=
 =?utf-8?B?eXhYTUpGTGFCNHdBeEFWa3VnTmZNZjRMWUZod2F0bzZadjEyaDUwMzF0elly?=
 =?utf-8?B?TjFYazloWjk2TWNLK1VvNUwyZktaMHdaRlBQSzkwNSsvUm5RaDU1ZDlDbkNI?=
 =?utf-8?B?d1MrQVE3VVlqT096dFpaY245bVdMRmZVaHYyRXZ0Z1R4SVB3RHBxMzhjUEdu?=
 =?utf-8?B?ZCtoV0krN3RnN2hkbTBlR0ZyZHdoWkxxbGRjUmJTYTRsU3Z2U00xS2ZaUCtt?=
 =?utf-8?B?ZHhQckVpMGR3U0Z5YmdwUXNWUkVKVlpmWDNUTDZLd2ZKRWVwM0w5cmp4clo5?=
 =?utf-8?B?VUhEZTdNNzFvZ20wdWNveC83cXBvYTFnRnYzWWtJeklXa0VSQnZ0M2xBKy9G?=
 =?utf-8?B?b2VmdGFoV3hDeHdOU1dhdDVDZmE3RTZXYTBmVU55dFZJU2RvNldXcG9RaWl3?=
 =?utf-8?B?a1d1bGZrZy9rcUY0U1Z0bGpmYi9GUVRHMXRRZ1BzRUFUOGV4TmZEYzFsWERM?=
 =?utf-8?Q?KV2vMUjlsB1uV2756WAzOCZkK6NKytDgNm7+Y=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(376011)(1800799021)(366013)(38070700015); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TjBwRGlnSHp2eGljMzhxeTVBRzY5clZsdWdFOXhrRnA4aG1mU0g4LzcwTEVw?=
 =?utf-8?B?bTVmZ1hrNmgxaEdHdTlUWXFPdTF1TW9SU29sVi9vR3l5NlMycDdiL1pFOTBD?=
 =?utf-8?B?VFpWKzZneTN3ZkpOQSt5Z2o5QzRGSU9OVkZNTXdSc2JKS3NncHpDYjA1aVRh?=
 =?utf-8?B?Z2NWRXRxVjE0YW1PNkFoQnVKYkI1SkFHRTJ4YkkvNms0Y2FOeG12MDhXUVlZ?=
 =?utf-8?B?SlNNTGhiRzdDNUllUGp5WmlubStYdytGaXVsNFFjaWVkQk5qNEl0VlpsRmxC?=
 =?utf-8?B?V0RGbkJnNG0wenB2R25EcnVLK2o4TjIzdWNSVXo1Slg0cUdTb0RsdGNsUUZ3?=
 =?utf-8?B?OXlRUldkeTlMbmVqSGxJWHlrMVhnRy8yTFdPTk9jRSt4OW9nd1JYdVVPbUp1?=
 =?utf-8?B?S2NqRm1BMnExd054eFFIVWlyZkFaYlJGUnFvcFJmZjlHRVlmMlcvWTBRZ1VF?=
 =?utf-8?B?RWR4WjI5OXJER2ljRlZlalBneDJCZmdHNHBobnhPWWIrelpQQTltZkVxeUNn?=
 =?utf-8?B?bGdoUzExV1VhRGtxT3RER2w2MTdqUHV2cnhnNGJ4ZEdrU0x3T0tXVUpSTmQr?=
 =?utf-8?B?b1AwL1NmWWcrc1doQlRYU2FvVWJlUGxaRjVHTG1hTmNFYU5DeVBlVGFQKzdj?=
 =?utf-8?B?L3IyY2ZYWDU4azR2WWpJNlNWUUxHd3I4c05YV3laaU9GeGthMjFRNk54SEJJ?=
 =?utf-8?B?akVtY2p2bzFQYWlRSlFNUHN3bXdPa25SeG9NRVFEZDhYb0J2RE5rZjVHYmxt?=
 =?utf-8?B?bG1HWE91eEtiS1Rxd08zQmhvdFZXWjhsRnMvUFVLM2lnUHlVRHNuNVFLUWQ3?=
 =?utf-8?B?Y1hxSHJ1V0VMWG04RDZUdDA3VXFycWxBZjJSYmxIaFZCekMvYzYxZlg2Z0VX?=
 =?utf-8?B?UTBFcVBLVGtTZzhXZ1RmTTMxTFhFZG9vaC85c09heS9ZbTBxSWluUVJSdlJL?=
 =?utf-8?B?RE1TbkdtR1RnTElPU1NyUXdraHhJN1dCSjFSS0dxeFg4K2p1Wkg2WmIyb0F2?=
 =?utf-8?B?UmlwRnIzUUExaXFzaDVybU5vbVVkUmp5dUVadHoxNGJjODA0Q1BWdXovVHpu?=
 =?utf-8?B?WGRqYmlYNnVacGFYMVlzeVpiVURPMGl1UEpxZjc5OUxDaHJtUmVoSEhLQkVi?=
 =?utf-8?B?SlNUYUVXMEQ2Q2FhOXg4S2JQWkh3OWVtbFdIN0xxc0FzSy9rTVFvWmNPSy9Y?=
 =?utf-8?B?LzYxOHptanp4dFpUVU0vYVZ3SmtsT0tLak1STnVMSUZRWEp5cW16WTZlUE1n?=
 =?utf-8?B?R01CSE9sL0c4RmMyM1pVMXg5b3k0ZW5la3BGWFg3amk3eFJhS21GaVBYcTRP?=
 =?utf-8?B?dGJ0YWY1RnR4STB6Q2hTS0xNV2ZqRFptYjVFb2xPZkVkaVR2VWhKWXlyNTVn?=
 =?utf-8?B?NFlRNHZjN0RuTUlMK1pzeldVZmN3bzFUcEJ1QmhiQ1pIUStTYmFFMmNvc1Zr?=
 =?utf-8?B?N1ZDUzVjOUZBOUZQS2lsYXBGaG1SaHl4bHZ5WnRHZzFXNTZhWjNPZ3RBVjY1?=
 =?utf-8?B?eXZ6U2JRV3hUZjdIa3o2b0Q1dDZLTVVUalJoZDI2R3FZTTViL1c1eTlRN2Ro?=
 =?utf-8?B?eG9MOHdTMGpwVEJxSW1oTWdhSlM3YUdSWmd5NVZUdE9VZkxROGZkNmZxbEp6?=
 =?utf-8?B?TjFza2RZY2JQNDVtQXI4cUx1TEhjVjVnU0FxZ1gybWM5NmlQWUExVElyMytM?=
 =?utf-8?B?aitUcUtDUFBYbnIxZFNObXN1ZmpBbWFsSndQbFlPUitiODNyZlNxOTJLSmRn?=
 =?utf-8?B?R3N2T2picXkyOGRHT3ptZkVIRytLVVQwYTdBOVZzcnlDQ3FJZmxMOTR4VGkv?=
 =?utf-8?B?WmtNajIrdTdvbG8rM21TSmFNdTRXV1ZnUmJySHo3OVh0NXAvVmR6M0IyblVK?=
 =?utf-8?B?ZEZPWHE1bk9IcmxkUUR2cEdsOU9CcjBtbHpMTDl2dmhpM2NzSEtVcVVSQjg4?=
 =?utf-8?B?QlZqajdnK2J2QVZ3K0RyalgyTGRUOUFHR2IyQ0xFMnNEdlNvd2hqYXg5dUZN?=
 =?utf-8?B?S1FiNTVOK2tlK2xBMVFQcENSZlJHM1g0KzdrOXZmY0NrK01FYy9tSElkUXdP?=
 =?utf-8?B?RWo0NWRVaUFNUG1iYzZsbW4vN200VGVxRU04RGhwTm1iZGIwVm5xVFZoQ0R1?=
 =?utf-8?B?QW9DQWNyYmovL1dma1YwMnhjRDY4RWVIejdYb2FDOWs4UHp6c3BabnJPV2FO?=
 =?utf-8?B?NUE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <50E93FBF718A1943978BBBDD06E6F4E3@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ab95e0b4-c979-4ba0-d7d6-08dc940cd357
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2024 05:16:38.5714 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: E3fC12SWY23shaA0R6H0nMzckrh3pNjnkOTmJETDTdzxllGXdY63fWdMNRv4vkG7A7ImKXT4TleDT6UY5MvO5fXslJHTow2JrBoQN7M8C/w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8337
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

T24gVGh1LCAyMDI0LTA2LTIwIGF0IDE1OjA2ICswMDAwLCBNYW5uYSwgQW5pbWVzaCB3cm90ZToN
Cj4gDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogSG9nYW5k
ZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gU2VudDogVGh1cnNkYXks
IEp1bmUgMjAsIDIwMjQgNDowMyBQTQ0KPiA+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnDQo+ID4gQ2M6IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47
IEhvZ2FuZGVyLCBKb3VuaQ0KPiA+IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gU3Vi
amVjdDogW1BBVENIXSBkcm0vaTkxNS9wc3I6IFNldA0KPiA+IERQX1BTUl9TVV9SRUdJT05fU0NB
TkxJTkVfQ0FQVFVSRSBiaXQgd2hlbiBuZWVkZWQNCj4gPiANCj4gPiBTZXR0aW5nIERQX1BTUl9T
VV9SRUdJT05fU0NBTkxJTkVfQ0FQVFVSRSAoU2VsZWN0aXZlIFVwZGF0ZSBSZWdpb24NCj4gPiBT
Y2FuIExpbmUgQ2FwdHVyZSBJbmRpY2F0aW9uIGluIHNwZWMpIGJpdCB3YXMgZHJvcHBlZCB3aGVu
DQo+ID4gcHNyX2VuYWJsZV9zaW5rDQo+ID4gd2FzIHNwbGl0IHRvIF9wc3JfZW5hYmxlX3Npbmsg
YW5kIF9wYW5lbF9yZXBsYXlfZW5hYmxlX3NpbmsuIEFkZA0KPiA+IHNldHRpbmcgaXQNCj4gPiBi
YWNrLg0KPiA+IA0KPiA+IEZpeGVzOiAzMmYwMDQ1ZjkwNWMgKCJkcm0vaTkxNS9wc3I6IFNwbGl0
IGVuYWJsaW5nIHNpbmsgZm9yIFBTUiBhbmQNCj4gPiBQYW5lbA0KPiA+IFJlcGxheSIpDQo+ID4g
U2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+
DQo+IA0KPiBSZXZpZXdlZC1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5j
b20+DQoNClRoYW5rIHlvdSBBbmltZXNoIGZvciB5b3VyIHJldmlldy4gVGhpcyBpcyBub3cgcHVz
aGVkIHRvIGRybS1pbnRlbC0NCm5leHQuDQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXINCg0KPiAN
Cj4gPiAtLS0NCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMg
fCAzICsrKw0KPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQ0KPiA+IA0KPiA+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+
ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gaW5kZXgg
YTlkOTM4M2U0ZWU1Li4wZGJjYWY2NDQ2MjQgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBAQCAtNzMyLDYgKzczMiw5IEBAIHN0YXRpYyB2
b2lkIF9wc3JfZW5hYmxlX3Npbmsoc3RydWN0IGludGVsX2RwDQo+ID4gKmludGVsX2RwLA0KPiA+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHZhbCB8PSBE
UF9QU1JfQ1JDX1ZFUklGSUNBVElPTjsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgfQ0KPiA+IA0KPiA+
ICvCoMKgwqDCoMKgwqDCoGlmIChjcnRjX3N0YXRlLT5yZXFfcHNyMl9zZHBfcHJpb3Jfc2Nhbmxp
bmUpDQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHZhbCB8PSBEUF9QU1JfU1Vf
UkVHSU9OX1NDQU5MSU5FX0NBUFRVUkU7DQo+ID4gKw0KPiA+IMKgwqDCoMKgwqDCoMKgwqBpZiAo
Y3J0Y19zdGF0ZS0+ZW5hYmxlX3BzcjJfc3VfcmVnaW9uX2V0KQ0KPiA+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgdmFsIHw9IERQX1BBTkVMX1JFUExBWV9FTkFCTEVfU1VfUkVHSU9O
X0VUOw0KPiA+IA0KPiA+IC0tDQo+ID4gMi4zNC4xDQo+IA0KDQo=
