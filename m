Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDDF697EFA5
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 18:55:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33DFA10E28E;
	Mon, 23 Sep 2024 16:55:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HxdeyozZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDD3710E1A9
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2024 16:55:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727110516; x=1758646516;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=YO/c55ZctMzu7OSPYsnOIklF3ZIq36QlBgMhISoi0fg=;
 b=HxdeyozZNp2DwbXA8VGG+9XyY9sf7HuRFT0nhE+p5cS7nJAL3krijwn8
 LjOFjVrXLLQ2Z8MJeBQnjvaeODAQnKsxw9Wn5QeqvQ+4ZLXVX//PN60N2
 b3LaUqHsQ+xIgGgTdj1wtEgCRxheZ5seEGwZOGRfBKgqmQfyipWppdO0y
 0s27vorXghZ0JkxBZ/tnompded7HvtfPBS3S3KgQbb7nwPPbHOjV5yEEf
 Ao6IR3zGlVoKfEhSJnMLllvZrAd3D1avlg/0+ELKIQVGcOV3E44RFx+10
 Ewscxj4nlNYoyJIO0DdF38RrQjSIlWGWqvcoiSt988FNZkJ6dKivWZLbm g==;
X-CSE-ConnectionGUID: hPJNZFqBRcCxMSdQReU/qw==
X-CSE-MsgGUID: XHgaAbIjQNWqTZqJwS4Odw==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="43587707"
X-IronPort-AV: E=Sophos;i="6.10,251,1719903600"; d="scan'208";a="43587707"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 09:55:15 -0700
X-CSE-ConnectionGUID: wBpELyh5SB6S/M6CyUsPXw==
X-CSE-MsgGUID: SMvlCvp/T/ObfnrMYhwmhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,251,1719903600"; d="scan'208";a="71961477"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Sep 2024 09:55:16 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 23 Sep 2024 09:55:14 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 23 Sep 2024 09:55:14 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 23 Sep 2024 09:55:14 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 23 Sep 2024 09:55:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JC1NzDOmgbh6GQYDNigIjfJHZS1gZSuCCPOtectC348HcSAUS3HKWNCIiIEx6Vv7RVL1H9FjyekMVguGSDzsjDE4VfzCxG1cngmXkrWKUjiTwyBslgSNP+tM5h9fWt/G60dRbqY2Cb5T029qD10obMInOquurF2/TPZWJ+yrGQVLi5XyqeXJ36XnOzzgZRYLu1tzzxiq6yQEG9UTRS0PdhqnCqXlWdtnc7hLezOjGSIszv8Bcq+MzCVzsMpbYdVMk5hh/HRgEetu+0VlnyjrjlsdVyqeIj8n7QI4RmPF4HWjZRxPavwNu9FmraOArjRDxgYntftFE0Z6DHqjx2ZI/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/x+g/TMfHiTsalpv7EwY1b6I2MIXmWW7hVAVz5QyYI8=;
 b=pOTBGA4hmM4ePglHEx+JSaGammFZVAVOZJrZVuxfdd6+pWQwecDhIXwI/rZih6IGVvBwuZiMdLXNkbUxtHsOYlu4/q6ffHbOXNriVECqIEpwxoDl1wJASP0h14fmpN3ND1EiMmaOwqAJw12WOPW94Ai4Vs1u93rddzCWrk5ezz+eF4sdY4jA+fg8W0x7SXxZlD/0i01pYet4dN7KCLEZfFlFJ2HN6cgh256AQltzjj21lXiVbg3Cb2oU9yCzLAZBi9NE4X1Lxo+fWPvX8Rmz57QkBF86axomrO9+O85dp5ok1WL3M1abulntQDfPH1y9b6P1x2vPT2DwFXqVOh9RBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CYXPR11MB8732.namprd11.prod.outlook.com (2603:10b6:930:d6::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.25; Mon, 23 Sep
 2024 16:55:11 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.7982.022; Mon, 23 Sep 2024
 16:55:11 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20240918224927.GU5091@mdroper-desk1.amr.corp.intel.com>
References: <20240829220106.80449-1-gustavo.sousa@intel.com>
 <20240829220106.80449-5-gustavo.sousa@intel.com>
 <20240918224927.GU5091@mdroper-desk1.amr.corp.intel.com>
Subject: Re: [PATCH 4/4] drm/i915/display: Cover all possible pipes in
 TP_printk()
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
To: Matt Roper <matthew.d.roper@intel.com>
Date: Mon, 23 Sep 2024 13:55:05 -0300
Message-ID: <172711050548.3259.9140188922248043495@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR03CA0314.namprd03.prod.outlook.com
 (2603:10b6:303:dd::19) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CYXPR11MB8732:EE_
X-MS-Office365-Filtering-Correlation-Id: 3743aad7-aed4-461e-7e57-08dcdbf07cd7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NnZubDdZY01zZlA5cDRxOGRFNXg2QUJTQVVwcE83QTVBVzhXbTl1YmpESHdU?=
 =?utf-8?B?cWFSbkZwRjk0QnNLUUJZS3JoZkNrRklqTm5XbXUrMFhEN2J4aVB1VEV3bGxw?=
 =?utf-8?B?LzRjeVVHUXdCL1lvY3hidUdQbDBqMUVQbFJBVm1hV3RtcXpTMGxkUTB0bXR3?=
 =?utf-8?B?elo1UjJickxlLzYvdkIyelFFRm1pQTJUTktKYTRpNmx2R3FOMmRQdVIrVzc1?=
 =?utf-8?B?NTJRdXNwck4zTktEYXdDY2lSNG50b2lvbWxkTnBZNWtwbTlZRVprclZsd0xN?=
 =?utf-8?B?V3E2cVhJemNlMkFjcjk5NmZiaWlPd3JvWENNV0o5a1YxRWt0UWUxc2ZZRjIz?=
 =?utf-8?B?bGRRZGFCWmNWYzVYZVlxUUFkYWhIZmZnQmw0RmI5bnpNVmVUejZhZnd6bmRr?=
 =?utf-8?B?bEZrMHMzb3ZTNmxxelM5b3JMYmwrSDZGY05ZblJSU2xjWFliODhYcnJOcXRi?=
 =?utf-8?B?ZUtKT21SUUovK0t2alg2THFONk9KRURwWmwremxFcFBPNnVsajduMnk1cXdk?=
 =?utf-8?B?QVl5YjI1SHUwaVZPcWIrdHBMQS9vRlRIMUVZRmdTemxLMGo3OEs3SXJuT1ps?=
 =?utf-8?B?RHJEQitnaUVVM0k5Vk9rSGE5SVlLTUY2OU5kSFRRSmg2SmRndjVtODh6YkYx?=
 =?utf-8?B?aXF6ZkVQTnBzaDk3Zy9yUTFRLzNhaC9xU1Y1SlFlTjNuQlRyelFXZ3F4Y0s3?=
 =?utf-8?B?Q3JGSThHSS9mUWIyNXEyTmc2K0cyamhIVHhsVFQ4aHMwQ01IMGtYU05mN05T?=
 =?utf-8?B?bU45NTZ3bEhrejhraVRYOW1DY2Yvd3U5OXZHNXNwaUFMOEllcFhqT3dGaGl5?=
 =?utf-8?B?TytKS3pkNmlQVHUyQzhvU1Bka1VqdW1NS2daZWdEdWMvVVk0YWkxVTBrRWRh?=
 =?utf-8?B?ZGtmSi9CajhHUUZ2Vkthc1JmWGQyb29NRnZMMTZ3Y3JEVExyN2lXZ3NRaElN?=
 =?utf-8?B?dkFxWFFydVAxR3lHN3crNUNkN241allUbWY4V2hOUjdWSHlLdHRad21sNm5I?=
 =?utf-8?B?akgvK0dUeWZJaXJLcHpHMHdLdm5jdk1UQUEzamw2WXhUTGZJT1ZZWnc0dEFL?=
 =?utf-8?B?K2hzcDgzcEs2S0w3KzNuenNrSUNaMlFpRG1kL1I5NE5tSnkrb2NxR1RjMzJ5?=
 =?utf-8?B?OWhYTlA2QzhVclZqTjZRL1JmTXFadWpmMmRVTE01NSs4dUJHYmYzczhLZGhY?=
 =?utf-8?B?NWtXSktiMDZXeVdiOUszZGZjbjIwQ1d3YkRrZWZIK0prekhCOWRMb2Z2M0hB?=
 =?utf-8?B?NTNCTzVZeStmNFhqR3BYR1dQYTd0eGdvcHZQeVdoQmxBQTAvdlI0N0FNUTJw?=
 =?utf-8?B?U0JmYzRrWEthTkJQbk5BWlFhbnZSNXNlcExWYUo3cGxnS1ZwbmxxZkVrZG5E?=
 =?utf-8?B?NlczMjlFMWNreGIxR2JPWUZWbEpzb3U2QUo3Y094dzN2OUNPMGFkTmdsMXRu?=
 =?utf-8?B?SWcyWGt4K25nd2xXRDVYY2RWeGZ4TkNYdi9ndEpxVnJvMW85cTQwL3BYYmtp?=
 =?utf-8?B?NUFNSmJXS1VGWE5ZMSsyejA5VUV4dzg4WDhsYVJuZ2hpN3JsZWI1ZTBVUmR6?=
 =?utf-8?B?eTlJdzBUQnBFQVBZa2tSUTUyd1h2S1RQbktSUCtOb3VCMzFwS09lSWNMeEpO?=
 =?utf-8?B?L0F4Ly9qTEQzVC9sT3V1b0h2R2p1aGJjMThRV0VFN29ucytvdWJrdjY2OG5N?=
 =?utf-8?B?azJTeEdIZ2E5YkY5QWxTRll2Q0VDZURwTVpFTi9mempKSFR2aW85cWx3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VEVyTUxuU24rSVNnS1ZCbElHL3RyMUlnSURaSUowQU9OQW5qRXh0d0YzcjhV?=
 =?utf-8?B?SkdhaFZUTVRMN3dVRmFsK01Fa2pUbFg1UTdGS0VoMk9uNThqR2RQNGNsY0g4?=
 =?utf-8?B?bmdUMEJFYTNJM0NRbm96ZTNTeHdwazVNRUo4bkJZclBFQUwzWjdlVHl0ZDE3?=
 =?utf-8?B?L1dlbmpHWjRzUGVabzFhdU54ZnBDMGZSSlhkeWFUQ1ZvbE9RZ1ZQTjlJOU14?=
 =?utf-8?B?ai9NUDlZbVRZY2Z2aTRRanl0aDJ2WmY2amdKSkVRTU14R1RrcDJkdW44OU1o?=
 =?utf-8?B?OWw1Zlh3WkpRcUxGU05TVUM2eWY1alRIK25TQzdjNGEzSDIzdHUvMHpDeEly?=
 =?utf-8?B?RjRtSW1jejhQbEJ2bTFqRXhRcitDNDlRZUVYNDF4cU1McDlxSjhGSmRKOTN5?=
 =?utf-8?B?S2h0cVNHZmJLN21Bc3QyRWU1VkF6STYyVjdFUFJvZ3p1UDRNMldOYm5jMjVr?=
 =?utf-8?B?c3lpdUJRWnNPOFZCUklvZUVFdzUvVzJ6dmpxL2NXU05JUFBCL0h5bDQyRmlr?=
 =?utf-8?B?YUdaWnZxRTNEYW5vcmRKZ0VnRVFRTXBXU0lhbmRDQ1NpS1h1dXdFOHhCL2RE?=
 =?utf-8?B?Vk1BYkJXYkFtR2ErejM0ZWtmUFNkend0bU1jYTRaVjNhYlRBZTI5c0tTUU00?=
 =?utf-8?B?MXpUQ1ZjUklkTFNseDhaYTlLZy9Tcjh0REpZeG00N0o4UEZXMVZZanJQc01D?=
 =?utf-8?B?Rko1Q2I5R3JGekZBTFI1di90TnRJdWF6OXdqaVhCeEZWbGQ5ODNEUC82YVYx?=
 =?utf-8?B?czJyclhDR2RiMDRCUURrRm9LNXAydVRSTFhJblBYK2FpZUF4NUJ2MElXUEU1?=
 =?utf-8?B?aW13ZTI4UkI2bWNxWUpSalNDeWVGS1NjRDMrdnZub08rQkxWUFJTaVZHd2Ix?=
 =?utf-8?B?SHlEKzBIOGZYK2V3cm5ySzBycEtzNDFkd3ZlSWQrWkR3YXdiem9xM2dKbXdj?=
 =?utf-8?B?eS9zRkFBVEpIa2tzOTMyV0JESFVZOEdmNHgzaDU3OVJycURISytyQ1ZMbHB1?=
 =?utf-8?B?TWRYclFZT1htNURpV2sxSnJTTDJvYXpDWGJ3VktpWkRaUysrZjZpWTVER3g4?=
 =?utf-8?B?amRTNW1jVnEwV3g4WTdFdWtGRVZLbjRoVVZZVHNZK2l2SE1XSzlaMFBBTFpY?=
 =?utf-8?B?MTBBU3gxUWpTb2JVaW5jWTJ6anZwMXd0M3RUTGYxRnNEaTZHc1VvK3YyYitj?=
 =?utf-8?B?R2dHeEV0SHQ0ZkVLdG41cXQ2M2Vxam9YSWxVam1aSzlnSEVhYmVFbjB6dTA3?=
 =?utf-8?B?T0dtQUR3LytoT1dpeWlrd1B2TVJwSUcxUEx6U21SM2wweExmcTBaYVVsTUpx?=
 =?utf-8?B?L1VsbUdROVpJdlpKUXZ0NURFQWl6VVZQbUd0KzJjZHBtcWh3L0xaQXYzWmt1?=
 =?utf-8?B?aVk4ZHBXTmIwQ3N5cXY1bkNYVE1BSXVpdVlmTEdUUlJ6MXc0YXExV0gxalZw?=
 =?utf-8?B?MTZSVHpwSE1Sb3VFQytrMmE4SzNBeW1KWXlublFuM3dwMExmbGllT0xWczE1?=
 =?utf-8?B?aUp3b0Y4TWs4R3g2eStjYUIxbTUvRHoyREt0MnlNd0pRZXFtREYySEtEYUov?=
 =?utf-8?B?enZhbWx0cjBEUFJxSjBxSDFDaHB5YWozZFozUi9sSXZyOFpWRStrUFZFVENZ?=
 =?utf-8?B?MEp2TnhQYnZDRkJKVGYycVJSVEpvUm51eWlkUFZtZUdDQ2hXNmRybWt4bld3?=
 =?utf-8?B?RnJUQStnclhTOEl1dUxTeUcwNkVWVHFpa1k2U0x3bUROdnUzdEZVV3pOUkZB?=
 =?utf-8?B?VTRzei84VDVORGFYQzVTQVJ1M2NsVjhBbjNzRXFwQjBGVS9sZ2lacFJQcHky?=
 =?utf-8?B?RklnclVRNHViZ3k5c0NwS0NLVVV4RjNVOXNUUnRRNTBhQ1F1ckF0NnBJTFB2?=
 =?utf-8?B?TE9ITUlhSXp5S1BUYkUxaXowclJKOHBpeW53Nm11SDYzb1pRS2pXYzFRQng1?=
 =?utf-8?B?SDJrMjBIbi9kTVRzTlROUjZZbGJJY2UrVzltQW9FbDF1aXQzajYxc2hMYjNx?=
 =?utf-8?B?UmJDWUhUUk1yTkxHOWhZd0NpbFg2eVdRMFFHL2grZ1daUG1UbUNjdmx6c2Mv?=
 =?utf-8?B?ZE5XUzZ6dnl4QlNrZUxPdStQWUN1bTNIL08xTDE4RFJRcEhodFE2ZjZuaUYv?=
 =?utf-8?B?QXRYcjlYcSthcXVoSVhlc1lqaVFDSVRjTGVpOG44ekpjRHJlU0JYUGFGWHd4?=
 =?utf-8?B?Y1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3743aad7-aed4-461e-7e57-08dcdbf07cd7
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Sep 2024 16:55:11.6204 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: w23811asQpXu8VZvsETeibiEVroVxU491oI9sUdRZd4otWZ9M0SHdhpWczqP2vLtNd+/mhVZxkMyeDE/z6ctkw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYXPR11MB8732
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

Quoting Matt Roper (2024-09-18 19:49:27-03:00)
>On Thu, Aug 29, 2024 at 07:00:47PM -0300, Gustavo Sousa wrote:
>> Tracepoints that display frame and scanline counters for all pipes were
>> added with commit 1489bba82433 ("drm/i915: Add cxsr toggle tracepoint")
>> and commit 0b2599a43ca9 ("drm/i915: Add pipe enable/disable
>> tracepoints"). At that time, we only had pipes A, B and C. Now that we
>> can also have pipe D, the TP_printk() calls are missing it.
>>=20
>> As a quick and dirty fix for that, let's define two common macros to be
>> used for the format and values respectively, and also ensure we raise a
>> build bug if more pipes are added to enum pipe.
>>=20
>> In the future, we should probably have a way of printing information for
>> available pipes only.
>>=20
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>
>I didn't did through the details of the tracepoint system, but I'm
>assuming you checked that the underlying structure is zero-allocated so
>that anything we don't specifically assign in TP_fast_assign will be 0
>rather than uninitialized garbage?  E.g., on an ICL platform with only
>three pipes the pipe D output is guaranteed to be zero?

That's a good point. I actually missed doing this check. I just verified
this on a MTL machine by making the driver think pipe D is fused off and
I got some garbage in the trace data:

  $ trace-cmd report -F 'i915/intel_pipe_\(enable\|disable\)' | grep -o 'pi=
pe D: frame=3D.*' | sort | uniq -c
       57 pipe D: frame=3D0, scanline=3D0
        1 pipe D: frame=3D1752461056, scanline=3D11
        1 pipe D: frame=3D4294936705, scanline=3D1752461056
        1 pipe D: frame=3D48, scanline=3D0
        1 pipe D: frame=3D740, scanline=3D6
        2 pipe D: frame=3D808333872, scanline=3D0
        1 pipe D: frame=3D976236602, scanline=3D66670

Then adding a patch to memset() the arrays to zero before the loop fixes
the issue:

  $ trace-cmd report -F 'i915/intel_pipe_\(enable\|disable\)' | grep -o 'pi=
pe D: frame=3D.*' | sort | uniq -c
       64 pipe D: frame=3D0, scanline=3D0

Since this issue would be observed for fused-off pipes as well and not
only for platforms with less than 4 pipes, I'll send a v2 of this series
with such a patch. Such a patch will come before this one.

Thanks for catching this.

--
Gustavo Sousa

>
>Assuming that's the case,
>
>Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
>
>> ---
>>  .../drm/i915/display/intel_display_trace.h    | 43 +++++++++++++------
>>  1 file changed, 29 insertions(+), 14 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_trace.h b/driver=
s/gpu/drm/i915/display/intel_display_trace.h
>> index 759b985c84a9..2ce66dffdfa5 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_trace.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_trace.h
>> @@ -30,6 +30,29 @@
>>  #define _TRACE_PIPE_A        0
>>  #define _TRACE_PIPE_B        1
>>  #define _TRACE_PIPE_C        2
>> +#define _TRACE_PIPE_D        3
>> +
>> +/*
>> + * FIXME: Several TP_printk() calls below display frame and scanline nu=
mbers for
>> + * all possible pipes (regardless of whether they are available) and th=
at is
>> + * done with a constant format string. A better approach would be to ge=
nerate
>> + * that info dynamically based on available pipes, but, while we do not=
 have
>> + * that implemented yet, let's assert that the constant format string i=
ndeed
>> + * covers all possible pipes.
>> + */
>> +static_assert(I915_MAX_PIPES - 1 =3D=3D _TRACE_PIPE_D);
>> +
>> +#define _PIPES_FRAME_AND_SCANLINE_FMT                \
>> +        "pipe A: frame=3D%u, scanline=3D%u"                \
>> +        ", pipe B: frame=3D%u, scanline=3D%u"        \
>> +        ", pipe C: frame=3D%u, scanline=3D%u"        \
>> +        ", pipe D: frame=3D%u, scanline=3D%u"
>> +
>> +#define _PIPES_FRAME_AND_SCANLINE_VALUES                               =
         \
>> +        __entry->frame[_TRACE_PIPE_A], __entry->scanline[_TRACE_PIPE_A]=
                \
>> +        , __entry->frame[_TRACE_PIPE_B], __entry->scanline[_TRACE_PIPE_=
B]        \
>> +        , __entry->frame[_TRACE_PIPE_C], __entry->scanline[_TRACE_PIPE_=
C]        \
>> +        , __entry->frame[_TRACE_PIPE_D], __entry->scanline[_TRACE_PIPE_=
D]
>> =20
>>  TRACE_EVENT(intel_pipe_enable,
>>              TP_PROTO(struct intel_crtc *crtc),
>> @@ -52,11 +75,8 @@ TRACE_EVENT(intel_pipe_enable,
>>                             __entry->pipe_name =3D pipe_name(crtc->pipe)=
;
>>                             ),
>> =20
>> -            TP_printk("dev %s, pipe %c enable, pipe A: frame=3D%u, scan=
line=3D%u, pipe B: frame=3D%u, scanline=3D%u, pipe C: frame=3D%u, scanline=
=3D%u",
>> -                      __get_str(dev), __entry->pipe_name,
>> -                      __entry->frame[_TRACE_PIPE_A], __entry->scanline[=
_TRACE_PIPE_A],
>> -                      __entry->frame[_TRACE_PIPE_B], __entry->scanline[=
_TRACE_PIPE_B],
>> -                      __entry->frame[_TRACE_PIPE_C], __entry->scanline[=
_TRACE_PIPE_C])
>> +            TP_printk("dev %s, pipe %c enable, " _PIPES_FRAME_AND_SCANL=
INE_FMT,
>> +                      __get_str(dev), __entry->pipe_name, _PIPES_FRAME_=
AND_SCANLINE_VALUES)
>>  );
>> =20
>>  TRACE_EVENT(intel_pipe_disable,
>> @@ -81,11 +101,8 @@ TRACE_EVENT(intel_pipe_disable,
>>                             __entry->pipe_name =3D pipe_name(crtc->pipe)=
;
>>                             ),
>> =20
>> -            TP_printk("dev %s, pipe %c disable, pipe A: frame=3D%u, sca=
nline=3D%u, pipe B: frame=3D%u, scanline=3D%u, pipe C: frame=3D%u, scanline=
=3D%u",
>> -                      __get_str(dev), __entry->pipe_name,
>> -                      __entry->frame[_TRACE_PIPE_A], __entry->scanline[=
_TRACE_PIPE_A],
>> -                      __entry->frame[_TRACE_PIPE_B], __entry->scanline[=
_TRACE_PIPE_B],
>> -                      __entry->frame[_TRACE_PIPE_C], __entry->scanline[=
_TRACE_PIPE_C])
>> +            TP_printk("dev %s, pipe %c disable, " _PIPES_FRAME_AND_SCAN=
LINE_FMT,
>> +                      __get_str(dev), __entry->pipe_name, _PIPES_FRAME_=
AND_SCANLINE_VALUES)
>>  );
>> =20
>>  TRACE_EVENT(intel_crtc_flip_done,
>> @@ -211,11 +228,9 @@ TRACE_EVENT(intel_memory_cxsr,
>>                             __entry->new =3D new;
>>                             ),
>> =20
>> -            TP_printk("dev %s, cxsr %s->%s, pipe A: frame=3D%u, scanlin=
e=3D%u, pipe B: frame=3D%u, scanline=3D%u, pipe C: frame=3D%u, scanline=3D%=
u",
>> +            TP_printk("dev %s, cxsr %s->%s, " _PIPES_FRAME_AND_SCANLINE=
_FMT,
>>                        __get_str(dev), str_on_off(__entry->old), str_on_=
off(__entry->new),
>> -                      __entry->frame[_TRACE_PIPE_A], __entry->scanline[=
_TRACE_PIPE_A],
>> -                      __entry->frame[_TRACE_PIPE_B], __entry->scanline[=
_TRACE_PIPE_B],
>> -                      __entry->frame[_TRACE_PIPE_C], __entry->scanline[=
_TRACE_PIPE_C])
>> +                      _PIPES_FRAME_AND_SCANLINE_VALUES)
>>  );
>> =20
>>  TRACE_EVENT(g4x_wm,
>> --=20
>> 2.46.0
>>=20
>
>--=20
>Matt Roper
>Graphics Software Engineer
>Linux GPU Platform Enablement
>Intel Corporation
