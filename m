Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yHfxCitsDWrgxAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 20 May 2026 10:09:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94FC75896D7
	for <lists+intel-gfx@lfdr.de>; Wed, 20 May 2026 10:09:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94F2710EF69;
	Wed, 20 May 2026 08:09:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PHNrab58";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADEE010EF6C;
 Wed, 20 May 2026 08:09:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779264552; x=1810800552;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bTS+V4BNZGlErGqLy7GMHQwPtRgRQWtPI2y2uhYsJuY=;
 b=PHNrab58D32PfR5TOu1VKx+heazScD3BduFxGduckrOIMiYClVU/Tlip
 vL6oBsrPn0HazvyJMKnFjINHt1IkbhfWiwS9L7AvbeIbgmUNJ1Fpkrjtz
 KCzLanVPGStjQuFa8zMgFTDAkXLM7SfDSrdf/75+9RJ4QwD/BgXywq6St
 pZW7/KLsByfnzMFHoPm/shz5+1l5ylHW+IyZJE6uFrgVCUVpvkWNUq5gH
 nxJot6r0BjBGjovTSA7B59KwOMyXbX+FEFxIP4Dl1hjuhx49zrJmWQeC1
 E5qfZi5ZRR0ofbSDch4K+UHE5sNJlqPY87a9eQovWkXVwDRhnGXmixYIy A==;
X-CSE-ConnectionGUID: 3ceiuPgzRLKz4LuP+WREtA==
X-CSE-MsgGUID: jrffG3psROq9PW6siYpISg==
X-IronPort-AV: E=McAfee;i="6800,10657,11791"; a="80005461"
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="80005461"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2026 01:09:11 -0700
X-CSE-ConnectionGUID: iqaOyWJ8RuCWtT5a/4V2Zw==
X-CSE-MsgGUID: 2jw7WIxcQhunO6OlYl2njQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="239077654"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2026 01:09:08 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 20 May 2026 01:09:07 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 20 May 2026 01:09:07 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.4) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 20 May 2026 01:09:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hQOpth8OV48x8zM3MgSM0KIodGuHkJQ2rnT7n9k1ss/ZhOJAgYTj7fAaCVv/scI9wnMIG8om6DEsEuvievF6eqoVVKdkbQNCYba9w4Wz8liVqKKKSvLiNZJDV8kiP5v1squUXj2xSwoU5e/8ZDW6Rxmhp7Q3rWSCSQoSZq6lZS2UtjmHdzYsVNjXvD9js6HaJBWA52T7lGU8yqRx6ju0YZenlnwX6SEtOiHNP1PZQweTua1VWPYyRwGilqQww4fokpAKKaTX2w+3tJYG92IZk1NIW4opiPNDhV19ZUIQFlSrsf9aZEG7LXvqG7cEjijOnmCns+54CjZ/JgVcAg7IEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rV1c8LIkErojX8ICy/PlhJJxagKtb6xBeFiIjWCIAjo=;
 b=CohaJqoO0zh6ys8NQ7U8UNnvs4DtJVeV+naKk9mJ5UTWpaex9ooRbOy/7DL1vo7GgT24Tm7Q5t9/QRNFF65ORkbIkqoN9nELF/iwJnHdgiI2VgnHpVQ3ZlG/n9CB9/GWTR2cuCMH7D+sf77W+gMvDB7b1A1oczM9oxZXfNbaOjSCRKcP7ViJ9cN3Y8xmJq6TGNTUafzpA+jsQ/4ITNjyyahCc/qSuNq/aQHW3S4lHsJWckxr1j6eK4cvGYBVnVnhYvcdHQffDL+qyH1rg030nxQbhiv666AjRxOkk/XQTruWTWeh+ABzpsaTV4xOetNTBhgmFvQMJaCSpz2hJDtj/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM4PR11MB6477.namprd11.prod.outlook.com (2603:10b6:8:88::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.14; Wed, 20 May
 2026 08:09:04 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.21.0025.020; Wed, 20 May 2026
 08:09:01 +0000
Message-ID: <5ddd368a-6efc-40b6-a411-1dacfb797e2f@intel.com>
Date: Wed, 20 May 2026 13:38:54 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] Revert "drm/i915/backlight: Remove try_vesa_interface"
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <arun.r.murthy@intel.com>
References: <20260515155340.1000997-1-suraj.kandpal@intel.com>
 <20260517024709.1016121-1-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260517024709.1016121-1-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0280.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1f2::18) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM4PR11MB6477:EE_
X-MS-Office365-Filtering-Correlation-Id: eb55309e-aa0e-486d-3844-08deb6470ccc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|4143699003|22082099003|18002099003|56012099003|3023799007|11063799006;
X-Microsoft-Antispam-Message-Info: NiQYg6qAedO00H1pLwk7Q/agSYONIdFhNMz+W3f76POYhdXDiCwcEKmDbjONmnb2eZHqxtWTHYpOUmy+F3X8MqqtpYN1+doUoDvQdd1xjaso6yiDWjW08MVj/MyyyZkwt23fwaLNJWjhckBT8Z1InoXlUUJAyoIVVVkpg1Py0sJBK7SeeMpzgZNzw3JZhAFHEsBx7fViscm4QorrXKnO6PmBuneeevNXBdco67Cr4gWc+p9+OAujW3YnrZZNaju58oUyfgj8sHIaectmhWsrcdXRm8ckrHqgalVxKPAddMP9lQN3uoLMDk8KzXIGpmxeh1tNlLFTokI92EC7c+IvjS78u1hy/Deqfj/CdJ5BXMgifPiudeNhPeXiBVR7nJlvrVXW2XyZAcVV3TRuVxv7F+nraer/xRyNaC9zak6ETnlidR0ZjeK2Flixs/1AyOny50FwA1r9pn1EJhK1KMqXNPxtkzuzvXg23JiR4f1swBrMCZSZqf8smw9mu7XuSopOQzNM9WGzCpF7GUkqYtwRyrmr+8S6WEpWx5xgpSGia1qK3cja8TERtepwEk8qhslxUKLnigJjRQTVEEEhT5ZOEdpKe2KwgodtZpIwhvez5IDovuLOmcL8YiDZvMj91PJ3DNDcyhAFjPS1zgDKYi7S9g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(4143699003)(22082099003)(18002099003)(56012099003)(3023799007)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z1ZWdDFoNmdYZWxNVG5ld2dTOGN1eGRCRlNPRWh3Ri9YR2RTZFBRSWxwSzNs?=
 =?utf-8?B?QjYzZlluNUtNaDNuQ2xuUW1mdDFEekVwekd0Y1dLUVVhTU5Zd0x0bW1SMTFx?=
 =?utf-8?B?QW9xQ2xLdlRSVlNra05QdWFuMldLSjJaamNWMU1lVjFlNHQya0IwTW1yRkFY?=
 =?utf-8?B?ZGdGaTVYdG9WSnNBMzZCSm5yamlDcXNKVjJaNU5Rc1ZQNEVlQWp2Sng5Q1hG?=
 =?utf-8?B?LzdldUQwMGhBSldvOUFwMTF3d2EvVVkvVEllaXU3aC8ydndOVWQyKzd6Mi9L?=
 =?utf-8?B?aGh1NDY3SFpyUUlNL2FqUStpMUdQbGNqYzNmcmtMN3h0WEpqcERUa2tVN3FL?=
 =?utf-8?B?enlxQ0p2b1dqRU12SHh2ZnNSWnQvaVNhaURjRjRHd1Q3S2hmdCttL3ljRjZy?=
 =?utf-8?B?U2ZpeENNZ244SVJrZHFWWDZrMG1rV256VmxaeFE1MThmbEdaZlFseElCNWpz?=
 =?utf-8?B?dmtwQzdhTk1qRTlTNmZNd3RoT25ZUnNZWjIxK3NPZ0RNcnM5TVJsYlVZd0Zh?=
 =?utf-8?B?MkU0YWUvNzU5ZGgva0gwajA1OXVUUEpRMGNlbmdldDZVeHJvbDZqSDNpTFpI?=
 =?utf-8?B?K2Yram1GTTFuN2FPVGVqeVZvM0RUcjJsck1IYlBhTjN0YXY2U0ZiY1pLTHU1?=
 =?utf-8?B?RGZ3c0FtY041OEtnT2JVenIzVEtLYnlKam9hRjB5MmpuVXA4S2RjWWdTYitV?=
 =?utf-8?B?SnkvZ21PZUhHY21FU05VVmVLaytFalE2cWlPS3pnUXlZNXF4N205Y2xEdXN6?=
 =?utf-8?B?ZzNNeXk0bTNMQm1qalU3K2txeFpnNi90eS93M20zY2NZVS9OeGYxMUlkbCto?=
 =?utf-8?B?Mlk3dDdJeVB1N3FlMzZaQUNBSFJqbGpzMUY1aVZUU2lNbXBiTXNGWDZxZmZq?=
 =?utf-8?B?dThtSW03eHBZdmd0OG1HZ2hjTGNITmZ1OXpnOVhXK1RnclMrV3Zjc0JzT3BW?=
 =?utf-8?B?NFBJbjQ4RHJJQnczVUlHbjlSS3piMGpHYXRuRFYwTjVJWm9zNUFwQzRKT2or?=
 =?utf-8?B?UHQ3aUJXMW9Ec0NCWjlKb09BQXN4ejFtWnhkS1FmQnZXZnk1NU1RSmQ3amZp?=
 =?utf-8?B?Qy9MM3pPWDVkNkZXWTI3LzZDQk43R3hxMnpLNEplK1hURE40aVpMWDZZUDNv?=
 =?utf-8?B?a0FGdE9sK09YQTMvMXBqYzYrYzR0WE5kcUNoWnN3NWZ5dmdMQm9mSkhiMUFm?=
 =?utf-8?B?ZjBTWUNqdnZSclJqczI0c3l6L3FRLytlMFNuMU9kdjh2SzZpV1g0QkU0c0Vu?=
 =?utf-8?B?OC9aRHJUc2hFMzEzMHRJUVF6OWY4UWtBSzBXWVJQemhuUGZsc3dtR3p0Rk84?=
 =?utf-8?B?NEJtOC9jQXRpaFRLdDhUMzIrYy92YkRuRGNQeGIyV3FLVlZXaytDVkl2MThi?=
 =?utf-8?B?UWFqRUhKeE9aZ003Y2dJOE03UzhmajRjRDlvRGtRZGhHNWJYdER0MUVpUEd4?=
 =?utf-8?B?TXpDUDk1Tk9SaUdXNXZQK1NmSC91cmlWYWxZdXE0eVF5clpOVUZteTJUNzJG?=
 =?utf-8?B?K0FXajN2czNRZlRSeVZnVUtqdDVGQUdTRUhWdXIyZ1JBN2JFbG1oeUlDeUYw?=
 =?utf-8?B?SXFJUER0Y21DYXRWUkRxREVXZm9ZamUrMGsyR0E4NWw3WmlXb24xOU5hbFlm?=
 =?utf-8?B?MGRFZit1d29Odk83SzFyMnRCSjVyOWozdmUwT0hwN28raDhCL0l2c1NPMHh6?=
 =?utf-8?B?NDlvZWdmUlppUVB1T2dFSmhmN2RVeVNSakllTWJNdTYraG9Pbkl3YnZoMGJK?=
 =?utf-8?B?bjJUcytWUkV4ZTNOV0dOTmNDcEVEMEMxTjBjL1hhcmRESGdUYzZYSENYdnox?=
 =?utf-8?B?VDQxSWlXL0JNa1h4NmZydXlmaE9QOXFrYWdMR3oyU3gxcDFFMDhOK291QTgw?=
 =?utf-8?B?UE94VjY2US9BeVRIVFNXbXlsblczRXVCZEYyMEpyMzg4Rk93aVVDMVN1ZHEz?=
 =?utf-8?B?dUJrL1lsdzRGLzRBc3NFcXc0M0NYZHgxellKTlR3QmFwbkJ5MmxxRmtxM2N0?=
 =?utf-8?B?RVhwdnc3NDRnY2tYcXVLbi9WZzhOYXIweVVjb0kwQThITzk1bFlpQ0xvTmtW?=
 =?utf-8?B?c1UwOU8xZ0tRRTZEU2paSlRyNWhuK3RSZ3h0QTNERXF0VW9lQkZjUlZUU3BU?=
 =?utf-8?B?ZFd1bFJXUGN6dWIrb0llMXFlalNXcUc2MHRPL2xxeTdFaVVVaVpyc1U0bVpz?=
 =?utf-8?B?eTd1MWxYZ1B2MkNObUJ0cHZzL3A0ZEdieXo1QzhEeEVORkdhMlhpNGJnc3pr?=
 =?utf-8?B?cEZWdzVrTW05QklsRFdGN3V5SXhGbVJET09GeTFlaVZiOXdnenNDbG03Tisv?=
 =?utf-8?B?ZmQ0cnNXd1g0ZWQrcDBXeXREK2xKUXhzV2pZbVh2ajlvK2gyMGo0U1I2anJz?=
 =?utf-8?Q?E21G/V2i8OeH02l0=3D?=
X-Exchange-RoutingPolicyChecked: swyek2NwAsvR2bdvofjcrdV6Ns97I5VvPMNMveFr+HMOIP/gES+j+4UJGe9XmCAwtUysqu0QEATvXZgEIHthv2u7xgX9XZn/cEM2qLbG21av9AfAppbjd9jRVL9V05ia5ZMvoRUfHCvhO5JY/4DQ352P0XdUj5RkjAX7gUzEeShLX3FQYyNhpvOzUmVezthU9z3LIEMgprSlKPhBEGUH9aONZ6SQQrrpaUVYSaYl4V6R8s6LiE2+kE1ZwzS3LNAcYfdrfJkQ1dvy5h+7F7WCsqkVcrcP5rPIKb1Ae0AxnMi7mW0jdCTVR7Twq/Pc59Ti6SgrPkAT7ZlgQ/cfXSMCZg==
X-MS-Exchange-CrossTenant-Network-Message-Id: eb55309e-aa0e-486d-3844-08deb6470ccc
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 May 2026 08:09:01.1532 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iMPIMqIcgW1RBdW0+03ARFDzysOGkhOtJ6h8JIZ8l2zS4kVVRtr3BuHO7xhjMvIQyU0YXNBZn+0kZOXJQYAtJiE4Ffzncu1H8Kn3YOk++EI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6477
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim,gitlab.freedesktop.org:url];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 94FC75896D7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 5/17/2026 8:17 AM, Suraj Kandpal wrote:
> This reverts commit 40d2f5820951dee818d05c14677277048bd85f9f.
>
> Removing the try_vesa_interface gate caused a backlight regression on
> panels whose VBT correctly reports INTEL_BACKLIGHT_DISPLAY_DDI and whose
> PWM path is the actual backlight control, but whose DPCD optimistically
> advertises DP_EDP_BACKLIGHT_AUX_ENABLE_CAP / _BRIGHTNESS_AUX_SET_CAP.
> After the commit such panels silently bind to the VESA AUX backlight
> funcs; AUX writes complete but the panel ignores them, leaving
> brightness stuck (no-op backlight). Observed on at least KBL and TGL
> eDP setups.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

This will re-open the gitlab issue: 
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15679

We might need to add a quirk for the above cases where VBT cannot be 
trusted.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   .../drm/i915/display/intel_dp_aux_backlight.c | 19 ++++++++++++-------
>   1 file changed, 12 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> index a8d56ebf06a2..7a6c07f6aaeb 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> @@ -691,10 +691,9 @@ int intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
>   	struct intel_dp *intel_dp = intel_attached_dp(connector);
>   	struct drm_device *dev = connector->base.dev;
>   	struct intel_panel *panel = &connector->panel;
> -	bool try_intel_interface = false;
> +	bool try_intel_interface = false, try_vesa_interface = false;
>   
> -	/*
> -	 * Check the VBT and user's module parameters to figure out which
> +	/* Check the VBT and user's module parameters to figure out which
>   	 * interfaces to probe
>   	 */
>   	switch (display->params.enable_dpcd_backlight) {
> @@ -703,6 +702,7 @@ int intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
>   	case INTEL_DP_AUX_BACKLIGHT_AUTO:
>   		switch (panel->vbt.backlight.type) {
>   		case INTEL_BACKLIGHT_VESA_EDP_AUX_INTERFACE:
> +			try_vesa_interface = true;
>   			break;
>   		case INTEL_BACKLIGHT_DISPLAY_DDI:
>   			try_intel_interface = true;
> @@ -715,12 +715,20 @@ int intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
>   		if (panel->vbt.backlight.type != INTEL_BACKLIGHT_VESA_EDP_AUX_INTERFACE)
>   			try_intel_interface = true;
>   
> +		try_vesa_interface = true;
> +		break;
> +	case INTEL_DP_AUX_BACKLIGHT_FORCE_VESA:
> +		try_vesa_interface = true;
>   		break;
>   	case INTEL_DP_AUX_BACKLIGHT_FORCE_INTEL:
>   		try_intel_interface = true;
>   		break;
>   	}
>   
> +	/* For eDP 1.5 and above we are supposed to use VESA interface for brightness control */
> +	if (intel_dp->edp_dpcd[0] >= DP_EDP_15)
> +		try_vesa_interface = true;
> +
>   	/*
>   	 * Since Intel has their own backlight control interface, the majority of machines out there
>   	 * using DPCD backlight controls with Intel GPUs will be using this interface as opposed to
> @@ -733,9 +741,6 @@ int intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
>   	 * panel with Intel's OUI - which is also required for us to be able to detect Intel's
>   	 * backlight interface at all. This means that the only sensible way for us to detect both
>   	 * interfaces is to probe for Intel's first, and VESA's second.
> -	 *
> -	 * Also there is a chance some VBTs may advertise false Intel backlight support even if the
> -	 * TCON DPCD says otherwise. This means we keep VESA interface as fallback in that case.
>   	 */
>   	if (try_intel_interface && intel_dp->edp_dpcd[0] <= DP_EDP_14b &&
>   	    intel_dp_aux_supports_hdr_backlight(connector)) {
> @@ -745,7 +750,7 @@ int intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
>   		return 0;
>   	}
>   
> -	if (intel_dp_aux_supports_vesa_backlight(connector)) {
> +	if (try_vesa_interface && intel_dp_aux_supports_vesa_backlight(connector)) {
>   		drm_dbg_kms(dev, "[CONNECTOR:%d:%s] Using VESA eDP backlight controls\n",
>   			    connector->base.base.id, connector->base.name);
>   		panel->backlight.funcs = &intel_dp_vesa_bl_funcs;
