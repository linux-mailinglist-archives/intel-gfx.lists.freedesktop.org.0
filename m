Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6FF1CAF317
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 08:47:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E9C310E0F3;
	Tue,  9 Dec 2025 07:47:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TZ/2TG1N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC92310E0F3
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Dec 2025 07:47:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765266453; x=1796802453;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=6mvu9AkNcrnFNb6UQ2bZTeKiLqRX/a4K6OFR5M1frkg=;
 b=TZ/2TG1NcipppaOT6xKJE0XFnn7QlQ0C1w2Cd5JPCS02wl75hSCaQKu9
 pHOLadqMIIvvYFIyZ0o6W4sgQgMs3ePRvqELlCqGoGSzZjmA6PA/P3MDf
 9vGqeb4UvlHAQqRth52BXQ8/CR4Y5zKDxlj709ykNEwWb9TYMacL/t+Pe
 6jz6Xug9tDSGu+vrvYaefMiDKjiyVn4/ZSo2ewhBcieCODFw0qpcYjrZ0
 FU3aQtWcu/qnoTforDI/khgEmC/gzXegJB8NQSY5Z1NUzsXutRcDjq9lA
 Ebi0PaaPF/XMBQsdoH3p634AeFhWwGAwA81HeUKxBCyOo2sOGVOKqNn0g Q==;
X-CSE-ConnectionGUID: J3RorXpSSQuVdriu9F7L9A==
X-CSE-MsgGUID: jih/4vW7SJyk0b1avWBmDw==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="66942205"
X-IronPort-AV: E=Sophos;i="6.20,260,1758610800"; d="scan'208";a="66942205"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 23:47:32 -0800
X-CSE-ConnectionGUID: EbgjHVUuTn+QY3Zp5qG1WQ==
X-CSE-MsgGUID: RhA89RLATdyOxDRVrgB/aA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,260,1758610800"; d="scan'208";a="200599038"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 23:47:32 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 8 Dec 2025 23:47:31 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 8 Dec 2025 23:47:31 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.9) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 8 Dec 2025 23:47:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=V18jbeYhadut60YBq7zHQp0XxeJwSSOBxTifig+1xamZVd0ToBIYEhbY+aMnUIlXcUjDswJgkP13KBQKBBIdneueyvrdpRQCPPQwihT3S7OxNdvcHyk9hxN1W67yqfwQzGRWQZomjkjSxJNFOfo3JGp0M22osxdv0Gn/4FAuuEBj/BurIlKxh9VISQbeFFUQXArNj6U7Ks889MTsNlwfyo57+rsTRF2OfDiKuWzUsaqBGGZutQN3bP7Xu50yH/A5tQaGyYwDdt7tTonYclhFSRLUIDDpCmFFYXt2kwdnK4p8BGxtB5PIR1AlaaqtUv2UTc8YlZV97GFZykviyUj37w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x4i+8nNfl47eQpuqDbgRDe1dwd6op7c9OfW7Zn7hook=;
 b=M3Mu986Q0JaPc6oi0s7VqbzpeX1wqeh7yQ55KPSkHo2PdDmMeBCMZgNa4DEXchb6xozmvQkXyqSTsO9hu7tdw+8f32MqPc2Z9tU9FC+j1qvIMTrOWQgM//3WV5Clx5cRQC7t2yDQo/uCNv8FqPvKJWJq5Dmno8ilB1DLWQ9FqRGAGrV365S0hYlVIA2bXfAEEa7Zb607Axs4aJrmqP4vanKa+WcTiF4q6QT6voZJtAE887RHWxDnlJVquNfqIpRz345wAHnWYx7QVGmDALdd0sd1HgR1UagkmMGYnspUnDzkJEg5trRqwwtkToRCA6Loho1vmwR2NTuqX/XzKDIjSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by PH8PR11MB7000.namprd11.prod.outlook.com (2603:10b6:510:220::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9388.14; Tue, 9 Dec
 2025 07:47:22 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%3]) with mapi id 15.20.9388.013; Tue, 9 Dec 2025
 07:47:22 +0000
Date: Tue, 9 Dec 2025 07:47:09 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Andi Shyti
 <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: [PATCH v5 3/3] drm: Avoid undefined behavior on u16
 multiplication in drm_crtc_vblank_helper_get_vblank_timestamp_internal()
Message-ID: <rn5ehfx4ujqwm3kbu3ryvtayinmmfbgdzaithxbkrrsg2onbco@nw4bkwywhrws>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20251204143827.111428-1-krzysztof.karas@intel.com>
 <20251204143827.111428-4-krzysztof.karas@intel.com>
 <aTcHvk1QhPNfKT89@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aTcHvk1QhPNfKT89@intel.com>
X-ClientProxiedBy: TL2P290CA0021.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:3::15) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|PH8PR11MB7000:EE_
X-MS-Office365-Filtering-Correlation-Id: 9362de48-d5a7-4169-75c8-08de36f72fbf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dHlVRXdxWUx2cmxqMVNxNUFVb3J4S0piY0RmMm9CUU9Na1hvTmdSclQ4U1FM?=
 =?utf-8?B?OGJZSU9abkVOcXdQRDJPbk1wSW5Gb0s3V0l6Y2phZVBLNXdld3lsbmhFK2Vt?=
 =?utf-8?B?d0lUNWlNYnEwd3QzcXJZNGlVVUdJcEk2UHMxWllsUG5PcHFDLzY0UDJUYTR4?=
 =?utf-8?B?NUd6bTB6dFpOeWVpQUEzbmd2WVhmdnBWZXQxSVNaUFhzSFJUTkl3bkhlVnho?=
 =?utf-8?B?ZTd0bWUxVjFaUGRLaDgweGpSODlZUGZZUjZwUWtTc05xUXd4U2JTTzA4ZjYy?=
 =?utf-8?B?UGZEUHVuV2FtdFl5WGRJclc3YVpGQWhKazVjaUdteWNUQTk1SVdTTzNRZkV4?=
 =?utf-8?B?bm1BTzZrMy9qYm5Zb0l6S3ZIZVY1U1MzT2Y1ck5RWEw4cnd4NDVjSWd3RUNT?=
 =?utf-8?B?VnZtNThBRk5yU2w3U1IvNmdCeGtCUzEzdysrWndOUzBHWlN0TjRxVEd1c3JH?=
 =?utf-8?B?MW1MMFlNb1RLaDk1UWRIbWltaTNrMW5xMUlTUlJERkpZUGx4NEdRZXFmWDZQ?=
 =?utf-8?B?TkQvOWRZUlJKVy9YWlBMNGp6YVJrTXRsanFPcEJQSy90QXB4dDNkekdpajN0?=
 =?utf-8?B?RTNIcVdGWWRrZ2dtaWIxczlFVmVBT09hd0NaaEhLQTZrSEhFbDJyMmh2dElj?=
 =?utf-8?B?V3FRRk5QSW9oK1RLNlJnMmxXQ2hvaG5pWWhETnc5QkNiZHBNVU14TzJDbm5U?=
 =?utf-8?B?LzFpdXpOQlNBdk54bUVZL3hjT01OdTUva05td01HNUh5VEZBTXZDSzVjMWVG?=
 =?utf-8?B?L2pZV3g2RXdNdHlKbUNVanVlTDNnZGd2UWsyQXdaY0RTbC9RL2NPWTJVMGN3?=
 =?utf-8?B?UEg5Mm5FOVBtMU9WZzJCUmJhSUNjbHQ2NEd5STBoZTJTNlZQamliVVlHVkN4?=
 =?utf-8?B?NFRpbXNmMWt1T3lLVW1nSkRQWGkvd1lRUTRuNFZOQzIwMHRTRU43czFxWGU5?=
 =?utf-8?B?dkVlenJXMUhSYjhKTzBjRDMyTCsrK0dYbGNlVUhWdGNWbzNBNHZYLzdqQ01S?=
 =?utf-8?B?UXVQVkYza1h2OTdZTmJ3VVh4WklIRnc4Ym5mSWxrZ0tYbmZZMkhXSVdmY0hR?=
 =?utf-8?B?bUc2VGVoSnN5U0xubE5zbllTNHlvK25VRC9SSUVtMU1GdDcxSnE3cXduVDBw?=
 =?utf-8?B?Ni93QTFHRlUyS3NRR2lhYlVoeW03MGtyVm5saUNxWkxPeWU2SlFBb2FQcDE5?=
 =?utf-8?B?SndZdWFEelVjOTljMmMzWUhESnpuMm5SVytJdmFvUm9RbWtPYUVEYnZ4Rzcw?=
 =?utf-8?B?czdDSjI5QU5EWk1nOS8rZHM4M1A1dTE4cU5lSEo3NEdDZ3ExVUFTNUpNdHJr?=
 =?utf-8?B?bUk5Z3RtNVZsaUNwdis4UE51RU5obDVFYkZTcWJNMXgrejNMVXlJd2tmYTBK?=
 =?utf-8?B?UmFZUjZCK25FeG9VMTl4ZDdCbWV6eW9QVlMwQUNMbEdNUHdIcDNGN0dzN3ln?=
 =?utf-8?B?YisyenI3YnM1TWw5cDRTRW1hZlo3SzhFSVhpUTlyWkd4Sm9BdEp0QkVHTWlo?=
 =?utf-8?B?TnZJL1BCUlRpVVRMMWlVMkM4UlZyUS85OFhERWVTMXFtenVTa0o4QmhmR1pH?=
 =?utf-8?B?djVJSjVaSGxTNU5CNDU1QU9RdjZlVkszSjlHUkRMNW91YjF5YVlBVlMzbExm?=
 =?utf-8?B?TXdlTjMwVzlydkVmY1hRbEhpZzdjekl6UDhiU1V5bWpIVWtEZWJ5SmhvbHJv?=
 =?utf-8?B?SWl4TW1EUXYwdnVzQ09YdXJvYkdOczhBTnlTZVQ2Mjk4L09XT0dNb2tlSHUw?=
 =?utf-8?B?bDg1Yy9RTE5GWFVHWGRKNTRtK1Q1M0FOTksrZEpRSktyRFNVUG44UmltcjVE?=
 =?utf-8?B?L0xWcm55V0c4Qjg4ZE15bVpDUGpreDlLRmlNaGNNTXVLOVcrY2ZOWmVyeUR2?=
 =?utf-8?B?SDd6UHM2U0pvTzIrTm1VK2ZVYkx3NFFydGhmdnJUcHdWT2p2SGl0emdMV3g3?=
 =?utf-8?Q?GUWm5lv5y060GAt6tXAzavRyFSZf8c1y?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SUxNRWtHUVFxQkZTTDRCcThWdXNBaE1zTDh4b1puZVByTENOTjdMT1NtTFNR?=
 =?utf-8?B?cHFuUFNWdFp2dnFlRXdMTnZ2UWN6aGtmWE9qZWZqTXQ5SVNLQ2I0bDljQmwr?=
 =?utf-8?B?ei95STA0REdOcXVSV3Z6VFplZjFkOG5CMTh2ZTdmek9pWkFUckZsaHVuVVVN?=
 =?utf-8?B?SUZrM003RElPUWdFVUNBNFNxNVJNdGk1dEhYNWxKRW1ENnR0WHhPRXlLeGY3?=
 =?utf-8?B?MWw0ZS9XVisvdzgxWlY2NU5EU1JOSHFqRjNZTVE0WEJDZlM0bWVoY24rWU9Y?=
 =?utf-8?B?aUlQbFpHSHBaZmNCVWtJY09wVjB1Qmx1WkJmdmxBYTRBVVE3SkVjaEF0Z20r?=
 =?utf-8?B?bndyK0tzMHVOaERIb2Vqdnl3Q25ERUJLd0lqT3hNUnpjayt1TXRPd3ptOW1Q?=
 =?utf-8?B?U3BUVmpXdzRkNk56L3FldExGU0M3ZDRKcHRtTkRDRmZrMklzSnpRell5R1Fo?=
 =?utf-8?B?NngxMEgvT0RsRUJCS2JJR0pyZFZLOTJkNFhqVnJ0bkNzOHBlRUZCWUc0V2ov?=
 =?utf-8?B?MkxOMWpGR3N0cVMydFBzLzdOR2dYMEhzUS9wckcrcmdWTVFEd3l4RnM4SGR4?=
 =?utf-8?B?bFNzV3h2eHUwVkEvdVdYNzljckEzQ212U1ZsWFB0QTJzbmhvT2pSNjJnN3JS?=
 =?utf-8?B?VXQ4dWp3TTQ1eXlTVE5UQlgybzVNeUxDbkJtdDkwMkdIT21WSnR3bFJHY1Z5?=
 =?utf-8?B?U0pjc205L1VHSFRzQnYxdXh3cGNoQU1obmdhZkpHS1dPQ0lCUTU3emt6dDdQ?=
 =?utf-8?B?bVREWmtCMW5JM2RKYVBEM0dlcjc3cVlhWHVTU01JZ1ZIUVdQVGV3dDhoWW9t?=
 =?utf-8?B?ZENFS2xwVnRMRVUraEV3cUM4dkpkd3ZKMlFBNXRlM1VQM05IWElEakthWTAy?=
 =?utf-8?B?cFlDZldmY29oU0phVkt0MHR1N3dXZFhIeUFRYjhIU3FqZjZ6cHQ3dWI5d045?=
 =?utf-8?B?K1YyRTErYVFwd25vV0REZjhuandkaEg0MUhmdHBud0NDOWR6QjJla1EvQ1d0?=
 =?utf-8?B?VUJGdDBUeUt3VHpzWDQyaEhLR0pYWDNDRVN6eHBKOHpKV3M1eE8zVFRXQUQ5?=
 =?utf-8?B?N1BwcWhPWC80SW5SaTRpRVByaHd0NkdtNVl5aVY0WFZ5ZWZYSEQxcjFSSjZO?=
 =?utf-8?B?LzlnZzFtS0Fid0pTL0VrQWY0UEtLTVNETmg2NEc1ZlQzNGxOMHdFcVhnb3VK?=
 =?utf-8?B?NjMvb3Zxc0g2aFJuN1A5L3BTN3MvK1pndHNQekUrMXZ3N0U2cGxwRFZkOEtC?=
 =?utf-8?B?b29GYXFOS3p3STkxWmZLdkxFYU03YXZldEFhTnFZOGw3Y0RFTXZaUzdIZVRF?=
 =?utf-8?B?NXp0MlIrTmFlTE5JR29mYTFYUXBjaEVwK2JjRm41WCtrdzJFRTkrZWVvdDEw?=
 =?utf-8?B?eHh6b1ZiTFJpUElKTjI5T3dhUlBOVDVrem8vRVJ5d3poN3BKbVJsUVlnbFoy?=
 =?utf-8?B?UkozRzJnaU5oTkZpWXN5Smo5bW1lY1BOdnRhcmIzMVFOVm1Wc2Vla0NMbG01?=
 =?utf-8?B?eFdOOW90cWs0R0VuTzl5eGtGOWtVT01EWDdvUDF5WWhUemw5M1VTSnRrV0tW?=
 =?utf-8?B?ZDU4RSs4UllTVXJsUS9CSU5HRWw2Rk5SWW04cE04bk1ha0pmcml2bXloV0tM?=
 =?utf-8?B?VWhoSFdSbVN0bkJXdHpiU21GcU9ncHRVR01LQ0FUY2VxZHUvN3hGQzFtQy9y?=
 =?utf-8?B?OHlaYmorVVJWS0JBZWFmZCtPVzYvMWxBNk1sNWQ2b1BLWlZmTnFuQ3l6OHpi?=
 =?utf-8?B?ZnlFeGZCZnpqck5EZ2lqdDNhL3NqazhlU2J6K0hseFkxTThHdnZXUDZGQWVa?=
 =?utf-8?B?UVlhaEllNG9IaE5zaTJEZlgvM0t1dFQzbDlVTDN6SUpXSW1SbDg0bUhLeERi?=
 =?utf-8?B?TXdORURHUllYZFo5dDRpSFRHeklLZGlDQkZPK1U5QVhnS1FzSFV4RlZwMG9D?=
 =?utf-8?B?NERGYmVpVGhnRFl5Wkc2aU04TmNkc3l5WkZNTHJhd2hJSVdkL1c1bklEQ2NC?=
 =?utf-8?B?dTRtK0M5dzZQaXc2NmE4b2tSVWNyU0dDcWpieUFsZXl0b3BZSnlEUndDdVk5?=
 =?utf-8?B?UUx6TnpvMVF2Tkd6bDZpa0liVk11ZkxhR09EcDRUM1dFS1FzdGlPcEF1QVBT?=
 =?utf-8?B?TTZQSDhNaHA3M0pvWGszM3hNMGUwVVF5N3FKS1EySmJ1QkY0M0ZSeVVzaExN?=
 =?utf-8?B?Znc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9362de48-d5a7-4169-75c8-08de36f72fbf
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Dec 2025 07:47:22.1175 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DMiCh9zbQm2ulcfsaypcl2/hrPN0f1JqcH7FeAHLBJG6ZT7gSlYbMqEidmWlXGMnI1JJZ9kfYEy9MuRxNHThh/Hh/IhzRyZ3Ui8RhNY8OOQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7000
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

Hi Ville,

On 2025-12-08 at 19:15:42 +0200, Ville Syrjälä wrote:
> On Thu, Dec 04, 2025 at 02:38:27PM +0000, Krzysztof Karas wrote:
> > vpos (int) field multiplied by crtc_htotal (u16) may cause
> > implicit promotion of the latter and overflow the result causing
> > undefined behavior.
> 
> How is that undefined?
Good question. It is well defined in C standard to wrap silently
to fit in the new type, so operations may complete. I think this
might have been caused by working with static analyzer at the
time, which imprinted word "undefined" in my brain, so it made
sense to use it here as well.

I believe "unexpected" may better describe the problem.
I'll change that in the v6 of this series.

-- 
Best Regards,
Krzysztof
