Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B89E7CD82BF
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Dec 2025 06:36:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D24C910E047;
	Tue, 23 Dec 2025 05:36:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B5Zfzs5z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBA6310E047;
 Tue, 23 Dec 2025 05:36:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766468170; x=1798004170;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yW7YzOkKetEgFwaTvNHu1/KwW12LZmTv58YS+7fCfEE=;
 b=B5Zfzs5zK3/SljU2KbCzPxQJJqbnX39qCOO2uMrWBUgmqLwyWrVsgERe
 tAZR2/lnlkIiDIMSYkzLY0qlzVB7OmqWGGyGwgVBvKzeSahiFeKyIA1RG
 Zb6jTdFu1/grSVYe2hKKFrWL3UhOkZCKyqtfG7lMdyXMjKeChAaYsrQIS
 MBBSWakXnDdSCfl01XAE/diqdYR3BLI40r6VpioD+57moUcAGgNg5nKv3
 OXfPXX2hUtk0j2eTUCR4FyD+2bXdHOjV+X6+SShtFUMpe/TruExXkKrrP
 L9Cu1UdzX3gLcg/6o+gOz7ptGWsib6LVTApPJFDs2X5p8a/PLhyCzyO0z g==;
X-CSE-ConnectionGUID: nQeH0BccQbOBmy48mwGcOQ==
X-CSE-MsgGUID: GnTCbBanQd+ZJ7+x/g1WpA==
X-IronPort-AV: E=McAfee;i="6800,10657,11650"; a="79436633"
X-IronPort-AV: E=Sophos;i="6.21,170,1763452800"; d="scan'208";a="79436633"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 21:36:09 -0800
X-CSE-ConnectionGUID: xhv+vbuZQUicOJFFMQL8Gw==
X-CSE-MsgGUID: kgcZsaE4RyuXPSCmNsr8HA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,170,1763452800"; d="scan'208";a="223185706"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 21:36:09 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 22 Dec 2025 21:36:08 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 22 Dec 2025 21:36:08 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.10) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 22 Dec 2025 21:36:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qrkyW2sarqSmIN4LETUE+pdwotKbfP5uiM11AniJjsY5gxJ1Gn/zU+4qXo9Eh9sueAcwFMYNTYTzkZEdm0Wff1iaGJW+kNal1G0zrzRuSovx/adLkQwEUkvFoBsya5N0MT5llmhh03s90YQ72aZdNqKjzaWp/MZGKidLX9g9mS+1AyqlnWGdNmWPzfS0MWVB+ylm0MRg5l6Ied9lPZoJaN17cbjN+auS/YZOefgijB3YE2GbtZEY00acsC2PXf0vWL6RmTqcxP9ke9tk5JNJpS0ZRr5r3zlYe0/BqtnUv1ntnl6HPwEi4fubvEcjZC6uXs+8BucvxzccbhTav6GfNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=syohM/RHXiB05ZuxqRrdlC0ZQh3l/YeO94QWRdbzahA=;
 b=LQhzNrcidFTGVlFZ4WAFis1bOPUc2dIO+1hXJ5kqc8MMisiln/YhyiwxqUoEGur0iMnSdThH/YOoK9JVgpUK5oS1SBcDJGOAMnomraDZvbOruL1W94SDaqbRbqfGNo/XjZR1gHLNJQYNC6yX+uroYnGBmAk/iFdbvJD4tcVemr3R1w3BGbVqKLgQH6rpPmfoJmbWUc+HcyMVHddTdenU2OrdpeH9nx/JeRt+lALm9+a8sgmBUD3hgw4YJhfhGzxB5I69wWDauLL4koL0DqLM1Tym/VtmfIDbRoCHhqTls0NALqgrkfs8vew+Z0ZQXb6JGY2SXi0HE/Yaa1nkppcsfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA2PR11MB5020.namprd11.prod.outlook.com (2603:10b6:806:11f::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.11; Tue, 23 Dec
 2025 05:36:07 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9434.009; Tue, 23 Dec 2025
 05:36:06 +0000
Message-ID: <7ee37384-d461-4732-ba8a-5429af979802@intel.com>
Date: Tue, 23 Dec 2025 11:05:59 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/vdsc: Account for DSC slice overhead in
 intel_vdsc_min_cdclk()
To: <imre.deak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20251222044443.2443411-1-ankit.k.nautiyal@intel.com>
 <aUk_5GZQrDIDN8fK@ideak-desk>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aUk_5GZQrDIDN8fK@ideak-desk>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA1P287CA0012.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:35::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA2PR11MB5020:EE_
X-MS-Office365-Filtering-Correlation-Id: 42f7c0ef-8bdd-4ab0-32d8-08de41e52b6d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SEZtQzdWbSswODYxalJGZXd5bzhqV2hEdVR1TURVd0w4WVYvRkIvSnBZRS9L?=
 =?utf-8?B?UmhTYUlKQ3h4dmhyeFFzbDhjWTcrL2dyb2d6WnZZRXRJTG5tU2JqOTdpOWg1?=
 =?utf-8?B?dEJ0NlFCNm41WXNkeENhbUdoaWkrWktiVjJIWTUxS2prT04yVG1qQnY4V1FK?=
 =?utf-8?B?YXByZEVqWVNwdy93U01Pdm00SWtjUDQ4MGdLa0NFQnVMVkwzRXFJdWlod1FJ?=
 =?utf-8?B?ZysybnUrU1p5QUQ5UkhkbkoyYWo1bUxOZnI5WnMyTlNJZzhWZFRRbldBRHpL?=
 =?utf-8?B?aEtweDExbjJQeG0rMU9wL2FwM1pXTDBBekg1NlFmWlBuYnBUaFlyQnZHMW9v?=
 =?utf-8?B?blFoVXQrSktqSlM2QzErd1ErcVRoYVJwWkgzVjNvalkwVENpWENWZmhid0VQ?=
 =?utf-8?B?OGREL3lzV3QyTFQyelhQRnVGemtSeTVHUDVqdkwyWWZmOTlkVTQ1RWtOYTJn?=
 =?utf-8?B?eldYMUJvQ3diWHlPN01NcmNTdkFuT1FxSFZUcGE3SjBiZUp1cnVTVTFWQXVk?=
 =?utf-8?B?NS96RlA4ek1ubWF3YndGWSt0RUNSTGtrQy8vM2dBaHVLMWIvN0htWWxCZ0xu?=
 =?utf-8?B?UkV3V05wMXo0YmlVL3lVeER6QjQzN1BjUkdUZ0tzRjVMMFdXZW8zaFdpUzFi?=
 =?utf-8?B?Y2JlcXFObVBtQ2toVS95aUZYOXRqZVc0akppb2FCZDBjaWJVOHNrZzlhRGc5?=
 =?utf-8?B?bTh1anpNVnZ6Q1lnY0ZXMEFKbUtsSUZ3SkpmUTJuYU4wakg1cjNwbWJxZVVj?=
 =?utf-8?B?L0VMMFl3cHR0VGhHSlExdTJBMEM3RFhkMldSd3VSWjhaUlpoNjZXcTk2VFZM?=
 =?utf-8?B?RWxDRERhUDRuZHhRQTk1Y1hXUGd0SG5tNCs3bjlreHZHYjI5THpBTGtKbE11?=
 =?utf-8?B?QUpPK2RZRmFqLzlXY0NoMzNCUUxSMUpmM2ZjenZtK04wRHZUa0FUSksvZ0xK?=
 =?utf-8?B?NFdYUmUxOS9lTHZXUTBGVjVBSXIxOWtEZjhKRWNCQlNMT3NzOWZqUG5kbFpu?=
 =?utf-8?B?UXc4NS9UcU1CUVdtTlFaNjc2RVpXallET0wrNStPSFhIaE9aT3FzQjdIM1Ns?=
 =?utf-8?B?dlNWd25yNEJYS0d0bVp4VEg3T2c3dk53N2FzTXg1c1JTdzNmc0IxSXh1YTNC?=
 =?utf-8?B?bWpBdVRoMjVReW1qdUI5ZUFBcWROUlY1Ui82MVc1cDJiKyszUmFVUzlSQnpB?=
 =?utf-8?B?ZnQvcFBLV3E0Tis3ajFhVG9GSTlNZjd5alhoTHZrK1V3SHRYcU1tMEtBT0Z4?=
 =?utf-8?B?cUJ4OUs5bnBxSEg0RHc0SFpZN0R6enpPQTRpMExoVHIwenplT0d5MDFEaFQ1?=
 =?utf-8?B?ZWYxN0wvMFVPMEc0UmphaGQxaUZid2tiK1VwSDBMbm54bnJnVzZRb1VKajFQ?=
 =?utf-8?B?NHRCckdONXIzWkJDbWh4V3VzS2p6L0x4NWttR1ZXQTh1dERIVG5vbHhwWVVX?=
 =?utf-8?B?K0RuSzJlSS9valVTTndOMU40U3Uxa2RSL3hyK25ZK1QxR2VDR2JjdUFSbnNp?=
 =?utf-8?B?UnNEZ29pUVhrSXRXaUVvUzcwczRORW4rTHpjejR1RzdabldWQldvZ2Nka2ti?=
 =?utf-8?B?eFVjQWxQN3Q4d0ZPSCtoSEdudXBTZENNWXdwWDF4T0xqd2N5V3dULzBBZXNV?=
 =?utf-8?B?NlFuZGJsV1ZNWHlRZ1BPSExPdEJIeWpXWHFqUmpHRGY4L3N3RDluNkVaY3BZ?=
 =?utf-8?B?NDNpbXY4OGtzVURIdVVkbXhDcjF3YW9nZlBkNmtFNVJkQjVadGpZbngxRDJW?=
 =?utf-8?B?RGNOSHptYjNSdG95Y0ZmckdmMVdhUkVLTlhLMU9hV1pKOU5LM0Q5TVlpazdU?=
 =?utf-8?B?amhyaThqRXV2NFloOGxvWllpbmVqNEIrR1hodE5NUUhqaWZPR29XRFY5aFhu?=
 =?utf-8?B?Y0hRdFZydksyNnNDeFNnbnRsOVluQW5ESzU2WERPQXo4eFdoVUQxbnhScmgy?=
 =?utf-8?Q?kfwCTX9hF6UFsU3hfTFy0Ty7jbKRw7gk?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Qyt4a0tGdHJYK0p3VW9tcjlieG9POXlPdHRqRUVESlZXSzZpWWt3c3JyWXk1?=
 =?utf-8?B?RU1jRU1SYUVFQ3h2R1JBSEJqRm5RZGdPa2pyRkJGT0xqa0x1TnNNaFpHWWpV?=
 =?utf-8?B?T2tkbW12UnFkcjhDcXpQZ3JsbDB2cWpaWElVdTRSbmlKQUptenZldlJmUHF2?=
 =?utf-8?B?eDcwQkU2U1hBODFGVGh1TlczYU5JN01uSkM1Yzh2bUpxeVRwd2pTdjFjZjRM?=
 =?utf-8?B?QmNmckppaGg3a1E1NnRraVBuOVBGblgweCtFUHMvZVpRSk8yaGViZ0hVZ2JL?=
 =?utf-8?B?c3V4Z1J4K3lla2pVV0dEMm04UlFCdURETW1ORUtMcms3eTVXNCtnbG84dG5s?=
 =?utf-8?B?OFJmR3ZxQk5mZmlDSTFEZzh1ZUQxWDZJTm1teVhKQnJmbFZRTk9yYXZuTm45?=
 =?utf-8?B?UjB6cW1tQThHU2t4dTNaa3YxRGlOemtYTWNwZUxyOUtjdExzMkdLUzhhcWov?=
 =?utf-8?B?V3diK3VPTzEwU1VWZlB0S2xxS045azY0V2NUQmNKZWRHZWNHbjVvbFRCSVFv?=
 =?utf-8?B?RU9WQmE0OWFjVHp1dHA5L0ZMWGhhU004MkFwaVh2WXJaZHNZcHMvYnRvV3h3?=
 =?utf-8?B?TFRYZXZrQjVTZVBMa21USStMdnBYV3QvcDFYWXZsSU1VQjF5NElFaTlzVGth?=
 =?utf-8?B?V2lpM1F2cFVqNFVWU3p3ZFJlWGZsQjNCU2VvTEMzek9MMEgyVUdCM0ZJT3hE?=
 =?utf-8?B?NkYwMFgvcktuUXdCVTFkMzhPZ3dicnRXdW1ib3V2NlhHRmRyVUJzV2tTZUUw?=
 =?utf-8?B?dHRXWkdtVHJ1K0c3WWxWUXV1K0IxQlg5Q3BmWWY0WHJTakcrMkZCTmNOSnE3?=
 =?utf-8?B?SGVTNkU3MlQzZW9XK2dZUlNUMElTUkhmYWRKWEl5b25iTUl5cWcxWkh1bXNn?=
 =?utf-8?B?LzN3dzNsK3VyTEpWMnVMQ1dxR3IwOVNlV2hMRHhHU3ppUXFhSHU1SXFKSmYr?=
 =?utf-8?B?MXlwWjJiZGhxcEYvVU9JZTZDMFhxQklOOVFGKzQzYWxPdWJCVHdOL1BCQ2hj?=
 =?utf-8?B?cGJLZ29CcjVTRXlIcTNjUzFWWi9FSUgyWnQ5Wk1wc3FhR1I5TXRQK0JjWjlx?=
 =?utf-8?B?S2RuWU9GVXExbVJ0VDBhTEc3a0E2UTRkQkIvSS91QXFrRk1nSmtWZHV1QXEy?=
 =?utf-8?B?YTJibzZOWXE1UGlLcGE3d2UzbVVsY3czYUc1QVJBNHdRWWgzd2RXQ1B3Vzl2?=
 =?utf-8?B?enZOSWJjVEVmWms1cnpLZE00NWxUeU11WUk5V0FZa1diRVp1RUhXL09jL2tY?=
 =?utf-8?B?U2QwZkRXZ2djYmVjT3ZHanRoelpKSVRPOUNGdmlHaGpJQVkxOVl1VksyK2Er?=
 =?utf-8?B?NFdhbW5UaHNJbHVYZDNyRmoybm5ERzAzeXluU2p1VWxHMDNGQmxHaUwvK1Mz?=
 =?utf-8?B?VXhwYTBGZVRianpBd2lsOXBQYWF1OFBhNVR1bDZnZ21EbFpGK015RnhRMW1D?=
 =?utf-8?B?KzlLMGNXYTJEUGE0dGZoNk1PeGtaVXFveXdZOUdOY3J2UFRJY2pUc0JnUCtP?=
 =?utf-8?B?dkJNRkpyeUNXUVVzaVQ1UU4yZE1oM0hQd25XZVlXU1BWUjZDaDNWcm1rbjNr?=
 =?utf-8?B?ampUZDVzT25wbkhIT3FDWFhmaDM2elNWRnFZZFJPWUM4WGJmMmRsSmVKaVJZ?=
 =?utf-8?B?ZDl5TnJZdDkxZ3FLYlRpZVJNSlNMSkFIVGxYNGtxWCtkb3hMQ1JqVXJzUUJY?=
 =?utf-8?B?eFBiQUJrSEVaTzlmY0dmWTAzVjd6aWVvWjhVdkFBa1dNNDgyQVpEYXNFZENj?=
 =?utf-8?B?MDg4dVloNWRodWlsYkROQkc4VzhOc2dXbDNLSFBUTlptVnlFcEpVMHpROTJE?=
 =?utf-8?B?dDczZjVrcTV6dTNlQmpuMEdPaDNRKzMxSFU4Yk1DbWVTMzhFYnZuMFFYaGhi?=
 =?utf-8?B?djBTV2ZqaDNXQ2VoWm9MRThNYlBleW9KMGU2UHNuZWt0WjR6Lzc0bmxFQ29t?=
 =?utf-8?B?NEZHYTRGUDVWR0hpWFNONTd1MEZEQ3FXNjIwbGFmTkpId3F3V0xYQ2lHUWQ0?=
 =?utf-8?B?YzdzMUF0TzdERk5XVmhwb2wwbnlmWnQrdnhYWm9lejZlYmtmWEhSUlk4Y1NF?=
 =?utf-8?B?eHp6SUgrU0lWa1pIUWMvQ1VKWUhMV1RLNHFzQjFrajQ1bTFHWmhIOFo0RE91?=
 =?utf-8?B?VHFySmlvOVk4Z2syMXRuMEtTaVY2Z013dVYrZ3dNNmoyTWJsdVJhbGh6eHlv?=
 =?utf-8?B?Tys1dUhDOUs5bzVxeXp4TmpreURYZ2VQbmVjdmYxSVR6ZW1YVGdWMWhlVFZm?=
 =?utf-8?B?TG9oc1FYV1lnaENsc0VtcE9LQk9Dd0VtWkpKWGtUa0tvRFFWeFRmTlRLL3gy?=
 =?utf-8?B?bEFCZEpMdTJDRXZXV1V1QVE0MVBCN3pLNTVZQmpWZzZwVkRuRXUrVDJPZklq?=
 =?utf-8?Q?DvG6xUN7YJ8BEz2U=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 42f7c0ef-8bdd-4ab0-32d8-08de41e52b6d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Dec 2025 05:36:06.9118 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pjJGvO388yuB0ZX99Zi5Yp3uQfFNIvaE59vVNgzrpDMkTOXGi1doTqH2n10ta0Vp/a78WM5WAyx41eDnZbqoZumaswBTx9uMwrGGn70ev9E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5020
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


On 12/22/2025 6:26 PM, Imre Deak wrote:
> On Mon, Dec 22, 2025 at 10:14:43AM +0530, Ankit Nautiyal wrote:
>> When DSC is enabled on a pipe, the pipe pixel rate input to the
>> CDCLK frequency and pipe joining calculation needs an adjustment to
>> account for compression overhead "bubbles" added at each horizontal
>> slice boundary.
>>
>> Account for this overhead while computing min cdclk required for DSC.
>>
>> v2: Get rid of the scaling factor and return unchanged pixel-rate
>> instead of 0.
>>
>> Bspec:68912
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_vdsc.c | 45 +++++++++++++++++++++--
>>   1 file changed, 41 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
>> index ad5fe841e4b3..b91cd009be9d 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
>> @@ -1050,15 +1050,52 @@ void intel_vdsc_state_dump(struct drm_printer *p, int indent,
>>   	drm_dsc_dump_config(p, indent, &crtc_state->dsc.config);
>>   }
>>   
>> +static
>> +int intel_dsc_get_pixel_rate_with_dsc_bubbles(int pixel_rate, int htotal,
>> +					      int dsc_horizontal_slices)
>> +{
>> +	int dsc_slice_bubbles;
>> +	u64 num;
>> +
>> +	if (!htotal)
> Should this also warn as !slice_width below?

Yeah can add add warn here..


>
>> +		return pixel_rate;
>> +
>> +	dsc_slice_bubbles = 14 * dsc_horizontal_slices;
>> +	num = (u64)pixel_rate * (u64)(htotal + dsc_slice_bubbles);
> Better to use mul_u32_u32() to avoid the casts and 64-bit x 64-bit
> multiplication.


Ok sure will use mul_u32_u32 to avoid casts here.


>> +
>> +	return (int)DIV_ROUND_UP_ULL(num, (u64)htotal);
> Both casts are ensured by the compiler already, so no need for doing
> them explicitly.


Got it.

>
>> +}
>> +
>> +static
>> +int pixel_rate_with_dsc_bubbles(const struct intel_crtc_state *crtc_state, int pixel_rate)
>> +{
>> +	struct intel_display *display = to_intel_display(crtc_state);
>> +	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>> +	const struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
>> +	int dsc_horizontal_slices;
>> +
>> +	if (drm_WARN_ON(display->drm, !vdsc_cfg->slice_width))
>> +		return pixel_rate;
>> +
>> +	dsc_horizontal_slices = vdsc_cfg->pic_width / vdsc_cfg->slice_width;
> The above looks to be the same as crtc_state->dsc.slice_count, aka the
> slices per scanline, could you use that instead?

Apparently we are not filling dsc.slice_count. We are filling 
dsc.slice_width and the pic_width.

This parameter seems to be unused, perhaps can be dropped?


Regards,

Ankit


>
>> +
>> +	return intel_dsc_get_pixel_rate_with_dsc_bubbles(pixel_rate,
>> +							 adjusted_mode->crtc_htotal,
>> +							 dsc_horizontal_slices);
>> +}
>> +
>>   int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state)
>>   {
>>   	struct intel_display *display = to_intel_display(crtc_state);
>>   	int num_vdsc_instances = intel_dsc_get_num_vdsc_instances(crtc_state);
>> +	int pixel_rate;
>>   	int min_cdclk;
>>   
>>   	if (!crtc_state->dsc.compression_enable)
>>   		return 0;
>>   
>> +	pixel_rate = pixel_rate_with_dsc_bubbles(crtc_state, crtc_state->pixel_rate);
>> +
>>   	/*
>>   	 * When we decide to use only one VDSC engine, since
>>   	 * each VDSC operates with 1 ppc throughput, pixel clock
>> @@ -1066,7 +1103,7 @@ int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state)
>>   	 * If there 2 VDSC engines, then pixel clock can't be higher than
>>   	 * VDSC clock(cdclk) * 2 and so on.
>>   	 */
>> -	min_cdclk = DIV_ROUND_UP(crtc_state->pixel_rate, num_vdsc_instances);
>> +	min_cdclk = DIV_ROUND_UP(pixel_rate, num_vdsc_instances);
>>   
>>   	if (crtc_state->joiner_pipes) {
>>   		int pixel_clock = intel_dp_mode_to_fec_clock(crtc_state->hw.adjusted_mode.clock);
>> @@ -1084,9 +1121,9 @@ int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state)
>>   		 * => CDCLK >= compressed_bpp * Pixel clock  / 2 * Bigjoiner Interface bits
>>   		 */
>>   		int bigjoiner_interface_bits = DISPLAY_VER(display) >= 14 ? 36 : 24;
>> -		int min_cdclk_bj =
>> -			(fxp_q4_to_int_roundup(crtc_state->dsc.compressed_bpp_x16) *
>> -			 pixel_clock) / (2 * bigjoiner_interface_bits);
>> +		int adjusted_pixel_rate = pixel_rate_with_dsc_bubbles(crtc_state, pixel_clock);
>> +		int min_cdclk_bj = (fxp_q4_to_int_roundup(crtc_state->dsc.compressed_bpp_x16) *
>> +				   adjusted_pixel_rate) / (2 * bigjoiner_interface_bits);
>>   
>>   		min_cdclk = max(min_cdclk, min_cdclk_bj);
>>   	}
>> -- 
>> 2.45.2
>>
