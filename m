Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21B059DAD00
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2024 19:27:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D50410E1D8;
	Wed, 27 Nov 2024 18:27:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oAvKHR9A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 929D410E1D8
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2024 18:27:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732732022; x=1764268022;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Q68cYTaxoIcCeEYYn3MupNHdjhQk/jefhgqfxACXLok=;
 b=oAvKHR9AKcMprX3YMlWUhr8ee2sC78NjoVRwPLJKnC19SDXIw29tfGuh
 VqhgYo0owWu11TBnfT3JtMfoGX0y2wwFiCwQAIj8TAeuzNsJLcjjOL8aC
 cpJLVrpbldQxy5y+PHHNCR9yv4AOSin55AK/D1u59iJWUQ/BGPZtHWB1w
 I5jPE7RFE2qQnSO0QXwHogFD8ig40Hd+KUwsGX/d7wJQhVyZz6R0AN8Nh
 becio+OqUC4o7qjCEPQ6BYrH9Cn3m53mCA5CR6L9gxYpnyYGe96NhjKvN
 DtNYK9iWR0JZTTwXaNRhHbjFyu2Nf1D2ERLieKR2N62wRgXTwiuzyBPGU A==;
X-CSE-ConnectionGUID: M1W1hkBLRS29Ic02HJxd2g==
X-CSE-MsgGUID: F2QpihkrQK+Tao0Rm63gpw==
X-IronPort-AV: E=McAfee;i="6700,10204,11269"; a="32900813"
X-IronPort-AV: E=Sophos;i="6.12,190,1728975600"; d="scan'208";a="32900813"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 10:27:01 -0800
X-CSE-ConnectionGUID: lAaSDHTtRbiVG9lIxAITcQ==
X-CSE-MsgGUID: gCOkHIn8S7G5sqQHo2uv4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,190,1728975600"; d="scan'208";a="96458987"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Nov 2024 10:27:01 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 27 Nov 2024 10:27:00 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 27 Nov 2024 10:27:00 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 27 Nov 2024 10:27:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ezpg4qMcUYxlrgSDveKavk+Yue2LulhY1x5LkLe5L4TUPuh3ihfM+vACSElhicSPOoIWZ0YO1aaCdGz0p5odmLjyKMraeAt6Xj4zfk6SargrDZX+Kze0qgj+8eDwulS74fOeX6Fk/zTjsrBZwynKsPmSGbqipcl4B/PaigtfI195c5Q4Vn7m11umcmmdyoOp6p+jSthwOyf0rXumUsT1zozkmiPMQ2kS5tyQhXe9cf3VCJevOP62lOuBcZprBu5FAO1AhOD1vIqJE9/pnTRyuwOXopIBn7tPMpqPYtscrnJikShC46zKjC5Bpy6YnT91jT+wUqOgWFsG+kd9sO5VDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q68cYTaxoIcCeEYYn3MupNHdjhQk/jefhgqfxACXLok=;
 b=loUn8GgRZo5bj5vbLDjiDTg5fWYhC+dkF+nF4c0KYABTSkf/bc8zTcxz7bQJxvNVQnAgE1wyTMlBWRc1rctbAqKFaFjJnc3CmWw21vDrjiyO9qRI11Tv1/TiC9UfHeRWH/EdRdjUoEaphov3W0SlrlWCMUaqxjIh2fNLxVhtgBt4jrnOMJyDjoBXxRn+hW4TbqwBg45ZtAvwJ7WvD4JrEEKXTNgr3QOHDd4ooxNT1Zqx+H/Il8wyarMaZA2un9Kece9cmQJT0cUQS2SRS1kcv6P/smrsU4M/Zs4IfAbDu4YsqLOmHJ8EJoqDXRadA9jMyAvwpYOL4iK1BYsSC3jqmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SA1PR11MB7129.namprd11.prod.outlook.com (2603:10b6:806:29d::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.13; Wed, 27 Nov
 2024 18:26:58 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%6]) with mapi id 15.20.8207.010; Wed, 27 Nov 2024
 18:26:58 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "stable@vger.kernel.org" <stable@vger.kernel.org>
Subject: RE: [PATCH 2/4] drm/i915/color: Stop using non-posted DSB writes for
 legacy LUT
Thread-Topic: [PATCH 2/4] drm/i915/color: Stop using non-posted DSB writes for
 legacy LUT
Thread-Index: AQHbO2sh+A4IDsSTmE27+RURUIivs7LLe9ag
Date: Wed, 27 Nov 2024 18:26:57 +0000
Message-ID: <DM4PR11MB6360901410D2FFD81A5182B7F4282@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20241120164123.12706-1-ville.syrjala@linux.intel.com>
 <20241120164123.12706-3-ville.syrjala@linux.intel.com>
In-Reply-To: <20241120164123.12706-3-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SA1PR11MB7129:EE_
x-ms-office365-filtering-correlation-id: 63dbc95f-f836-4ef7-fb8f-08dd0f1113f4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?d1gzcXN0QUVoZXozbjRBUzR3Q0Nta2dUSzJSME55ZnFsSTBnLzFxWGtsdXl5?=
 =?utf-8?B?WnFESUc3UVk0b2dDcnpqWExMNndlZWxLalRVeUNpNXVwNUZ6K0hocDlnZm8w?=
 =?utf-8?B?ZlFoQlA5bEdKbUJZdDVVRk9rS2U4QytGcm4xS3Rta1NvOGpmVTdVODJDQ1hK?=
 =?utf-8?B?Tjkyb0dTcE9vVS9zRE1IalkrWTdYR2cxRk40V3hNMU15Y0QwcmVGelNLTzBs?=
 =?utf-8?B?UWt5TW9sdnkzcm5uZ0ZHSDFUZWozUWZFaElNOWlaS2xjWU4xc01BQUJDODIw?=
 =?utf-8?B?Wmh4N2NnZUxJMm5QN201RFhnRk1XdFovK2JzN0JkRWNaRTZ0TG9vTGQ5VU5a?=
 =?utf-8?B?MGJWQ0dFUnhGaVZ3N21zdGtXamV5MUx1RFcxQndTYW1LTUFyTW11MHAvQU9K?=
 =?utf-8?B?YU1oajdCTERBREM5cTZhaWhROFE5dkpDYXVmYmQxbnNNajFYaEdFU1lCOURV?=
 =?utf-8?B?N2k1OFAyVTdtZjZnUVdMa2dPNzBNMEtmMEhZZzNUZUtsdWpVaVZxMXRQMjEr?=
 =?utf-8?B?K3ZTcEpFN01rRTE4Q1FmdlM0amFYU2NwMURSSDZITjRMK1QwVkVwdjkzYkpS?=
 =?utf-8?B?RDFhZS82Y1hzSmhkR0tKc2V0SVEyWFMyd2x4eUJhd2M5cmJBUzI4aFBYT214?=
 =?utf-8?B?Zzh6WndzZy9OR3lDRElJSWk5bEErbW1NNjNsZDNMSnB1TmRzL1dnd041M0c3?=
 =?utf-8?B?aXFKVDFzejdqQUpKdzNTRXQyWit3cG9Gei9VenBoc0xUZUFKc3I5V0RoRWx0?=
 =?utf-8?B?Y1Uwb2FiemwySnllWndVaE93aVNMb2JwMWdvZGRTNW5QOFJaL212Qm9FNVpP?=
 =?utf-8?B?TWk1R0tIVXJYQlp1QTJmL2pMQWpDVDRqSnhhWVlIUXkwT1lHVWk3ZmtrZWxs?=
 =?utf-8?B?Ym80Zy9vcTBWRkptQVlzUmtoQWhHc1NkRjJqdzBUbUthWFVCc3pGQzBnTW1W?=
 =?utf-8?B?c3V1Qm9ZV1djM3dybXMwQWxuQnhLQmZ2RVQ4MkVHcXcrcWZ0aWQ3RVFaSVlm?=
 =?utf-8?B?QzNEZlFRY2tmZUJpLzNoYjhhU1VJTnlabk9NZy80dTM4dHYremZhL0pDaGdp?=
 =?utf-8?B?MHU0Z2hVOTVaSkFDTEN2bVcySTF6MjFLVDJTNUZBTjFCZGF2V1lKVmhab2N3?=
 =?utf-8?B?bXFMSUU2dVNIazI5UXJFSU5peTloblJHQWZhWCt1Z1gyUkU1SnJveHI0aWVj?=
 =?utf-8?B?UWR3Y29vZ0xkQTlCczUxT3VhUEF2Ym5sZWdxV292QU56dURMUXl4SGdvZmty?=
 =?utf-8?B?R1dQYUROSkhvWTk1eFV3Rk1vZkV2eGg2d0hCNzN0RUFwQUpkUFQ2SXArUVI0?=
 =?utf-8?B?aWZJSmdKZkhqdVpxa090TmMwWVF3M2p5b05Ed3dvN2twTnE5djg0NTIxTi9H?=
 =?utf-8?B?dzVSd3pIeExnRlEyTHdaOUxhS3k1eXdoUlM0cVAwQWxXY3ZFTVhRMVh6ZjU5?=
 =?utf-8?B?WjBLbGpFK08rUlBPVjVjZGRYL3l4bzE1QVF0ZG9FaWRnOW1JMDMxNjhzbWJN?=
 =?utf-8?B?SVh2LzFRVHU2N290VTdTR2JscUQ5a1ZLSGVZeUErOFNsWnRHdnRqdkpoWXZ0?=
 =?utf-8?B?bVpDdXIvWS8xZW5LUVZLWldFNHFiR2t0NGhITWJnczlnUWI0eGFOTXQ1TWxw?=
 =?utf-8?B?ZkN3MklPR2h2WmVMeFlZMmhOTXdvbndjbjFhTlAyWS94d0JHQk9HTkxuZ0Ft?=
 =?utf-8?B?KzE0WGxZNlBkZG9WZjZpMmRJeGhrc1FuNU15S1M1d2NQNGdjbjFyWGlrVm0r?=
 =?utf-8?B?UHBEeE9rQkpHaWEvWENNUjZZamsvRHB0QXdMR3p0RDh1L0VWOUMyNFRtbEcw?=
 =?utf-8?Q?q8jvGbAxylizRvveO++v14nBb53Hn5pdGGJoo=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NmV5eXAwaGRXdzc5ODZ2STBzZkpCOW0yZDNYN3FOeC90MWVYdWQ1OXpXa0xK?=
 =?utf-8?B?TnQ5c294aXFIMlVEWkRFL01FQ2JIbXFOeHhVZVF6bzJUVVlUNWU3Y0EzZG9a?=
 =?utf-8?B?ZzI4d0NtZWNwZ0xLZ2dTaDYwSWJhcW9wc1JPRVN3WlRFQUU5S3ZyWTk4N1p6?=
 =?utf-8?B?RU9EQjlHWEMyZFNkampFTXFkMUlZbk1BVVRxKzVYK0pCTUZyaFc5SVU5NUJI?=
 =?utf-8?B?WTkzQzYvUUVZb1pxWTNOZW9jejdVdGtxV2twMW5uSGIvN2pYZmhON2x4YUR5?=
 =?utf-8?B?Zk9EWnk0YWdLWjBRQUEyeWY1bTFrcmthUXI1d1JkSnd3YjljTnY1UkZHVXFS?=
 =?utf-8?B?T2FTdDhmTE5MMjJ3cjlXZkk2NkZ2ajRsQXFaR1c3NWJxWVpxTEtNNFB5cVJm?=
 =?utf-8?B?Y0trU0tDN3Zob0JuVUkxVWlWVGZad2k5Mk8rL0sraENjci9vNEI5VzNkS0dZ?=
 =?utf-8?B?bXFEU3VPcEdJOElBZnQrdEZ1QUVtS2V6bEwraWRqZkJ5bnMxdTFJMUJadnB2?=
 =?utf-8?B?S0FFemY2ckIwSUovOWlQakt1WUdPb201OG5hbWdaMC9JZnZJRmFjNFM0S3dR?=
 =?utf-8?B?eXdOUVhvM3FHZGdyaGJ2bjZ5SEU3UGdBT3pDWlpydTF0QmlVOGRkZWh4Qjc5?=
 =?utf-8?B?aklKWWFSL0RFbTFVMzc2UlhYV29UZ1gwYjk5blloa1BhWDBoZVpsL3ZWV2Fa?=
 =?utf-8?B?bzlSeDhGMFJXMVEydGNhLzZJbno0bkZnT3RWcExHL1JybC9PbktqUStNK3Y3?=
 =?utf-8?B?ckJaNTVTeDFjdzBpdFAremRZbC9xc2U2TmJQUWE2elh5SDdnOVhCZGRsZjlW?=
 =?utf-8?B?UzV6RkViZU9WVkNReFJINFNVWnJiM2lZWDNDRjEzMU1EWWFqNmplM2hIVGZx?=
 =?utf-8?B?M2J5enFHSnA0WkRkM1phd044aTZGTWgvc0xDOUh5VUhhaXZBK1BZTnNkY0pY?=
 =?utf-8?B?QlZvY1RZU1p0UlJ2UXhybk5YY0N1QzFBSC9iRStMWStZVzJ5bDdNbmswUGV1?=
 =?utf-8?B?SnhwTVNLM2FaMjI4S25jcmJlN0YvaFNLTjArSUU5K2ZZMHlnZ1pUdEdvK1NR?=
 =?utf-8?B?UEl6b0pLanBkMFZOYmFsbXJOdzFrNmg1NURKWDJobk1mT2srQ3BHMlBQMndy?=
 =?utf-8?B?Sm1vRXd0U1FXMGVBYlF5RmJTNFFGNTVJemV4bnNmZGVkRHZFVUFHcDF4eXhE?=
 =?utf-8?B?MElYRzNreHN3Nk9qK1cxWi9EQ1p3R2t5bXQ3bUdUd0FPb2UydXBCbkdWbEFF?=
 =?utf-8?B?bTJySW9GakR3K2kzK0VORUwxbXpTWnJQeU5YV0pDWlpIV0txL004STQyekZF?=
 =?utf-8?B?UVhNWkFMVUxDS0pKTDZRdWpPSHpYVWlEbm9mMkF3OXptODNFMWROR3l6eFQw?=
 =?utf-8?B?K0JmelhMQzZWS01WTUNFaGNpdURsMW9NU1J0MnR6aUo3L3JkalpZWEY4RmZj?=
 =?utf-8?B?VTcrMlVUalpiOUYyU3J6Uk5yOGFydlpzYTQrRTdtbHpsMFF2ck92QmJPRnhq?=
 =?utf-8?B?bkpIdWpTcEdackdrMjRxVnNWL083S3FxTzYwaG9RY0J2SVlubU9OckMvM2Vy?=
 =?utf-8?B?V2x3b21BTE9lWjI5amZxRU82Q0x3R3pUV1BJTTRaUEhYRmljcUcwU1FqZU8r?=
 =?utf-8?B?SjNjL2lCY0IzMnViY0Juc3NVZkQ1cDVwRjJiMXRWb3BhNzMxVDdYN25GV0RS?=
 =?utf-8?B?UnlLaFVCaTg3bzZsT3Jid2UyN09BWVlkSHQxcVJ2UXdwbm43VTZlMXNuMVo5?=
 =?utf-8?B?d0lUR3lkODFFbThTbExuTlJoemNUaFFVLzhOeHNDU2NsY2RMcm5uRjVER3hs?=
 =?utf-8?B?bkEySHZ0VkdtMkZhM0dLZnh0M25BWFdQOWQvbDUzL1dWbE9QYTZlR3owNEZG?=
 =?utf-8?B?cno2SWlPSFMvL21RWjBWSENKM3VCQXdsWCtPdE9HRGRlR1NOUFlPZncrTm4x?=
 =?utf-8?B?dFNUOGJUTlA4bkJZdnljd3dvMHU0RkRWd3U3Q0xVL2dQWVdaRDYxOGVQb293?=
 =?utf-8?B?a25MUGVVSXgzTGxQVW1xZnRNc2tZSmJ4aDA2Sy9iWHZTb1ZMeXF4Q2ZZVWN1?=
 =?utf-8?B?Wk1OMUpzUkNmL2ptYlU1Q1hmNlRWRGdsV0tHSFhNRlFoS01yQmFXMUNWTFIx?=
 =?utf-8?Q?LnR5ky3Cd8tr1WDcc/pvQEpMY?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 63dbc95f-f836-4ef7-fb8f-08dd0f1113f4
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Nov 2024 18:26:57.9588 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ypqOyecv2DjueCTV/yo14PNkDvuOBtcXYo6ZZHcWsHepkgpiyvcKBUH/wNLdMw1b5pn3VazhRLZRbVDo0FjotQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7129
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgTm92ZW1iZXIgMjAsIDIwMjQgMTA6MTEgUE0N
Cj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IHN0YWJsZUB2Z2Vy
Lmtlcm5lbC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDIvNF0gZHJtL2k5MTUvY29sb3I6IFN0b3Ag
dXNpbmcgbm9uLXBvc3RlZCBEU0Igd3JpdGVzIGZvciBsZWdhY3kNCj4gTFVUDQo+IA0KPiBGcm9t
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiANCj4g
RFNCIExVVCByZWdpc3RlciB3cml0ZXMgdnMuIHBhbGV0dGUgYW50aS1jb2xsaXNpb24gbG9naWMg
YXBwZWFyIHRvIGludGVyYWN0IGluDQo+IGludGVyZXN0aW5nIHdheXM6DQo+IC0gcG9zdGVkIERT
QiB3cml0ZXMgc2ltcGx5IHZhbmlzaCBpbnRvIHRoaW4gYWlyIHdoaWxlDQo+ICAgYW50aS1jb2xs
aXNpb24gaXMgYWN0aXZlDQo+IC0gbm9uLXBvc3RlZCBEU0Igd3JpdGVzIGFjdHVhbGx5IGdldCBi
bG9ja2VkIGJ5IHRoZSBhbnRpLWNvbGxpc2lvbg0KPiAgIGxvZ2ljLCBidXQgdW5mb3J0dW5hdGVs
eSB0aGlzIGVuZHMgdXAgaG9nZ2luZyB0aGUgYnVzIGZvcg0KPiAgIGxvbmcgZW5vdWdoIHRoYXQg
dW5yZWxhdGVkIHBhcmFsbGVsIENQVSBNTUlPIGFjY2Vzc2VzIHN0YXJ0DQo+ICAgdG8gZGlzYXBw
ZWFyIGluc3RlYWQNCj4gDQo+IEV2ZW4gdGhvdWdoIHdlIGFyZSB1cGRhdGluZyB0aGUgTFVUIGR1
cmluZyB2Ymxhbmsgd2UgYXJlbid0IGltbXVuZSB0byB0aGUNCj4gYW50aS1jb2xsaXNpb24gbG9n
aWMgYmVjYXVzZSBpdCBraWNrcyBpbiBicmlmbHkgZm9yIHBpcGUgcHJlZmlsbCAoaW5pdGlhdGVk
IGF0IGZyYW1lIHN0YXJ0KS4NCg0KTml0OiBUeXBvIGluICJicmllZmx5Ig0KDQo+IFRoZSBzYWZl
IHRpbWUgd2luZG93IGZvciBwZXJmb3JtaW5nIHRoZSBMVVQgdXBkYXRlIGlzIHRodXMgYmV0d2Vl
biB0aGUNCj4gdW5kZWxheWVkIHZibGFuayBhbmQgZnJhbWUgc3RhcnQuIFR1cm5zIG91dCB0aGF0
IHdpdGggbG93IGVub3VnaCBDRENMSw0KPiBmcmVxdWVuY3kgKERTQiBleGVjdXRpb24gc3BlZWQg
ZGVwZW5kcyBvbiBDRENMSykgd2UgY2FuIGV4Y2VlZCB0aGF0Lg0KPiANCj4gQXMgd2UgYXJlIGN1
cnJlbnRseSB1c2luZyBub24tcG9zdGVkIHdyaXRlcyBmb3IgdGhlIGxlZ2FjeSBMVVQgdXBkYXRl
cywgaW4gd2hpY2gNCj4gY2FzZSB3ZSBjYW4gaGl0IHRoZSBmYXIgbW9yZSBzZXZlcmUgZmFpbHVy
ZSBtb2RlLiBUaGUgcHJvYmxlbSBpcyBleGFjZXJiYXRlZCBieQ0KPiB0aGUgZmFjdCB0aGF0IG5v
bi1wb3N0ZWQgd3JpdGVzIGFyZSBtdWNoIHNsb3dlciB0aGFuIHBvc3RlZCB3cml0ZXMgKH40eCBp
dA0KPiBzZWVtcykuDQo+IA0KPiBUbyBtaXRpdGFnZSB0aGUgcHJvYmxlbSBsZXQncyBzd2l0Y2gg
dG8gdXNpbmcgcG9zdGVkIERTQiB3cml0ZXMgZm9yIGxlZ2FjeSBMVVQNCj4gdXBkYXRlcyAod2hp
Y2ggd2lsbCBpbnZvbHZlIHVzaW5nIHRoZSBkb3VibGUgd3JpdGUgYXBwcm9hY2ggdG8gYXZvaWQg
b3RoZXINCj4gcHJvYmxlbXMgd2l0aCBEU0IgdnMuIGxlZ2FjeSBMVVQgd3JpdGVzKS4gRGVzcGl0
ZSB3cml0aW5nIGVhY2ggcmVnaXN0ZXIgdHdpY2UgdGhpcw0KPiB3aWxsIGluIGZhY3QgbWFrZSB0
aGUgbGVnYWN5IExVVCB1cGRhdGUgZmFzdGVyIHdoZW4gY29tcGFyZWQgdG8gdGhlIG5vbi1wb3N0
ZWQNCj4gd3JpdGUgYXBwcm9hY2gsIG1ha2luZyB0aGUgcHJvYmxlbSBsZXNzIGxpa2VseSB0byBh
cHBlYXIuIFRoZSBmYWlsdXJlIG1vZGUgaXMgYWxzbw0KPiBsZXNzIHNldmVyZS4NCj4gDQo+IFRo
aXMgaXNuJ3QgdGhlIDEwMCUgc29sdXRpb24gd2UgbmVlZCB0aG91Z2guIFRoYXQgd2lsbCBpbnZv
bHZlIGVzdGltYXRpbmcgaG93DQo+IGxvbmcgdGhlIExVVCB1cGRhdGUgd2lsbCB0YWtlLCBhbmQg
cHVzaGluZyBmcmFtZSBzdGFydCBhbmQvb3IgZGVsYXllZCB2YmxhbmsNCj4gZm9yd2FyZCB0byBn
dWFyYW50ZWUgdGhhdCB0aGUgdXBkYXRlIHdpbGwgaGF2ZSBmaW5pc2hlZCBieSB0aGUgdGltZSB0
aGUgcGlwZQ0KPiBwcmVmaWxsIHN0YXJ0cy4uLg0KDQpZZWFoIHRvIGF2b2lkIGlzc3VlcyB3aXRo
IGFudGktY29sbGlzaW9uLCB0aGlzIHdvdWxkIGJlIHRoZSBpZGVhbCBjYXNlLiBXaWxsIHRyeSB0
byBnZXQNCmhhcmR3YXJlIHRlYW1zIHZpZXcgYW5kIHRha2Ugb24gdGhlIGZpbmRpbmdzIGFzIHdl
bGwuDQoNCkhvd2V2ZXIsIGZvciBub3cgdGhlIGFwcHJvYWNoIGFuZCBjaGFuZ2VzIGxvb2sgZ29v
ZCB0byBtZS4NClJldmlld2VkLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29t
Pg0KDQo+IENjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnDQo+IEZpeGVzOiAzNGQ4MzExZjRhMWMg
KCJkcm0vaTkxNS9kc2I6IFJlLWluc3RhdGUgRFNCIGZvciBMVVQgdXBkYXRlcyIpDQo+IEZpeGVz
OiAyNWVhMzQxMWJkMjMgKCJkcm0vaTkxNS9kc2I6IFVzZSBub24tcG9zdGVkIHJlZ2lzdGVyIHdy
aXRlcyBmb3IgbGVnYWN5DQo+IExVVCIpDQo+IENsb3NlczogaHR0cHM6Ly9naXRsYWIuZnJlZWRl
c2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tL2lzc3Vlcy8xMjQ5NA0KPiBTaWduZWQtb2ZmLWJ5
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0N
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYyB8IDMwICsrKysr
KysrKysrKysrLS0tLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAyMCBpbnNlcnRpb25zKCspLCAx
MCBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2NvbG9yLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2NvbG9yLmMNCj4gaW5kZXggNmVhM2Q1YzU4Y2IxLi43Y2Q5MDJiYmQyNDQgMTAwNjQ0DQo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYw0KPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMNCj4gQEAgLTEzNjgs
MTkgKzEzNjgsMjkgQEAgc3RhdGljIHZvaWQgaWxrX2xvYWRfbHV0XzgoY29uc3Qgc3RydWN0DQo+
IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+ICAJbHV0ID0gYmxvYi0+ZGF0YTsNCj4g
DQo+ICAJLyoNCj4gLQkgKiBEU0IgZmFpbHMgdG8gY29ycmVjdGx5IGxvYWQgdGhlIGxlZ2FjeSBM
VVQNCj4gLQkgKiB1bmxlc3Mgd2UgZWl0aGVyIHdyaXRlIGVhY2ggZW50cnkgdHdpY2UsDQo+IC0J
ICogb3IgdXNlIG5vbi1wb3N0ZWQgd3JpdGVzDQo+ICsJICogRFNCIGZhaWxzIHRvIGNvcnJlY3Rs
eSBsb2FkIHRoZSBsZWdhY3kgTFVUIHVubGVzcw0KPiArCSAqIHdlIGVpdGhlciB3cml0ZSBlYWNo
IGVudHJ5IHR3aWNlIHdoZW4gdXNpbmcgcG9zdGVkDQo+ICsJICogd3JpdGVzLCBvciB3ZSB1c2Ug
bm9uLXBvc3RlZCB3cml0ZXMuDQo+ICsJICoNCj4gKwkgKiBJZiBwYWxldHRlIGFudGktY29sbGlz
aW9uIGlzIGFjdGl2ZSBkdXJpbmcgTFVUDQo+ICsJICogcmVnaXN0ZXIgd3JpdGVzOg0KPiArCSAq
IC0gcG9zdGVkIHdyaXRlcyBzaW1wbHkgZ2V0IGRyb3BwZWQgYW5kIHRodXMgdGhlIExVVA0KPiAr
CSAqICAgY29udGVudHMgbWF5IG5vdCBiZSBjb3JyZWN0bHkgdXBkYXRlZA0KPiArCSAqIC0gbm9u
LXBvc3RlZCB3cml0ZXMgYXJlIGJsb2NrZWQgYW5kIHRodXMgdGhlIExVVA0KPiArCSAqICAgY29u
dGVudHMgYXJlIGFsd2F5cyBjb3JyZWN0LCBidXQgc2ltdWx0YW5lb3VzIENQVQ0KPiArCSAqICAg
TU1JTyBhY2Nlc3Mgd2lsbCBzdGFydCB0byBmYWlsDQo+ICsJICoNCj4gKwkgKiBDaG9vc2UgdGhl
IGxlc3NlciBvZiB0d28gZXZpbHMgYW5kIHVzZSBwb3N0ZWQgd3JpdGVzLg0KPiArCSAqIFVzaW5n
IHBvc3RlZCB3cml0ZXMgaXMgYWxzbyBmYXN0ZXIsIGV2ZW4gd2hlbiBoYXZpbmcNCj4gKwkgKiB0
byB3cml0ZSBlYWNoIHJlZ2lzdGVyIHR3aWNlLg0KPiAgCSAqLw0KPiAtCWlmIChjcnRjX3N0YXRl
LT5kc2JfY29sb3JfdmJsYW5rKQ0KPiAtCQlpbnRlbF9kc2Jfbm9ucG9zdF9zdGFydChjcnRjX3N0
YXRlLT5kc2JfY29sb3JfdmJsYW5rKTsNCj4gLQ0KPiAtCWZvciAoaSA9IDA7IGkgPCAyNTY7IGkr
KykNCj4gKwlmb3IgKGkgPSAwOyBpIDwgMjU2OyBpKyspIHsNCj4gIAkJaWxrX2x1dF93cml0ZShj
cnRjX3N0YXRlLCBMR0NfUEFMRVRURShwaXBlLCBpKSwNCj4gIAkJCSAgICAgIGk5eHhfbHV0Xzgo
Jmx1dFtpXSkpOw0KPiAtDQo+IC0JaWYgKGNydGNfc3RhdGUtPmRzYl9jb2xvcl92YmxhbmspDQo+
IC0JCWludGVsX2RzYl9ub25wb3N0X2VuZChjcnRjX3N0YXRlLT5kc2JfY29sb3JfdmJsYW5rKTsN
Cj4gKwkJaWYgKGNydGNfc3RhdGUtPmRzYl9jb2xvcl92YmxhbmspDQo+ICsJCQlpbGtfbHV0X3dy
aXRlKGNydGNfc3RhdGUsIExHQ19QQUxFVFRFKHBpcGUsIGkpLA0KPiArCQkJCSAgICAgIGk5eHhf
bHV0XzgoJmx1dFtpXSkpOw0KPiArCX0NCj4gIH0NCj4gDQo+ICBzdGF0aWMgdm9pZCBpbGtfbG9h
ZF9sdXRfMTAoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+IC0t
DQo+IDIuNDUuMg0KDQo=
