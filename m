Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D10AC2E322
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 22:51:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFC4310E4AC;
	Mon,  3 Nov 2025 21:51:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n2GR/iHf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C036A10E223;
 Mon,  3 Nov 2025 21:51:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762206678; x=1793742678;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=bY1V7tBQIliIEWeORR9kfmr6+iT1fPa7ABmvknsVAMU=;
 b=n2GR/iHfWmnYn3sVDmc4KlRRnnFtd+H20kG3sFzU9xfpugxY699HgeUB
 rxhOmXAagqfQjMpfz38Twsmezs5V3JKn8gdesiefxIJZuXT6J0rQais6R
 yLqi5wE/zDqy43c7XAKSkqSF2mjJoAGVQmsUIyty/wa8r4XmPzLERuGZQ
 8Wi62PW89Xpl+CxtXBUzbnCXjY1Y1tSZSWh5Q6UVrhn6mik+Qyu+RtfBu
 mQ/jkjaomVbr1LI8C/OZ/oYtV5wBjwWTw7oUlE0/1mkkJND1W3sxyljsz
 5Fm6cgiJ8MCzRxarc0H+6xup/z+gsIiifFlt5CJjVT2WrIKOnu/FFgcBH Q==;
X-CSE-ConnectionGUID: bvhrbR6/Req1iagGVfjtoQ==
X-CSE-MsgGUID: cYyFZyt6QrWq+g0hYRa29A==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="64390250"
X-IronPort-AV: E=Sophos;i="6.19,277,1754982000"; d="scan'208";a="64390250"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 13:51:17 -0800
X-CSE-ConnectionGUID: h/jo5XwzTEGC6AyrPxAjyA==
X-CSE-MsgGUID: 7KNAi66hSDyc8im+pV57cA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,277,1754982000"; d="scan'208";a="187699237"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 13:51:17 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 13:51:16 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 3 Nov 2025 13:51:16 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.7) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 13:51:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AX+8JWEWYUZZnZb4XD9vaDcJT4deaHeuxwNvKyHMW9mPEvHaOYGQIugdCY9WP+IrNpOqWOPCSEblLzxf7qLETW+4PBOnFZ1jrFG9ag32XL31FAWbgC6XtcOor4ZFdykLgs3fAXnLWHem09+fQTFQMlNu2UJbumu3fDHBZLNfuiK7/VQEZ01477jFMZ/ocnhkybt3k6Q5xEm5ibGfDyPOka/QOsmN+6/MJLjAZFAU2bI/SfsUY91N91dprsx08vwhpxJzcmXWT5qImxPeyvu7s3oPKI2IeRUILn70YWa320rsiWv14fiwoPYrlxdWa/SzeBZfv5x/8clXc8TOQjpeHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jPgkKdgdslRMz5L14uBEqx2snxsIcFLaCkSODwkOmHs=;
 b=x2a52Bf17Oiysof6QujrSh5/CGnYFBIlirxI6UZnuS9Lt4cFySH3bYmd/Nt3cWebm31R7PBy44j8GdP+qFxFj74acjY6tOZ469/c0mr7ZYo7NYJyb7SNwNmyKAwBYlvUSvP3jWpQ0I9vnY+3AQGbHiTudwdiNf+dwSveX63vsGH1dZpSAX16cQXWq9y9dqcisF1lVvaffbes0Y4/pH2b8f6Z8BXttMtf6w2+ESxF6bTIN/oNoGaaRNqjK3zz/BB7iuyzddtpipfBSYDRn3V4anOcIH7ClvDLA6hBSx1TiHWoSnetW5ljYL7tugKgKE6BZQ+PVlRHzRasRn38EYzyEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by IA0PR11MB8380.namprd11.prod.outlook.com (2603:10b6:208:485::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.16; Mon, 3 Nov
 2025 21:51:14 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%4]) with mapi id 15.20.9275.015; Mon, 3 Nov 2025
 21:51:14 +0000
Date: Mon, 3 Nov 2025 13:51:11 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?iso-8859-1?Q?H=F6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Ravi Kumar Vodapalli
 <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, Sai Teja Pottumuttu
 <sai.teja.pottumuttu@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>,
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v3 16/29] drm/i915/xe3p_lpd: Underrun debuggability and
 error codes/hints
Message-ID: <20251103215111.GW1207432@mdroper-desk1.amr.corp.intel.com>
References: <20251103-xe3p_lpd-basic-enabling-v3-0-00e87b510ae7@intel.com>
 <20251103-xe3p_lpd-basic-enabling-v3-16-00e87b510ae7@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251103-xe3p_lpd-basic-enabling-v3-16-00e87b510ae7@intel.com>
X-ClientProxiedBy: BYAPR02CA0056.namprd02.prod.outlook.com
 (2603:10b6:a03:54::33) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|IA0PR11MB8380:EE_
X-MS-Office365-Filtering-Correlation-Id: 127ef7c7-b9dc-4932-2c19-08de1b231c2e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?gNVGn76VoMUA6npY7EWI3uhIflCi3PRDyB6V6KCzj5ec6sygHJEzpOFqBe?=
 =?iso-8859-1?Q?BcHUb3fF2sabMU1arEbIuMEafQGW0S+1jfsMhbAjYh1xvkg9zzy+xtGrGx?=
 =?iso-8859-1?Q?8dN6cm+eppfpWn0J2WiVdBdv2kT9pHW8B7UpKZrBpjozQe0RTG9qT0mnqb?=
 =?iso-8859-1?Q?a13tSa0RT90PNchhVhx6u2rLBm8GK3P8gUUsIW9NHD5Pgy0GxUrFQz4SAp?=
 =?iso-8859-1?Q?AEJ7p16HwkmW2X6/33NZUtFER/GwgSQhWgvn+4ReBoHhc7BgBspAlXeMTb?=
 =?iso-8859-1?Q?Kdt7NVly5FXbq+PkN+xJWo9oFjgHZexZzvPUp1P0OedhBXOiSqbWLYza7Z?=
 =?iso-8859-1?Q?JoORVxRGdBL+2SQjQvyoYfnyAE8GeDmWh9No2WgLJ+DKRqV7NNKcW8eiYc?=
 =?iso-8859-1?Q?QVdH0OF7RT4Gy41kwYrd8XHEAOknEo8t+b78XWUPccgcmSztfvoutndOvt?=
 =?iso-8859-1?Q?xEzEwPV36rXXGwp+itAl/kl2bQV7O8t9lOtNaMhFPwab3rqmLOTW8I+WAg?=
 =?iso-8859-1?Q?7oePraLXL/lwxeteBHXu8bzB32xwCV9pSIgzTTHsi2ZKPhodSsJiZVGVxT?=
 =?iso-8859-1?Q?3W2tdXWKK6Wr2MQoCec7oaR+ohlAvXd/Z9SEoFwgQj+OwjWYSNRy5yV/So?=
 =?iso-8859-1?Q?4BYUfEAlCySGgWYcGEi1n2X6rG3iLRaJru+KRCuPuChHoP+Hd+X/XPMWMM?=
 =?iso-8859-1?Q?c+Re32XzWGNXTAShGSBXXwf9ioO8jPBdsE1ljLR7Lm2r/ghSnxRaArzCWE?=
 =?iso-8859-1?Q?s/lennTX8hTfUoH0pRbndvF2x/4qIg9IyLTO4glISqc9DJHYk3tQRRKsgy?=
 =?iso-8859-1?Q?yHuo72TBdybzGD6T09E+2anEwW/temi4Xdkw4VpCUW8P9OXCB+IH7NI9nh?=
 =?iso-8859-1?Q?og7HEw2njLKlwSCSNiyQUpcuCJgITYIhXOLbaCZfEdt0Vh1hJUpBNxEAAU?=
 =?iso-8859-1?Q?kU8SPUNDeZSOmFyp/YINUsX5KP/Hs+GP0Ild2XgOdhvY+Y00cHgU3dSIO/?=
 =?iso-8859-1?Q?w8oy88T+S8VOfzYLU2BjHFL8Omoeu8ygb1crSbdK8hsXV9frYm/YPt+SSx?=
 =?iso-8859-1?Q?Ke0gRMYaOwdTjb3y6RtjKXPumOqbfDkQ3qqWbfID9LXOG/Cgwtqj6r7Qpo?=
 =?iso-8859-1?Q?CzJM8LZMDSJ1TeQRnPwOtXIWLLbjRZu3xKImfAvfNjcYhfZe8HFW168zm3?=
 =?iso-8859-1?Q?Pb5Q6a8ekKecLLQGAgRqfRn9R9GJP5VNA3pQenUmAejspzKo/jYa91CEzK?=
 =?iso-8859-1?Q?1SUNyNGAbiKzRyUmUuPm4YUTszARvHIvH1fU+Wd0hc+9ykHvjUkI3kMlxd?=
 =?iso-8859-1?Q?rk/O5QlZQBWGPnLB9ZmohbKnWeK9/gb8IU8r+XgixXSDIcqCt9w5Y35YhQ?=
 =?iso-8859-1?Q?Io74KRGfGPgsW4Rzm2b67v/rVj7cb0quBhy7kQ9r4CnssrY8uwycaDEKP6?=
 =?iso-8859-1?Q?jFpm4Dh2eWxvlH4sgT5ret4hz+JmY5oEiP58jvE5rCRbgI4coxdaAFSOTE?=
 =?iso-8859-1?Q?hCpZoZrmVRres2KJZT0tnT?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?gAaJatiow5IGGetiMclc91g66zeVZQGvB5N0vxuLUeTC2rTz2FtRawNVEv?=
 =?iso-8859-1?Q?5QWuNoWWCj0awjpQFmr8TtwfTb7JzQHufddplchrUc83UcS4I4JALRcIv7?=
 =?iso-8859-1?Q?ASt38nKBmlpZPlJhypEzSmpII9RIUyzM4PO8eeS/bXF/1FCPSyqu7+prVK?=
 =?iso-8859-1?Q?sQs9dN+Qo0fzVJNKQFoUYDjm4NysuK0cbIC3gGsLs0JtB2zoY7pMl6s4aZ?=
 =?iso-8859-1?Q?SpsrsxUeJN8E4uav+A9CwuacZZ2FGagwnjQMY1PFU+UZJ90HjduFZsRdoU?=
 =?iso-8859-1?Q?SYDXP69LezNHrW07WiDJ97BNlkB1nkwYC80zuu+cUd6abR3EeZsoSnFkLY?=
 =?iso-8859-1?Q?ibywCZLv2y9D3WCGsN8Sa/Wz2fZC0DW2QbBfJFg0hBxuOt65lrQUHMluYO?=
 =?iso-8859-1?Q?PVcsFAUNpA5KSMPItbufeusUSvIEHVFSqDnOlNskwcr9sK73L6mOCnPiMT?=
 =?iso-8859-1?Q?5ZaI/Cso2t77h0ABIi7y3rgE4VYAdZWZskwupSdwvhscBOWbmP41n3FNQc?=
 =?iso-8859-1?Q?FjEHL0oxLrJ7BkRv5kD90YCXXY72gO2IluVfet57IiAu0fsT3q9T3XJgt2?=
 =?iso-8859-1?Q?NTCujUALH/1TNJL36agiciJf7WEUGL/RFfBXkA6PuW4tvJ2mwskrjLzuHa?=
 =?iso-8859-1?Q?/Yap01pWHuWvlypSFRgBaKmtnUh0KYTa57KiNUIyIJGpu2uNcuy/20AI3k?=
 =?iso-8859-1?Q?AusmQlEYcir+LsI73jbvbGtQksoxj+/nGBdawYMT4MM1MqGZ2OStuNlv/g?=
 =?iso-8859-1?Q?Q1ybcWj9fuKbz7fzWmZ2GEoJQNTB5w/52bl75hlWZZx6yP5K8BuyBKDuUw?=
 =?iso-8859-1?Q?gJfQ7JkJDK53cS9swh4D2thu+8ha/tD1o05GvZ7Yha8D94KrZQJMfapGY1?=
 =?iso-8859-1?Q?qK8kloksmWL/MkrKUiosltyV6pjoMyO6GS8mt4Ykc+7XBroKLuicx13Gwx?=
 =?iso-8859-1?Q?PHt+4VqeUR9hRnOKWieirs+56JlAWkCFmdVNxB6mviHfZI/LyfUgiN88qM?=
 =?iso-8859-1?Q?sn866Rxn/W8fAAg3peN8ILfTcozvwm5E1/sRnhKB7a+oX1dR68Ke6Wi80r?=
 =?iso-8859-1?Q?kcm4W15hWk6Yh5yWiz0Wvo5pu+/DZ43Zv0uTezllI4dbNlKoff9c2/gEJw?=
 =?iso-8859-1?Q?wKdY1FEyVmmHzNgb2RQ06GyOxEaVx0Je3669bRlyupg9Wr7jxsvUWxCaWf?=
 =?iso-8859-1?Q?RlT8LaM5rVn873a9zvfXiy8eOQIldpiX6dUEbs8zvKV5GfOM6pk/3aEe5A?=
 =?iso-8859-1?Q?tNu1FqAxfNQonjXsIYb/GOKDns4GBS06mGTQpTgSpzkihuj5VyxOXzdZ5H?=
 =?iso-8859-1?Q?l9QGjF1xGrj3qh2owWXOaNMBITojSG28u6CHgwn17h0yvZTfgdqQB/8btV?=
 =?iso-8859-1?Q?F+CZg4IZbuXuM6IAb1Y4Qz6APToBHFD1+4CitcYeEqUwJEPjFDrWziNqc2?=
 =?iso-8859-1?Q?RsIi5GwSbzFSphf0NrkAEiJG5aWQKHhGitr98C511HD5ciSChl77wY2Ktd?=
 =?iso-8859-1?Q?NKr6jMZwDSJRizoPTJfYbD7MsjXSihXpKMonfzh45O3SPorP4F0B9u8XGd?=
 =?iso-8859-1?Q?+oEI8DrlDryQMnaeSBzP+IWxH1Ht1kzNwBogCC25jKpBHou0UYKJRYiv3j?=
 =?iso-8859-1?Q?uScs64LU1WMNnuj/ieoyE3DqIbJaWwMj3b7h7RyqtBFbjHaRX5KKVtPg?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 127ef7c7-b9dc-4932-2c19-08de1b231c2e
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2025 21:51:14.6072 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8f+ONHKh6SwqaUB+DCsZ0ZVoY+4Zez9Rb6nYuWHZPkAMiEGglaZatbadDKeFSeCN2H6q6c2qU35ZBAtFxjeND8X8xnZlAMZYJi8cT65m5QY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8380
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

On Mon, Nov 03, 2025 at 02:18:07PM -0300, Gustavo Sousa wrote:
> From: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
> 
> Starting with Xe3p_LPD, we get two new registers and some bits in
> existing registers that expose hardware state information at the time of
> underrun notification that can be relevant to debugging.
> 
> Add the necessary logic in the driver to print the available debug
> information when an underrun happens.
> 
> Note that the register FBC_DEBUG_STATUS also got a bit to indicate that
> the respective FBC was decompressing when the underrun happened, but we
> leave that one to be handled in an upcoming change.
> 
> v2:
>   - Use seq_buf to generate planes string. (Jani)
>   - Move definition of FBC_DEBUG_STATUS to intel_fbc_regs.h. (Ville)
>   - Change logic for processing UNDERRUN_DBG1 to use loops and move it
>     to a separate function. (Gustavo)
>   - Always print underrun error message, even if there wouldn't be any
>     debug info associated to the underrun. (Gustavo)
> v3:
>   - Use REG_FIELD_GET() for fields of UNDERRUN_DBG1. (Matt)
>   - Move handling of FBC_DEBUG_STATUS to a separate patch that adds
>     extra logic to match FBCs by pipe. (Gustavo)
> 
> Bspec: 69111, 69561, 74411, 74412
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
> Co-developed-by: Gustavo Sousa <gustavo.sousa@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_regs.h  | 20 ++++++
>  drivers/gpu/drm/i915/display/intel_fifo_underrun.c | 72 ++++++++++++++++++++++
>  2 files changed, 92 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
> index 9d71e26a4fa2..c9f8b90faa42 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> @@ -882,6 +882,25 @@
>  #define   PIPE_MISC2_FLIP_INFO_PLANE_SEL_MASK		REG_GENMASK(2, 0) /* tgl+ */
>  #define   PIPE_MISC2_FLIP_INFO_PLANE_SEL(plane_id)	REG_FIELD_PREP(PIPE_MISC2_FLIP_INFO_PLANE_SEL_MASK, (plane_id))
>  
> +#define _UNDERRUN_DBG1_A				0x70064
> +#define _UNDERRUN_DBG1_B				0x71064
> +#define UNDERRUN_DBG1(pipe)				_MMIO_PIPE(pipe, \
> +								   _UNDERRUN_DBG1_A, \
> +								   _UNDERRUN_DBG1_B)
> +#define   UNDERRUN_DBUF_BLOCK_NOT_VALID_MASK		REG_GENMASK(29, 24)
> +#define   UNDERRUN_DDB_EMPTY_MASK			REG_GENMASK(21, 16)
> +#define   UNDERRUN_DBUF_NOT_FILLED_MASK			REG_GENMASK(13, 8)
> +#define   UNDERRUN_BELOW_WM0_MASK			REG_GENMASK(5, 0)
> +
> +#define _UNDERRUN_DBG2_A				0x70068
> +#define _UNDERRUN_DBG2_B				0x71068
> +#define UNDERRUN_DBG2(pipe)				_MMIO_PIPE(pipe, \
> +								   _UNDERRUN_DBG2_A, \
> +								   _UNDERRUN_DBG2_B)
> +#define   UNDERRUN_FRAME_LINE_COUNTERS_FROZEN		REG_BIT(31)
> +#define   UNDERRUN_PIPE_FRAME_COUNT_MASK		REG_GENMASK(30, 20)
> +#define   UNDERRUN_LINE_COUNT_MASK			REG_GENMASK(19, 0)
> +
>  #define DPINVGTT				_MMIO(VLV_DISPLAY_BASE + 0x7002c) /* VLV/CHV only */
>  #define   DPINVGTT_EN_MASK_CHV				REG_GENMASK(27, 16)
>  #define   DPINVGTT_EN_MASK_VLV				REG_GENMASK(23, 16)
> @@ -1416,6 +1435,7 @@
>  
>  #define GEN12_DCPR_STATUS_1				_MMIO(0x46440)
>  #define  XELPDP_PMDEMAND_INFLIGHT_STATUS		REG_BIT(26)
> +#define  XE3P_UNDERRUN_PKGC				REG_BIT(21)
>  
>  #define FUSE_STRAP		_MMIO(0x42014)
>  #define   ILK_INTERNAL_GRAPHICS_DISABLE	REG_BIT(31)
> diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> index c2ce8461ac9e..1da90c99f93f 100644
> --- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> +++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> @@ -25,6 +25,8 @@
>   *
>   */
>  
> +#include <linux/seq_buf.h>
> +
>  #include <drm/drm_print.h>
>  
>  #include "i915_reg.h"
> @@ -352,6 +354,73 @@ bool intel_set_pch_fifo_underrun_reporting(struct intel_display *display,
>  	return old;
>  }
>  
> +#define UNDERRUN_DBG1_NUM_PLANES 6
> +
> +static void process_underrun_dbg1(struct intel_display *display,
> +				  enum pipe pipe)
> +{
> +	u32 val = intel_de_read(display, UNDERRUN_DBG1(pipe));
> +	struct {
> +		u32 plane_mask;
> +		const char *info;
> +	} masks[] = {
> +		{ REG_FIELD_GET(UNDERRUN_DBUF_BLOCK_NOT_VALID_MASK, val), "DBUF block not valid" },
> +		{ REG_FIELD_GET(UNDERRUN_DDB_EMPTY_MASK, val), "DDB empty" },
> +		{ REG_FIELD_GET(UNDERRUN_DBUF_NOT_FILLED_MASK, val), "DBUF not completely filled" },
> +		{ REG_FIELD_GET(UNDERRUN_BELOW_WM0_MASK, val), "DBUF below WM0" },
> +	};
> +	DECLARE_SEQ_BUF(planes_desc, 32);
> +
> +	intel_de_write(display, UNDERRUN_DBG1(pipe), val);
> +
> +	for (int i = 0; i < ARRAY_SIZE(masks); i++) {
> +		if (!masks[i].plane_mask)
> +			continue;
> +
> +		seq_buf_clear(&planes_desc);
> +
> +		for (int j = 0; j < UNDERRUN_DBG1_NUM_PLANES; j++) {
> +			if (!(masks[i].plane_mask & REG_BIT(j)))
> +				continue;
> +
> +			if (j == 0)
> +				seq_buf_puts(&planes_desc, "[C]");
> +			else
> +				seq_buf_printf(&planes_desc, "[%d]", j);
> +		}
> +
> +		drm_err(display->drm,
> +			"Pipe %c FIFO underrun info: %s on planes: %s\n",
> +			pipe_name(pipe), masks[i].info, seq_buf_str(&planes_desc));
> +
> +		drm_WARN_ON(display->drm, seq_buf_has_overflowed(&planes_desc));
> +	}
> +}
> +
> +static void xe3p_lpd_log_underrun(struct intel_display *display,
> +				  enum pipe pipe)
> +{
> +	u32 val;
> +
> +	process_underrun_dbg1(display, pipe);
> +
> +	val = intel_de_read(display, UNDERRUN_DBG2(pipe));
> +	if (val & UNDERRUN_FRAME_LINE_COUNTERS_FROZEN) {
> +		intel_de_write(display, UNDERRUN_DBG2(pipe), UNDERRUN_FRAME_LINE_COUNTERS_FROZEN);
> +		drm_err(display->drm, "Pipe %c FIFO underrun info: Frame count: %u, Line count: %u\n",
> +			pipe_name(pipe),
> +			REG_FIELD_GET(UNDERRUN_PIPE_FRAME_COUNT_MASK, val),
> +			REG_FIELD_GET(UNDERRUN_LINE_COUNT_MASK, val));
> +	}
> +
> +	val = intel_de_read(display, GEN12_DCPR_STATUS_1);
> +	if (val & XE3P_UNDERRUN_PKGC) {
> +		intel_de_write(display, GEN12_DCPR_STATUS_1, XE3P_UNDERRUN_PKGC);
> +		drm_err(display->drm, "Pipe %c FIFO underrun info: Pkgc blocking memory\n",
> +			pipe_name(pipe));

This is a global (not per-pipe) register here.  So if memory is
unavailable due to a package C-state, then presumably all of our active
pipes are going to be failing to fetch data (and hitting underruns)
because of this.  If we clear the sticky bit here, then the message may
only appear once.  I'd remove the "Pipe %c" prefix here so that we're
not blaming one specific pipe.


Matt

> +	}
> +}
> +
>  /**
>   * intel_cpu_fifo_underrun_irq_handler - handle CPU fifo underrun interrupt
>   * @display: display device instance
> @@ -379,6 +448,9 @@ void intel_cpu_fifo_underrun_irq_handler(struct intel_display *display,
>  		trace_intel_cpu_fifo_underrun(display, pipe);
>  
>  		drm_err(display->drm, "CPU pipe %c FIFO underrun\n", pipe_name(pipe));
> +
> +		if (DISPLAY_VER(display) >= 35)
> +			xe3p_lpd_log_underrun(display, pipe);
>  	}
>  
>  	intel_fbc_handle_fifo_underrun_irq(display);
> 
> -- 
> 2.51.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
