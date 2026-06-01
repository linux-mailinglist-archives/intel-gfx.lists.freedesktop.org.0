Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EGJ0Lbn4HGplUgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 05:12:57 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DC586191CE
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 05:12:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30B5D112D35;
	Mon,  1 Jun 2026 03:12:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I6BBaLbC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 503CB112D35;
 Mon,  1 Jun 2026 03:12:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780283574; x=1811819574;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3jMGY1shPSweLn5Sh7ywHmGj8eliii7XtcDLDiNJ+X0=;
 b=I6BBaLbC1+2eDljGe9f5x7kZu5cPy9vbzfMWSlUh/dT1LMWoE+2xpies
 H20qVLW/gJVTiIC7pHCYdxTmRpFx7RkWrBiPuNoBodQxmR0AC1nCrDcyx
 KVcc7A3ItuD9E/TSYPZgbuRIic/9BTKlrZO6aXzvgEi1T7Lu1whlwjox4
 4VugBM+6Pcs/8MPHFjrojKRoIIOTvnjffJAslVJ5gHQcFOjQnbWXyDnyM
 yIg/Vff4dFNU3jSO3vHv0wO3uVKOM3TDt3IHkfFi4UObnZZclnBGiXaK4
 COg/3lgW3KCmGNsO4qP7qT5HjNNkEPF1bfMjRn/vFU9uGsptUOBxPWk3N A==;
X-CSE-ConnectionGUID: WmsMnacmTSasYJx9evb5hQ==
X-CSE-MsgGUID: ZABVdXvsTFuwUGKaS7azBA==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="91719002"
X-IronPort-AV: E=Sophos;i="6.24,180,1774335600"; d="scan'208";a="91719002"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2026 20:12:54 -0700
X-CSE-ConnectionGUID: qmU3X7QNTKq7BQ2WeckW+Q==
X-CSE-MsgGUID: dfwAyovvSOyRsHcNeRaIuA==
X-ExtLoop1: 1
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2026 20:12:54 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 31 May 2026 20:12:53 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 31 May 2026 20:12:53 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.5) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 31 May 2026 20:12:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BPShrf4gYowvlu2X3PETnDQg6ow2+BmaIrTAr1ETV/g/u2AymFtQ7n3AR7XndMVsX56GQlzGxahjcRJp3XJGiYZGMfhaKEmsghEw6+LGZLxkpbzMjQL1zyF7ApsL//f1DjHq5qpAccnnNob5rzrwn3hca4HvdK7tRLLn48fmgdYScmB6cee1qPsEOVSp3FuFHq07PiDWVEJ3amtFc+11SMUFW/rLxNFIYGPVbzLNln5wQSEhLsn9miG8iq+YoiaJy7hWw6ACNnLMI5ULOivbW8qFKUaFuJE56DNVMLMzHH9t5y2gziYu2Bt9cwvS8r6fSMh3nDyM4A7cJRw2Kla60Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3jMGY1shPSweLn5Sh7ywHmGj8eliii7XtcDLDiNJ+X0=;
 b=v5Nj8JIQKHG73uZFwgLP+iZZoj3UlUzP0rzdFJBpCDceSnqMe8qRPoqKNFGE/nffWiSuK+FAtGSzzKi85LBJWAD2yNq9z0hmF5OhqFZwSICCNnFJQSyTmJAkpPA2HxtUb9JQiSm5clB140f7JGzpGGWT2mYUGvjRVs9QaPOPm6zqNHzBxJIvR5PVkryGZeqA3Doxpufh6RjEV65MwfFTeJT1UHzM+cIjkd+0IQdZEQq6FC3c391pPun+n/v1O7bnP5tOEq9RoMq4AkQOQZo6QDhJ6dUYv0kfN72yO8xRr5o44zO1xaTwUgtHzzdIAR/hgFgx7hxsVb3G9GChmP96hA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by PH9PR11MB924967.namprd11.prod.outlook.com
 (2603:10b6:510:3e8::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.14; Mon, 1 Jun 2026
 03:12:49 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::8015:f6df:e093:52bd]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::8015:f6df:e093:52bd%8]) with mapi id 15.21.0071.015; Mon, 1 Jun 2026
 03:12:49 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Grzelak, Michal" <michal.grzelak@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v4 06/10] drm/i915/buf_trans: abstract VS/PE-O access and
 index computation
Thread-Topic: [PATCH v4 06/10] drm/i915/buf_trans: abstract VS/PE-O access and
 index computation
Thread-Index: AQHc76F6Rf6mgfL5LUKdjWjL+yfLeLYpCMmQ
Date: Mon, 1 Jun 2026 03:12:49 +0000
Message-ID: <DM3PPF208195D8D087EB21BFEED67636E7FE3152@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260529192859.4172376-1-michal.grzelak@intel.com>
 <20260529192859.4172376-7-michal.grzelak@intel.com>
In-Reply-To: <20260529192859.4172376-7-michal.grzelak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|PH9PR11MB924967:EE_
x-ms-office365-filtering-correlation-id: 3c582dce-7c3b-49b7-2750-08debf8ba947
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|11063799006|4143699003|56012099006|22082099003|18002099003|38070700021;
x-microsoft-antispam-message-info: hx8fRE0VT3C6ezP1Omc0WfAY7kyAT26V5KJCZYu9bDVEE/L/WjVuOVHzlRjhC4qpeSt8LVeySa2T4vRZjY/FtUio15U374pDzJMXS4fyQBGrJl8EQpOc5wUQPnlfaHCXoGYqLWjyv/bIQz0HwavbRPWbJl8bhcT4Ezk7Ch43m/j67XWMHZsZ7k1NweGAHd2vgIfs5zYNSE6Ug+YKVg6W1vPRJXsnrKnJ+2py2ElGp/7kqvO5VqBMKkpUYX5Gx1H4/DDVPmylj39HBGcnOa4icSw0ds3YJ1FdVMJEVRyCKcvlDOToT0wS0bXtDLGgB+T9SovmkckP7nFN/ebaBThsrtg4OJ8X7/5OcYMA0mgkycRVFxCZinqYK0EC8+Bt7A5EUL9nMRKxQwjiZUmfRFdmrfi1V1g9qzC1CBEArW8RCFMnQbVAco1uGExYXIMdrYASmOewK7M6JajskNPPTq878yV7kqvz7oSWffVw2Bkr9zbxtYJH4IlwlCSv1DI/iW2ZiL3tDedSktwL31pGTn6zzNVe+Qf1oxupFey+BKBqbxWzJiEiBc9pcuZegxD1TicgJ6RaTdYEm3VCfaHeChodn1WGqre9z9z2NplktwyQxF6J6nDRhBAqkXY5/2aItFHhvlLUp48u3vmDkKKvkx2WCs5olokY8hHSplV1t0fJ/qn2xAQCz/C0JFt0AKpiJfDJxwNtFNDJ87RRovZtdamlph0Eo9PQ348C6beser0sbdPYqZsbeD/4SttPwS3wBeF4
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(11063799006)(4143699003)(56012099006)(22082099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TmtXTlJYdmlFWE5wODNja1pXeklOTUZNR1JnMlNrcVQ5Q05IdHB2YlFEenho?=
 =?utf-8?B?SkNHcEpoaEFjYUVlNDhkNnJKRXJIbHlLemoxSlZZY1c2RVVpZ09WMUpvSmFV?=
 =?utf-8?B?VnN1ZTcwZTdLOEVvemtpSUpoRi9DQ2ZCejJTVXRFRURkcDhvU2tvWFdKWFNY?=
 =?utf-8?B?b3Y5TjZnY3hya2Y3THNiYmdDMzdyc3NSTkUvZjJZZC9STmt5alozNUgrV2xJ?=
 =?utf-8?B?R01BL3dPbnpvaDFOSFp5elhQa0tzREZtRG54ODNkYUl1NjhkS1FUUDV6VFFP?=
 =?utf-8?B?SkwyV3pJN2poOTFNdE1MLzRYNmdkbkc3Ukp4ZHY0aTRmNUo4NFpYNGpOaUJU?=
 =?utf-8?B?SzB2ZE9UclJGRVlIbjgvZ3dzMExkNHo5NkJ6VnVBTFFMeVpEY2NvTE15SEwx?=
 =?utf-8?B?QWlGV0c5YzErUkZsUVNHazBuQTUvTktGd1NzMTNNV0tLQXMyKzRIMU5JdSsw?=
 =?utf-8?B?SHRXdm05THJycjFKWVdlOU9qUUEvWk9JR1EyRUoxem1wVjdLdWhZOHdia3hT?=
 =?utf-8?B?bzNsVGtXejlScFFMYW5kbng0L1BDN3puMjBUWmRyVTNJVGdsUE5iYVRGcUpp?=
 =?utf-8?B?K1kzT3lQZmR4YnBIbWNMZGcwWGpyeDRCZ1lscCtnTXpGUHVpbGlTY1MzQXNB?=
 =?utf-8?B?UlFFSTYwb29MWU9Sa1RRV25lS3hvS2tjS3NhWGkvakFiRmJUL053Z0JNcDQx?=
 =?utf-8?B?WmhoUS9OR0pjNHJ4OXBiOVl1Y2I0cEIweUxWWmJWUk1ETUd4bDRDOTZaKzVC?=
 =?utf-8?B?TzhwdHUrbVlvMmZ2WExHWUpLcmJHKzBBb05ieGMrOEFzZ2V5bWJYOCtMVDBo?=
 =?utf-8?B?TlpOWC9aNUdwTlhyc0E5UnhnbitwYWlJZXcyT0NERXEyY3FqZ3BTdGQ5aDFY?=
 =?utf-8?B?SHVuQjBLS3VGUVk3cUNQMCt6UHUyOUdpM2ZGaENWZUorZ3RpOEMvZTVmY2VT?=
 =?utf-8?B?UzJQbElTWWJ1NStUWVlDRzE3U2ZjM09iVU1UMThpRnNiemEzVW1XeVhIQXRG?=
 =?utf-8?B?MWNmenJQRjhZSDlIYkc3K3EvSWw3bW9pdzZXYzQwVkVZdXhyM3AreVpwbElo?=
 =?utf-8?B?RkRSMTd0eXo2a0hrOFErRnR2Ly9YQmd4OEoxZEZRcWs1MGVWSzRHaFVEWVNW?=
 =?utf-8?B?UE1wMEZMdWFCaE1NRzJBZ3EyWTBSdlE5T0paUEhLQWlUUGk5WllQN0gyZEhY?=
 =?utf-8?B?WjdzZ0pGNm5TL25SQ0UrUXl1WFNxTTFmRmo4MTBRTzdBV3ZMYnNKRXQ1ZjA3?=
 =?utf-8?B?cEFsKzduclBNUVB5U3VXd0xGTGpyZ2I1TkhjMHBDbjlQRXF0eC9YUGdkaFUx?=
 =?utf-8?B?U2xTcVZLSkZ2b1ZJMUd2V2VkTEQzcjJiVlMxYUZtT2hUdFNuYzdodXRha3hj?=
 =?utf-8?B?cTRCZDgyVGorQWI3TExRM2ExcllIVnBZcklNaGViUEUrSUVSclJpSVY3Sncv?=
 =?utf-8?B?VFZtakF5ZVpyVzgremFnbWZCNzBhM25YSFlZb2p2elpOUG52ZUI1OTVUc0dY?=
 =?utf-8?B?My9KdEZIeXc0eFhqbjRROFBJcm5IakcvWE0yWmVCMnpjMFZXVi9leGlEdDFH?=
 =?utf-8?B?OXdqVGlZYXRNN3B4STMzZ0xmS0Q5RDFDbnFod3BkL25zY05uQWhLTXBOY2xF?=
 =?utf-8?B?VTBYYUlCWGJuOU9NTHpCeVlpK21zY3FHbFg0Nm5SL25FaFlCd0YwYlcwUWRY?=
 =?utf-8?B?Sjk2YmM1QXhUYWxKb0hOU1F0Zko5TzY1SmYzVmxSUERZNjh5RCt6NGpsZ0Ry?=
 =?utf-8?B?N0g0dEMydWFadGQzcU1lbVA2eVVORm1wbU5OU3dIT2hSc0d2UkhjazVlOVdD?=
 =?utf-8?B?Nm5wd2F0bWNZQ3NxaDE1SFlQZVlmbEkyZ1A1UWt2NS82K0d5TTZ1MGRpcVNX?=
 =?utf-8?B?QXhGVDV6T3dBQTZHSm9lMkozUU94RXU0K3R5bWIrUWpaSjJRSGNSREFUQWM4?=
 =?utf-8?B?Y2QyNmZMamhZY1o4dER4WWtHaEtNRE1EZVY1aW9BT1dsd2RBREpCOXdVaTRC?=
 =?utf-8?B?anJaK3ZsTm8yMnV6Zy82NU9aa3hFZGtXeWl6Y2ttYTltN1ZSTVBYZC9QdEV6?=
 =?utf-8?B?dzVhWjRQZVBhZ24xWEpxbGxZcUJEbDdxZmNBMm01TnFFemx6MDFlaW11WGtx?=
 =?utf-8?B?VXhTUkk2NGlqZ3YzOVk5YjlmTjF1UlB3RzY1cjZDdnVLRTBvMFpVMFk0N0xK?=
 =?utf-8?B?VlhETVc1U3lycTh0UEI3Z3phSTIza0xRdHhmRFl3M1NrNVZCU3pXMHBWejlh?=
 =?utf-8?B?OFdvSFFTVjA4eEtoRmVHVDVOUXFsRHcxMGx5VWJwMUgvZldkNXMzQTM4d1c3?=
 =?utf-8?B?NmNTbjVJUXF0aVRFN1hkVStFOE9QdkxFNlk5RmhIVXJzeWV6WENRUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: HG/ZgEArYYMHXrrZc7ACZp4HI/eRAgL9Kr+9YPbdhQIM/7IsnDa3AwSIH0tVK+aBBkZbBLEJm1fGxy0SFDRjE3uVpBLRlJG8V7jtwfb7nFw0Ogw357LafgUMdzBbTZwK0N3i9KuUPhJCGn+JLQi2s1Zaol9LrwYu3zxTtANqTTOi089Ddu+H9aiPLRcYSTJxHDNrHHDWLEtSLIOQHHZcWJR6UNScdthvaC5wj3HaCAGgrWLIUf2ZE3lNKQC5Re2OXYJ856g41HQV78juGFwk8tSOEbg0NZnyM1WddgqIdUvR2chj/4JJ9SlJrUyNBmHFlrKorphNL0dG/Xb6Ik9bbA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c582dce-7c3b-49b7-2750-08debf8ba947
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jun 2026 03:12:49.4220 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: obtk6gY2BJW3HsYKwP4xlk2FkQPeu5i+ONepbjtwpuuqCMTT6cx61JKYMpCC0UF/TnY+oBOesmLaG9OpZM40fA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH9PR11MB924967
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
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 1DC586191CE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiBTdWJqZWN0OiBbUEFUQ0ggdjQgMDYvMTBdIGRybS9pOTE1L2J1Zl90cmFuczogYWJzdHJhY3Qg
VlMvUEUtTyBhY2Nlc3MgYW5kDQo+IGluZGV4IGNvbXB1dGF0aW9uDQo+IA0KPiBMYXkgaW50byBp
bnRlbF9kZGlfYnVmX3RyYW5zX2dldCgpIGluZnJhc3RydWN0dXJlIGZvciBWUy9QRS1PLg0KPiAN
Cj4gQWRkICgqZ2V0X3BoeV92c3Blb19pbmRleCkoKSBmdW5jdGlvbiBob29rIGludG8gc3RydWN0
IGludGVsX2VuY29kZXIuDQo+IFRoaXMgZnVuY3Rpb24gcG9pbnRlciBpcyByZXNwb25zaWJsZSBm
b3IgY29tcHV0aW5nIGluZGV4IG9mIHJlcXVlc3RlZCB0YWJsZQ0KPiBmcm9tIFZCVCAjNTcuDQo+
IA0KPiBBZGQgYWxzbyAoKmdldF9waHlfdnNwZW8pKCkgZnVuY3Rpb24gaG9vayBpbnRvIHN0cnVj
dCBpbnRlbF9lbmNvZGVyLg0KPiBUaGlzIGZ1bmN0aW9uIHBvaW50ZXIgd2lsbCBiZSB0aGUgYWNj
ZXNzb3Igd2hpY2ggcGFyc2VzIGFuZCBzZXRzIHBvcnQncyBidWZmZXINCj4gYmFzaW5nIG9uIFZC
VCAjNTcncyBkYXRhLg0KPiANCj4gTm90ZSB0aGF0IHRoZXNlIHR3byBwb2ludGVyIG5lZWQgdG8g
YmUgc2VwYXJhdGUgc2luY2UgdGhleSBhcmUgdGFraW5nIHBsYWNlDQo+IGR1cmluZyB0d28gZGlm
ZmVyZW50IGFic3RyYWN0aW9uIGxheWVyczogKCpnZXRfcGh5X3ZzcGVvX2luZGV4KCkpIG9wZXJh
dGVzIG9uDQo+IGNydGNfc3RhdGUsIHdoaWxlICgqZ2V0X3BoeV92c3BlbykoKSBjb25zdW1lcyBk
ZXZkYXRhLg0KPiANCj4gQWRkIGdlbmVyaWMgZnVuY3Rpb24gcG9pbnRlciBpbmRpY2F0aW5nIGxh
Y2sgb2YgVlMvUEUtTydzIHN1cHBvcnQuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBNaWNoYcWCIEdy
emVsYWsgPG1pY2hhbC5ncnplbGFrQGludGVsLmNvbT4NCj4gLS0tDQo+ICAuLi4vZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kZGlfYnVmX3RyYW5zLmMgICAgfCAzMCArKysrKysrKysrKysrKysrKyst
DQo+ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggICAgfCAgNSAr
KysrDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDM0IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkN
Cj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rk
aV9idWZfdHJhbnMuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRp
X2J1Zl90cmFucy5jDQo+IGluZGV4IDRjZDFlNGQ3NmM3YS4uZmJkNWVmYzVjYTZjIDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaV9idWZfdHJhbnMu
Yw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaV9idWZfdHJh
bnMuYw0KPiBAQCAtMTc4NCwxMCArMTc4NCwyMCBAQCB4ZTNwbHBkX2dldF9sdF9idWZfdHJhbnMo
c3RydWN0IGludGVsX2VuY29kZXINCj4gKmVuY29kZXIsDQo+ICAJCXJldHVybiBpbnRlbF9nZXRf
YnVmX3RyYW5zKCZ4ZTNwbHBkX2x0X3RyYW5zX2RwMTQsDQo+IG5fZW50cmllcyk7ICB9DQo+IA0K
PiArc3RhdGljIGludA0KPiArX2dldF9waHlfdnNwZW9faW5kZXgoc3RydWN0IGludGVsX2VuY29k
ZXIgKmVuY29kZXIsDQo+ICsJCSAgICAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNy
dGNfc3RhdGUpIHsNCj4gKwlyZXR1cm4gLUVPUE5PVFNVUFA7DQo+ICt9DQo+ICsNCj4gIHZvaWQg
aW50ZWxfZGRpX2J1Zl90cmFuc19pbml0KHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyKSAg
ew0KPiAgCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShl
bmNvZGVyKTsNCj4gDQo+ICsJZW5jb2Rlci0+Z2V0X3BoeV92c3Blb19pbmRleCA9IF9nZXRfcGh5
X3ZzcGVvX2luZGV4Ow0KPiArCWVuY29kZXItPmdldF9waHlfdnNwZW8gPSBOVUxMOw0KPiArDQo+
ICAJaWYgKEhBU19MVF9QSFkoZGlzcGxheSkpIHsNCj4gIAkJZW5jb2Rlci0+Z2V0X2J1Zl90cmFu
cyA9IHhlM3BscGRfZ2V0X2x0X2J1Zl90cmFuczsNCj4gIAl9IGVsc2UgaWYgKERJU1BMQVlfVkVS
KGRpc3BsYXkpID49IDE0KSB7IEBAIC0xODU3LDUgKzE4NjcsMjMgQEANCj4gY29uc3Qgc3RydWN0
IGludGVsX2RkaV9idWZfdHJhbnMgKmludGVsX2RkaV9idWZfdHJhbnNfZ2V0KHN0cnVjdA0KPiBp
bnRlbF9lbmNvZGVyICoNCj4gIAkJCQkJCQkgIGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9jcnRjX3N0
YXRlICpjcnRjX3N0YXRlLA0KPiAgCQkJCQkJCSAgaW50ICpuX2VudHJpZXMpDQo+ICB7DQo+IC0J
cmV0dXJuIGVuY29kZXItPmdldF9idWZfdHJhbnMoZW5jb2RlciwgY3J0Y19zdGF0ZSwgbl9lbnRy
aWVzKTsNCj4gKwlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3Bs
YXkoZW5jb2Rlcik7DQo+ICsJY29uc3Qgc3RydWN0IGludGVsX2RkaV9idWZfdHJhbnMgKmJ1Zl90
cmFuczsNCj4gKwlib29sIHZzcGVvOw0KPiArCWludCB0YWJsZTsNCj4gKw0KPiArCXZzcGVvID0g
aW50ZWxfYmlvc19lbmNvZGVyX3JlcXVlc3RzX3ZzcGVvKGVuY29kZXItPmRldmRhdGEpOw0KPiAr
CWlmICghdnNwZW8pDQo+ICsJCXJldHVybiBlbmNvZGVyLT5nZXRfYnVmX3RyYW5zKGVuY29kZXIs
IGNydGNfc3RhdGUsDQo+IG5fZW50cmllcyk7DQo+ICsNCj4gKwl0YWJsZSA9IGVuY29kZXItPmdl
dF9waHlfdnNwZW9faW5kZXgoZW5jb2RlciwgY3J0Y19zdGF0ZSk7DQo+ICsJaWYgKHRhYmxlIDwg
MCkgew0KPiArCQlkcm1fV0FSTl9PTkNFKGRpc3BsYXktPmRybSwgMSwNCj4gKwkJCSAgICAgICJw
bGF0Zm9ybSBkb2VzIG5vdCBzdXBwb3J0IFZTL1BFLU8sIHNldHRpbmcNCj4gZGVmYXVsdFxuIik7
DQo+ICsNCg0KV0FSTiBkb2VzIG5vdCBiZWxvbmcgaGVyZSBtYXliZSBhIGRybV9kYmdfa21zKCkg
c2F5aW5nICJWQlQgcmVxdWVzdHMgdnNwZW8gYnV0IGRvZXMgbm90IHByb3ZpZGUgaW5kZXggdGFi
bGUiDQpUaGUgcmVhc29uIGJlaW5nIHBhbmVsIHZlbmRvcnMgbWF5IGhhdmUgYnJva2VuIFZCVCBy
ZXF1ZXN0aW5nIGZvciBWUy9QRSBidXQgbm90IHByb3ZpZGluZyBhIHRhYmxlLg0KVGhpcyB3aWxs
IGp1c3QgY2F1c2UgQWxhcm1zIHRvIGdvIG9mZiBpbiBDSSwgd2hlcmUgeW91IHdpbGwgYmUgZGVi
dWdnaW5nIGJyb2tlbiBWQlRzIHdoaWNoIHdvbnQgYmUgZml4ZWQgc3BlY2lhbGx5IGZvciB0aGUg
b2xkZXINCkdlbmVyYXRpb25zLg0KDQpSZWdhcmRzLA0KU3VyYWogS2FuZHBhbA0KDQo+ICsJCXJl
dHVybiBlbmNvZGVyLT5nZXRfYnVmX3RyYW5zKGVuY29kZXIsIGNydGNfc3RhdGUsDQo+IG5fZW50
cmllcyk7DQo+ICsJfQ0KPiArDQo+ICsJYnVmX3RyYW5zID0gZW5jb2Rlci0+Z2V0X3BoeV92c3Bl
byhlbmNvZGVyLT5kZXZkYXRhLCB0YWJsZSk7DQo+ICsJcmV0dXJuIGludGVsX2dldF9idWZfdHJh
bnMoYnVmX3RyYW5zLCBuX2VudHJpZXMpOw0KPiAgfQ0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiBpbmRleCBjMjFlMGMw
ZWYwYjEuLjgyOWUxN2ZiZmIwYSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gQEAgLTI5Miw2ICsyOTIsMTEgQEAg
c3RydWN0IGludGVsX2VuY29kZXIgew0KPiAgCXZvaWQgKCpzZXRfc2lnbmFsX2xldmVscykoc3Ry
dWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ICAJCQkJICBjb25zdCBzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7DQo+IA0KPiArCWludCAoKmdldF9waHlfdnNwZW9faW5k
ZXgpKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiArCQkJCSAgIGNvbnN0IHN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsNCj4gKwljb25zdCBzdHJ1Y3QgaW50ZWxf
ZGRpX2J1Zl90cmFucyAqKCpnZXRfcGh5X3ZzcGVvKShjb25zdCBzdHJ1Y3QNCj4gaW50ZWxfYmlv
c19lbmNvZGVyX2RhdGEgKmRldmRhdGEsDQo+ICsJCQkJCQkJICAgaW50IGlkeCk7DQo+ICsNCj4g
IAllbnVtIGhwZF9waW4gaHBkX3BpbjsNCj4gIAllbnVtIGludGVsX2Rpc3BsYXlfcG93ZXJfZG9t
YWluIHBvd2VyX2RvbWFpbjsNCj4gDQo+IC0tDQo+IDIuNDUuMg0KDQo=
