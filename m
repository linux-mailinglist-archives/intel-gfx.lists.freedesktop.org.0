Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B41D9686CA
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2024 13:55:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24F4510E2BF;
	Mon,  2 Sep 2024 11:55:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="daHw8Qec";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63DEE10E2BF
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Sep 2024 11:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725278106; x=1756814106;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ahKlQUcbMrDrqOfklZ5EYogSYOtBn9/U/dojXNgHGOA=;
 b=daHw8QecwUnsbDXtphDTGQwtL5HxcZfSupYWl05Z1G00UUhrII/HQGU/
 NzGtyImNxfZEeeTKfE9TSf3edOiDcEr4mptDYowSS/PyDL2ZRG0EqZFye
 dj+emeg08/0GURX5pfSVclWLeck+oECB5H25Gasqpm4x5Cks3TJM4xBsb
 zcUdl5jvImSwPVpm6koXxW/LxTGK1h2aGcGX8te44G77HFDJs8wH6vxYw
 Cor1j/bLczWBYdVXdn+EjKrIYCg4zFomOEEX7JVmlJnANUdhYs2t7vco8
 5dQ4BLBMpxqyyB78A1hPXoOP3YYaAtyn4Yz+hK604lkQK8TSebGGASn+l A==;
X-CSE-ConnectionGUID: Vk+Q+R58ThqV8V/yUNnslQ==
X-CSE-MsgGUID: Eo6zdDz7TfGvSG7NNBo5BQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11182"; a="27642947"
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="27642947"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 04:50:55 -0700
X-CSE-ConnectionGUID: zgH2Y6oSQVOn2noWNgMswQ==
X-CSE-MsgGUID: JoL3FpD3Q7af916y1LGCsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="65307007"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Sep 2024 04:50:54 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 2 Sep 2024 04:50:53 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 2 Sep 2024 04:50:52 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 2 Sep 2024 04:50:52 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.47) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 2 Sep 2024 04:50:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NIr9C6SnML25NmY+sV9XfAWeyjrMzrF12kAB/JwXOL4Ix71DMXo0h+vhHltkPekNGPrnpsNJV1dWiS3SMViQkrvIZxdofB9zv/J/glefr9Ehnap8IG6iodVl1MBBIMa6dlWP9kVmMBRrcwcoKwuoRmiCNXIsLeW2W1kk+XJR1v1No/Jd13GcUL5HqTLV2lMRmrIQx5jUMQnKzzoLQpey3FZ3sEsiNQuqZSwv500/KhlJ1sHyU4Mcahx4jh/KW/+/b69OHjfWR91il9kq4KigZr4ds6jkSKflFlOk9wfouiSlgwc9ip0zOwVAEoAJ4Dfha7Cjm2Xvdrx30mftVg7Yzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aJAwR3BeB27a+u3CR8gZw+Ywy+q10APc0kNepztGYNg=;
 b=leEyzBi01pauI+yPyCv3NRFQ637rNA2zX80PwutXUFOHh3U2kfiFix8kL55OnsM6DVjwB+wv5dSrsgPwCX1Sgo+TSIqzj8Le0ADBUFURu9P8rFFrT742X7qxBzcgLPb7SaFFbT54+8AjLvKOe6lCwEQomQdmS5vuTmU5Z6OLyYPHADFAILDdX+BBy8TMTLkaFWjQVOFPGdB97Pybv58Q0pAPnpuW01ISxJMqw2VdSyN7YVZNyrTsmQM+p0r5p0QArFdTCg+5Z88rEAPOrtsgRVFN57cFAMvXHcW0k5rRN8ib+kVcB/6oCxsFe7SdU0DqrM9LGzVN9WDxDguNzF9FIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA1PR11MB6372.namprd11.prod.outlook.com (2603:10b6:208:3ac::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25; Mon, 2 Sep
 2024 08:36:05 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.7918.024; Mon, 2 Sep 2024
 08:36:05 +0000
Message-ID: <affecbf2-3617-4e2b-b838-5c887a979f23@intel.com>
Date: Mon, 2 Sep 2024 14:05:56 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 2/3] drm/i915/lobf: No need to pass connector-state on
 lobf-compute-config.
To: Animesh Manna <animesh.manna@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <jani.nikula@intel.com>, <ville.syrjala@linux.intel.com>,
 <jouni.hogander@intel.com>, <arun.r.murthy@intel.com>,
 <mitulkumar.ajitkumar.golani@intel.com>
References: <20240708152231.4170265-1-animesh.manna@intel.com>
 <20240708152231.4170265-2-animesh.manna@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240708152231.4170265-2-animesh.manna@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0114.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:11d::12) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA1PR11MB6372:EE_
X-MS-Office365-Filtering-Correlation-Id: f5a3a3fc-9407-40a1-7a68-08dccb2a48ac
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TTNtMkV3ZkVudm9kaFBFWitqeDlVcWRNdWNIeUQxZm9ITk8vcHBsMFJlcnQ2?=
 =?utf-8?B?R1JIU0xkTk9ucjBUL0hFdXhlcWF2bndKL2hld3NidGUvZ3VkWmI4TjhZOGRu?=
 =?utf-8?B?U3d1YUFINjhQaDRTK2xrVU1zMUhjRGorVmRPTVlqODNGQjVYUXVzU1FaNVhh?=
 =?utf-8?B?d0dlL0JjbFJMeHU1QjVhY1MyeWVVREpsdUxRTE9uMkNpK3hpYkFQa2ZPTmZI?=
 =?utf-8?B?SkxHMG1abFhQRGYxc1hlcVhIZm5QMVRUVDlRSUZ3NU85UDZuYlpyUSs0Q0JD?=
 =?utf-8?B?ZVhWOHJ4Mnl4UmJ1RDFvbVIrNGZqMHFlZzJ5UDFZZ0N0UGxHbTdONi9uNkZz?=
 =?utf-8?B?OUprdnFybUc0dmNHRUZrcm03YVRKUDN4bUVjQTFCRVo0YmhndG96elo1NUxr?=
 =?utf-8?B?TVljRG5RSVNNNVJSeDBoanBGUDJwZTNJdXkzUEQyVWswZTlzUmc4azdsZ0N5?=
 =?utf-8?B?dEN2NllnK29tL2I1YzBmTDlyY2ZLbWVQbWpCS0k2TEU4VGxDbDhyWFJFNEdm?=
 =?utf-8?B?a0Q0OWNTOEt1YWJWUkVkUURia2RsWUtxYkZQT3FRN0VWRzF0VGtVMXRUZmdn?=
 =?utf-8?B?NGFtVmc4K1Z0dkZIVnMyVmEzRkdQais0ZERhWG5DeHBrdFVBbCtBRzVmMGE4?=
 =?utf-8?B?OE5vcHcxMzUyWlJ4Wk0yU1ZPNW8vUHFGNWZ2eFFpYVFPS1BrMy81cWdjUE1n?=
 =?utf-8?B?bVNQV1ErSWFUNFZYYmpCYmIzaG5xVlJIRlhqQVNnaENYanJXMUw4b1g3eU8x?=
 =?utf-8?B?WHpkRmZxTTI5TXJNVjNOWGh6QTYzQk9KSVlmdnpjV3g2OEI5Ri92bDdkNk56?=
 =?utf-8?B?UnFDQjdMY3BFc0NQRjZjTmhYVkhEdmFSSTU3SUhwanQxRXhWUHlwWFBmZE1J?=
 =?utf-8?B?VW05K09lUXdBd3MvS1NNT3k5UUVYQjh5WDllMUVwRk5LMHBkdmVNUm44Y3cy?=
 =?utf-8?B?ZVMzUVdjNTI0dG1UbUFaK21GVkVDRU93eWdySWt1SnpBRjVBVEd2eUZOQm1t?=
 =?utf-8?B?WW5OWnhRaFBXK1pvaHF6ZE9ZSmIxWFpnWDB3MzNZcUc5K3cxTThJQTFXMHdS?=
 =?utf-8?B?WllpcXZ5NTQzMy9ZWXR3ajdhem5sbEFDZkNhOHFVckl2ZjJyY21pT2Yyd1RF?=
 =?utf-8?B?TWJNVDN4UDJRU3ZzeVIzRVFTNHNXa1Y5QklxdHdvNHNOa0pPKzVkREgzRXVK?=
 =?utf-8?B?ckdGOVQrVTdGdis2cVRIKzk1ZDI1ZWIzekFDem1KRjRsNUNkVnBwejJOSTZU?=
 =?utf-8?B?Ty9wQ3FqeFpmSmpIb0lKOHNtWEtPdUs3T2tUaTBYWlZjUGhya1dFSDdEZFpo?=
 =?utf-8?B?WDNxb0Jla2ZIYUJHT1NjVVorS1F2RFp4VmFFcVVFNlJydzBKZ01NdTlVNU5X?=
 =?utf-8?B?VUEvQVA0d1BtMk4wOFFMYTNBZC9jcEYvMlNNNytLVXFvYjRuWncyajhyQjNL?=
 =?utf-8?B?NnhOYk4yMXJhWmF6bWVaUUtzbXhWU2E3Rzk0R3RpVEhLVFlKZW9WUmM3M0M0?=
 =?utf-8?B?MWRjeUE5Mno1Q0x2bEFjdjN1Ulk3b2NTQUJjZmo2MER1OENQd09hU0VSTUcr?=
 =?utf-8?B?UHpSNEdZWGJyR2MrbWVqUnlhTmRKQTlaWlRQd0xTbTRFS2hKa0dCdm9RZDBh?=
 =?utf-8?B?d2N4WlRVWkZaYklCSmVBTmVFcE5heEd4cjJnL0Z2eFhGME5wSHRKaG51N0lo?=
 =?utf-8?B?QmUzVVduY0lOcFdPZjRZeG9veHFlekYyU1A0blVzYU14SFNQbDdUeTk1K3Vv?=
 =?utf-8?B?K29DcTZibnR5UFFVS0JTUGUyaEJFT1ZEMDN2TjdCWVRyd056QUMwMnh2TEFm?=
 =?utf-8?B?LzN3TUF2OEgyTTRadjNJUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OFA4KzJwV3lpK2pnUGFjamxBc0ozZDdhYVQzZkkzYkliTjlzQVdkUms2Tmsw?=
 =?utf-8?B?ekEwK24wci9qeTFlWk5sS1kzOEs5dUdIWllSdHRkRkxUSEZ5NUFkMFNPV3ND?=
 =?utf-8?B?dUZJOGRIT1ZJdXpmZ1FIUWhWZWwzOGRTNmc0M0VvMXNGY3JUam1EVFJ2V2tP?=
 =?utf-8?B?UUdMQkpVT3hzN0JrTzZZVEJBdkZEeUFVUmlDUlVlZDRURHVQek03bnZycUp3?=
 =?utf-8?B?dllSZWdtOVExa0Y5N1pvNlN0RTM0VWh2YjMzT1lqakpWQTBNTmIwVzlaRVRt?=
 =?utf-8?B?Y3RzZG5Ud3JIcXAyQmorMkRWOHlYNVdKQzB6QnBSL3NvSDZOVkozZFJxZXM0?=
 =?utf-8?B?eEw0MEljNzB3WERHeWgxSlhRSmZlVVExZTJpdjJ4aGg4WWVnM2xhWmRjUlpr?=
 =?utf-8?B?OE5GZ2dJbjQ0RVdwSEJVT2ZDVzhueXY2SkwxZ2xIc1BSQ21jdFVFaFJRQnA1?=
 =?utf-8?B?WHlpNlQ4d2NERXBNSXVHZS8xcU56eDJ2emFTQ1ZOb3hNaWRpNy8rZEZmbzZE?=
 =?utf-8?B?MzVxMlRSTk96Q0tBY01MMytYbWVGYmN0U1FjdGdYcEFZOUN6WWNKdS8zZ2N2?=
 =?utf-8?B?RXE0RW95ZGlYL3hTNzdEVVRRVXhsQUQvd3ZLVnJvWGk0RWRHdzJaOWtxd1RS?=
 =?utf-8?B?T3U3ejBLcjVJTzNNTVp5empZQThMa3FlbjJleksyRkptZVIzcXlXczBpZmlY?=
 =?utf-8?B?WFU5cENIOUR2c00zK1NuRFBGZUMwajAzaWVaaEZmOVZneVFoUEF6Nk0xaGJZ?=
 =?utf-8?B?cXdRSkNmWHF6Z0hoNVlKM2xvZ3lIRGxXTmZMWVdzVkJvT1Jnc09ZT01uMW9E?=
 =?utf-8?B?WFpmL1BNa3VhcUJvMk1Wa2p6Z2crcERHZFliSUNDUkkrOEpQdVA3MGJLVTRv?=
 =?utf-8?B?THhxTGErVnRCemJBOWdPZ0xzSTBKeURFcnlVY3I5MElOMXVSbWpSbERpblcw?=
 =?utf-8?B?ejZ6YmxDSlBLMHprMDE4bXpyVE92bnlTbDhiYmlSZk83c0JKOG9NZWVsbW9I?=
 =?utf-8?B?SUZ6dFVmaEpjRVB1NjNDald5UEtuVjJ2UmhRbEJid0c3bytRbWlsT0pHaHJx?=
 =?utf-8?B?UlFuZHdnUDBHeE5NTWJHN0VneTVqOXBLbEFtcHBqM0lZWU1aSXUvdmtnWjhs?=
 =?utf-8?B?YzNhSjB1ak5QQnluZWR1YmE1OHF0Q1NlTnNRNlhFZlVIbGQzTjk1WmlQNUhn?=
 =?utf-8?B?aGxyaHBTbk16ZW1tZlJIKzI3Z2Nrb2xYbDdCb3dhUDZhM2VLWTJYbXZZUndH?=
 =?utf-8?B?U1NWVDZKY0dKL3c4N0xSdVk2TDVLR0ZOSjZMZUdNT3V5UlFhK0FIZkN1NnNo?=
 =?utf-8?B?RDlud2FEM0tSZFNOcGRqekM0RzlnMk9Rcmk1Rk5VeFlZYXFGSmkzVmlJR1FD?=
 =?utf-8?B?NWNJU1FramU3OUxvR3FzSE0zMm14ZmptaEI3T1BIUTBDZDBVZVJlOXNOWnZO?=
 =?utf-8?B?WWJMTTlkTWtJZC9ZWEZrSUt2WmF6L1RWMDg0eFduUno0a25Sa2lDczIyMFJG?=
 =?utf-8?B?N1ltTnRyK1NjekNLQ01XUW9MTFpuYkVrbXY0VTI4NTJ0RGFZYUZLVE5yZU1l?=
 =?utf-8?B?NkZLUGFJSmo0QmU5Z24vdWhuZ3dyQXdzQ1dIL0tJS09aaVU0ditGNGFzdU9B?=
 =?utf-8?B?MTNMb1RuSzJmODRMdEpLcjA5cXh6bHhDUGxlT3drUnc0R1R1NWxodDM4WFkz?=
 =?utf-8?B?MkRpY0RiVWd3d0FYQVIwZEFpeDN5eTFuU01JdldwWDV4c3ZObDRVNytSejcz?=
 =?utf-8?B?cXJpdCt0QkVDL3I1UWNZbWZVSjFlR0crOTJmWjF2NTFGM0RwWjd1bHJNbU1a?=
 =?utf-8?B?emJoYloyZjF6YkVJN1V3dlFMMkU4K2JETFpHY2UwZndFSURMRmZ3ZC9mTVo1?=
 =?utf-8?B?bWJSaTdEN2x0TXlUOTBEMTA4SVV6UDRPMkttZjFHUzRmM3lkRGExQUp2ZEJr?=
 =?utf-8?B?VVVGT2FUTmxoQ29hajNDMDV2UVlHMVdBUStWSFZlUDdGNVZYZVJuNVVCUUJP?=
 =?utf-8?B?SDdIYUlhcTZMSEtUaWtERVpIbUY5eXpUOHF1UzZ5TENCek12RDJ6U2lsNjZU?=
 =?utf-8?B?amYyWDRkRGxzL2tCeFZOSVdKbEFmdFNyYlhHNGpzT1lqUFltZE4rQ1BxRVh6?=
 =?utf-8?B?MXhwaTZWS2NTK0V5QWhvT2diVG9Ma3VCbUxXeU5GTFpRRzBwdkk0MWZVZ1RH?=
 =?utf-8?B?a3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f5a3a3fc-9407-40a1-7a68-08dccb2a48ac
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Sep 2024 08:36:04.9346 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: S4rwPEJcOG2xKYpc8OSzxJeDcfQhlK7tmYWGZh4RX9MzKEXy00omRb9Rn69oh8/gqlh5fXfqwvpQpyy0lCsQoQacprowxX6dHMs7w0Csl78=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6372
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


On 7/8/2024 8:52 PM, Animesh Manna wrote:
> Coonector state is not used in lobf compute config, so removed it.

nitpick: s/coonector/connector and  s/removed/remove

Add fixes tag.

With above fixed:

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_alpm.c | 3 +--
>   drivers/gpu/drm/i915/display/intel_alpm.h | 3 +--
>   drivers/gpu/drm/i915/display/intel_dp.c   | 2 +-
>   3 files changed, 3 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
> index 866b3b409c4d..021e970d8209 100644
> --- a/drivers/gpu/drm/i915/display/intel_alpm.c
> +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
> @@ -266,8 +266,7 @@ bool intel_alpm_compute_params(struct intel_dp *intel_dp,
>   }
>   
>   void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
> -				    struct intel_crtc_state *crtc_state,
> -				    struct drm_connector_state *conn_state)
> +				    struct intel_crtc_state *crtc_state)
>   {
>   	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>   	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.h b/drivers/gpu/drm/i915/display/intel_alpm.h
> index 8c409b10dce6..a17dfaa5248d 100644
> --- a/drivers/gpu/drm/i915/display/intel_alpm.h
> +++ b/drivers/gpu/drm/i915/display/intel_alpm.h
> @@ -17,8 +17,7 @@ void intel_alpm_init_dpcd(struct intel_dp *intel_dp);
>   bool intel_alpm_compute_params(struct intel_dp *intel_dp,
>   			       const struct intel_crtc_state *crtc_state);
>   void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
> -				    struct intel_crtc_state *crtc_state,
> -				    struct drm_connector_state *conn_state);
> +				    struct intel_crtc_state *crtc_state);
>   void intel_alpm_configure(struct intel_dp *intel_dp,
>   			  const struct intel_crtc_state *crtc_state);
>   void intel_alpm_lobf_debugfs_add(struct intel_connector *connector);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 3903f6ead6e6..8feec90538ae 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3009,7 +3009,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
>   	intel_vrr_compute_config(pipe_config, conn_state);
>   	intel_dp_compute_as_sdp(intel_dp, pipe_config);
>   	intel_psr_compute_config(intel_dp, pipe_config, conn_state);
> -	intel_alpm_lobf_compute_config(intel_dp, pipe_config, conn_state);
> +	intel_alpm_lobf_compute_config(intel_dp, pipe_config);
>   	intel_dp_drrs_compute_config(connector, pipe_config, link_bpp_x16);
>   	intel_dp_compute_vsc_sdp(intel_dp, pipe_config, conn_state);
>   	intel_dp_compute_hdr_metadata_infoframe_sdp(intel_dp, pipe_config, conn_state);
