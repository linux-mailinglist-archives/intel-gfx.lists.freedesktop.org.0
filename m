Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 689AC979C24
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Sep 2024 09:39:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A82B310E00C;
	Mon, 16 Sep 2024 07:39:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="avOvmc5J";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C566510E00C
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Sep 2024 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726472394; x=1758008394;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jp72pxvaAZJLtoxyeHDYNyo+sto583hW+MZ0HP03/84=;
 b=avOvmc5JClO7/z4aL8MBiDJtVfXBZ3qzl/OEMJfZwEEvztzdTGsdgwI0
 4S6M9G7uKa15p6xq3Co+GwC0vZGlB27oyNNeKKH89r95fc4/wrQwj18Gf
 zTdQavBcpIfEa8E1LahaF6HJdbtZbVngIUHe2cyQWmJSCNIUYvF1U63dL
 OQTsCMtXkcA70xK5XENrAaMDc5R/T8ZyAXKjsrq0GkzmKLdQ0mzxfdrFo
 juWAGMULfaKi6EU9rLJZjWMSP3lSakHn9Lzg5W3QSkTQC8XueNxhJ51FZ
 8TL5OQ/hhJaBdh224JEnv1oPbtF4NjBnL6JHZp9hMVg1C4xit4YuzgYkP g==;
X-CSE-ConnectionGUID: NoAu4t5zQLqryEnnTO4s3g==
X-CSE-MsgGUID: LaNi2ezJRaWIsxHVOyWqsg==
X-IronPort-AV: E=McAfee;i="6700,10204,11196"; a="29077253"
X-IronPort-AV: E=Sophos;i="6.10,232,1719903600"; d="scan'208";a="29077253"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2024 00:39:54 -0700
X-CSE-ConnectionGUID: 6RPfKN8rQgOGhZERnRdfpQ==
X-CSE-MsgGUID: V2pH9YoLRxSi1Kg7LU0syw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,232,1719903600"; d="scan'208";a="68894837"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Sep 2024 00:39:53 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 16 Sep 2024 00:39:52 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 16 Sep 2024 00:39:52 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 16 Sep 2024 00:39:52 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 16 Sep 2024 00:39:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=V93kw7cBU2RLBv1enlolo0AtZhxnyq09J5KOAh3Fu6P7s0xFAJUXv9AxnpIEzXG28XvHbUuGnwPVDhJujFv6DzIczIo9CRWizp+wqSRdNdnbJQY2LpNntgmjwH0lI4sgsBbLTg0KAXvF3H8uAcvn+IJOj6PZ34yPv7ptBIUrEB3AvWAJklMNYYsQQQZ5RXUldo1wGe5YdbENH1461EbAlmjMIUzAXatGAPO3W0WZkzmXSqeOoheBkqNL7T0UdsjdMZ47BiBXk47cWUMJPrlfg5awlzvdBvS66b4pcUpTdQ8YTDYR635NRJ0z9eCPWgdrPpdI1P1OFgmPqow7v0R/xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dM0CmsqsmMxxVzg+qv6PLlLmUUR+kKLpOfyhVchUW9w=;
 b=CZAGx2aYAdFwdl6GAayrX5dZsckoxik91PO1xVqxCaBeXYEm37WQ24JqkIkGqfRKhDlpbiqCWuNftu9Yr3RBsueVEbbE8CBge5OTrmQZsZHGS/ik+OFMCNyXm0IUlkbRkPTEv5WjdDlQtaPTrSrAhabNmgliKxdUTef8oDv/UJp12gCNEJlSzn15FimNj8LwaYz/FLM6rD9xlKuOfSo05XnmJAvYs0tR2XwGDcclolUalr4dmWH9cwBV8sJjbtOrpBvl3p2AUG0BssKmSUifWeYrxmdM017wOaGhAeqIzx54/F/r+Ukho94CXare2XTDbfu/j3N1/kbSFllpR0cbHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS7PR11MB6272.namprd11.prod.outlook.com (2603:10b6:8:94::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7962.23; Mon, 16 Sep
 2024 07:39:50 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.7962.022; Mon, 16 Sep 2024
 07:39:50 +0000
Message-ID: <fab2d890-e3a3-4157-adda-92b9a195e7be@intel.com>
Date: Mon, 16 Sep 2024 13:09:42 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 16/19] drm/i915: Add new abstraction layer to handle pipe
 order for different joiners
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <suraj.kandpal@intel.com>,
 <jani.saarinen@intel.com>
References: <20240911131349.933814-1-ankit.k.nautiyal@intel.com>
 <20240911131349.933814-17-ankit.k.nautiyal@intel.com>
 <ZuIb3D1GrjwFBIuU@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ZuIb3D1GrjwFBIuU@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0062.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ac::20) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS7PR11MB6272:EE_
X-MS-Office365-Filtering-Correlation-Id: 901c095c-3648-4271-e1bd-08dcd622bece
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?b2VveFpteE9xVGpnZlZuU1pHQlVnWWdjMFM4SmZFS1h4ZXUrLzhJZ0ZmUmdD?=
 =?utf-8?B?N2hoNzJSQXYwZVJGQ1pCZndHYzlEU094Lytub2JRa2RSWXdlbkYyMXpGbWQ1?=
 =?utf-8?B?RG1ST3RMK3Z4R0JRdk9jbG8xVmUvaHFDSzM0dFg3Rk9ybEhiVXZnUDlUeGYz?=
 =?utf-8?B?RWhpNS83WlN1VHA2MnlKU2JLYzkrd1ZDb3hIdVV4N0FPNGcwemhteTBnYmxx?=
 =?utf-8?B?elNzVU93YWxDelhzbUc5UXA4cFRUUDZtdDM1dHFXNk9QRXRaZFo4cnZHMEFm?=
 =?utf-8?B?Sm1ldmVIRDdtb1hjbmhRdkp1KzV1SzdBdkZpaHIvM2t3dVNJeVl0aEVneHRr?=
 =?utf-8?B?Njg4MmdWcjNxdDN4VHNzdVJKUmtJK2JzTVhOV2diYmJnMHZ3VHFrZDF1c2tr?=
 =?utf-8?B?bEhxMjUvcFUzb010VFI5VUMwckZZMGpUdVVGQzZmSzQ3Z0lwR0hPYWxDS3Fh?=
 =?utf-8?B?VXJhVkxWUit0SHhyVlpXQ3lkSGd1TTFMZ3JIN095cW5MR25YTUFraFdxK05m?=
 =?utf-8?B?Njc0bi8xTFcvVlN5bGdJWmt2ZDRNQllOTHlpQ3hlMlgwK3ltMDlyTUxudS9U?=
 =?utf-8?B?clJkcFVUckFQMnNCQlZZaHVkcWRRVElDZ0E1cjU0QWF0R2NOOE9icVlwM2RC?=
 =?utf-8?B?cXJxbk80OUg2M0hOTU9xVXZsV1FQaGFGV1RweU9EWERhZjhjUzVad0dQQ3BI?=
 =?utf-8?B?aEZXNEcrUkRld3pJVHowNHBXNGV1TkhtaVBEeFBkQ2JwT21GaXVhMHpmRG1n?=
 =?utf-8?B?NjJMcEw1blAxQUNaV2FockcycXQ4Y2xLMUVSN3lUM1ZqY05Qazk1SWpNSURq?=
 =?utf-8?B?N0NReStYSFlrTXdoZG83WWZ3MUxGM1lXT2RRQ3d2SDVQZmRsUy9pZFJaOHJ6?=
 =?utf-8?B?RjVRK052RmJDOUsyNERZMXVoUDBMYXlvckUrYmV0K0FqdEVGU25NTEJTVnZB?=
 =?utf-8?B?b2RXQ0R0ZlpiYnhpMWJQVzl1OHZCUlRQNkZodHBkQ3FsNXYweEpCT0lMOTha?=
 =?utf-8?B?b0lyNFdPQXBHdTRQM1hPTlVLVE9zc1U5aTZhd0ZLblJYU09wdHNrUGNCY0xY?=
 =?utf-8?B?NFNidDAvQllNRlY2VmIzcEhSNTNLbnN2UkZPUlErOXRaZlA2ZTg3SHhwR3hD?=
 =?utf-8?B?eVRRU0hnYnN6MFJxRmt3S2NSWHMvQU1kMzRlc0k0WmF4b1htc01NU1VJMk1k?=
 =?utf-8?B?RmZZOGtWN1dDbUs0NStEV2p3aStMUmZwNk5zSGVDTVhSbFBwRThtZ0hNbmc2?=
 =?utf-8?B?czJhZWxiWTlGQ0JNNlVBVVhmbWJXckwrVWp0RGsrTEloOEhtczRhcW05dmdn?=
 =?utf-8?B?VDBPTFRBUERqd3FBcVhrb0dVMWF1eG92RnZQUm03eUJxTy9LMUNQVjhPMzhz?=
 =?utf-8?B?Y1JsMDBlWE0yVVRiTFFxVGtNSXErR0RZTFpaa0w1VHhwbGx3dEdQSW53c2Jt?=
 =?utf-8?B?R0xXaVZBb1lCa0dKQ2N3V2JtVC81VTJoSVVhdFl0b281K0hEWWt2UkNMVEFD?=
 =?utf-8?B?bjFHdjQ0bUw3UjhvVVNSKzV6aTFmbEZVNU5ranRFZ0M3UTFHYVNUMktNU3Mw?=
 =?utf-8?B?YzM4UW5BS0hZU29DZm5FN2tXcXA0SUhTbVR6KzVkM3lhdndNTlZxd2d0c1M0?=
 =?utf-8?B?UUcrWEF0eGp1UDc5eXhySFdMMkx0QUlXcFVDaEJXTElpZEhlZ3pjeDBYU25Z?=
 =?utf-8?B?dTBkNmQvZFhlcXlEYjdqdXR2dUJRN1VkeFNqVG5nbUFkTUdod3MyVXRNQ2Nz?=
 =?utf-8?B?aDU3eWRYem9xZ25vQ0lTQTVOK0xXS1hhbWs2ZlR5VkpxN2l5K1Rkd08zTHNC?=
 =?utf-8?B?T0c0U1JwcFFpY2FCVmkwQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UUVUVis0ZFpjYjVBZjVid216OVhuUXRsSThDSTk0bUdqN1hFd050Mi9lRkpv?=
 =?utf-8?B?d0QvTkI1QklNVDk2SEJFK1QxbkRzemU3TkxDNlRVcXN5RGtsaVl4Uk5JdHM1?=
 =?utf-8?B?U3lDdjdlMm5oTkZOZmNPQUQvcW9lNkpPM0NWMmU1WkdxWS80ekFha2ZHZFZW?=
 =?utf-8?B?R0l6NlhVNVhKY09YNHRlcnZJb0MvK1JjbHRpbnpGcDdoS1N6WEtGenBRMm5E?=
 =?utf-8?B?US9JSzZPbEEzS01kdG5CdEU4dlN1a3Q1ZTRYblFzK0N2Zk1CQjdlcU9nK0E4?=
 =?utf-8?B?T0k5NU43TWVsNUQyblVlcHZNdXBIZHdqODBQd2pMMjh3ZHZKV1dtWEhMK05o?=
 =?utf-8?B?aFhrenZZWXhGUk95YU9kUGxITFh6N2RYTTZyTE81ZDlVVHYvWjg2dkMrZTZx?=
 =?utf-8?B?Z2k4WHN3aE16RUF0a3J6TVNwcGtmcjhDbG1yQTYrbzByaDVORVZuREpsd0xr?=
 =?utf-8?B?azRFU0xxekFhMC9sWWJscnc5RzNVSW5FV3J3VFo0a05td05jRTFZU1d0Zlp6?=
 =?utf-8?B?Z3kxem0yMHdzd1VVN3RTNjdndmo4NUw3YWtrdnlzQTVleVgwZDFaZUZZbW5R?=
 =?utf-8?B?WTMyL3pFNUR6eUp4eDVTeFc3Rjg0MDdDZVAyNzBBOS81Mnd0dXlpaDFWcW1C?=
 =?utf-8?B?VWgwb2V1RXlVS0RHWERzS0JYZjNxTTVKb3B5K0RGSVNqZzRLYytDM1JqQWk3?=
 =?utf-8?B?OEFpbHJNQ1pFQUllbmV1UVBXeDJVc210WkJYWXU1TGpVaG4zVW9PYzNGa2M0?=
 =?utf-8?B?ZlFhM29ER3lCbThYOU5tVjVMdjFicWR3Rk5ROXJSYUtuYUVrUnFSNmhIRTA4?=
 =?utf-8?B?TjJQWTBPUGpqQTFzYnNrY2tuVitHTFJrN1NlYnV1cTlNOCtVaUM4aU9hamlr?=
 =?utf-8?B?TGxWSnlSdDZrUmcxQkZHOEFkUEhNcjZoVzJPOVdDU2hoYjdwT3FrcDRmNmp3?=
 =?utf-8?B?SGhzNXRhdGhIMUlLNTBPcmRPaHpOeXE4NjAvZkl2M2RwVFRKM3RMSDZjeTZX?=
 =?utf-8?B?LzQvbldkcGlieVBENjR0YzFqeVFlY2ZSRnByVW1xczhVeFhpeE9tMGV2VnAy?=
 =?utf-8?B?ejh2VVNLN2lwMGt2dUhweExGUkhwbVJMYUg0MytWaVVBbllNdmd3UTlmN0I5?=
 =?utf-8?B?OFpveFR6b1lxK2E3Qll4U09OZEJPRFJUTTc1KzhIeGhGWFlhM3hiZHFSTytO?=
 =?utf-8?B?V0lFY1ZPMzdHUDBpWjg4Y1Vjd3M1cEZmeWovcWYxOE11cWJwa3prT1JXRVRp?=
 =?utf-8?B?SFlCSkFMc3NRbkdrODNXazdzeWFGOVRWZ3pJT0FydUR0MEQ1K2Erenk3Y29v?=
 =?utf-8?B?VEM3RnV0UE1Yd0djV0NVRmlNb3hoOVUyb0kzSUo1bUhPN3dCTFMwdjVSekoy?=
 =?utf-8?B?OEJ6VkJyMjI3dmQwMEsxN1l4alBjR2dDS2UrWkpBZmdUYnJqR1NmRGlYbE9u?=
 =?utf-8?B?VURJOEtMR3VFSy9ybkFpdjJITkc5WndBY1plc1JmUE42Y0Fsamd5MnVWWXNp?=
 =?utf-8?B?SWxQemV0MENrRUtSdFlHLzFvMUJoVlFraERGb1FEWWVWNzhBanEvS2MxZTFC?=
 =?utf-8?B?ZnNuS2IwM3dVY3luSlhEQ3A0Qy9zUXZ4MXhjU2c2WkkxbDRlRU1aVzJPWTAz?=
 =?utf-8?B?c24xSUdMM0JyTlgrV1ZKN1k5M1ZEODRnYnQzMDFxSUFTMm9uU3UxOUQzdTh1?=
 =?utf-8?B?ZnUxa3Z0bVE5RVJmMjA5elF6NWtZUWtFZlJ0eVI0ME5GU2NUVXI2V0NwQWJM?=
 =?utf-8?B?eHR0Vm9LUFRRU01halJyaTBGMVNqbkpZNWJDVXR1MnNxcURERGNPYWpzYWxn?=
 =?utf-8?B?dGYyMjJTY01NRkdvaEROWUxjcnBLMjJrM0tQTTYyN2JhTVhEbnBLeGgzMnQz?=
 =?utf-8?B?MC90bUNyT0FTcWE4RVhwSTVkUUkvczQyaVA1VHhlWjVKUGQzKzY4NDdqd1g2?=
 =?utf-8?B?bEJQakxFZUhzVzhZSVVJSlp2Yk43RXErRzB4TFdOb3BtNFpVZEdVTC8yVE9S?=
 =?utf-8?B?OVhuL3dkUkZremNBVmJISEZsL25vYXVGc0FaSzhZcnM1MnN1dm1oL0thQ29h?=
 =?utf-8?B?VFFlMHhmc09MMG9uaUtkaTkvRytHN25tNG5YRkxKRk1aSlN3L2J6OXdDM0hw?=
 =?utf-8?B?WmhBU255RUJCR01heEZORkdUdEQweWR1aUZEY0VZZU85WEFHRjcyYzUvQVBQ?=
 =?utf-8?B?R3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 901c095c-3648-4271-e1bd-08dcd622bece
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Sep 2024 07:39:50.1580 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ISID7axe7gk+cZ/AED4rG8PVMC2gSRxQhPgNjOZi0MtRsWHOFovS+U4vRLH8f4P5a0N8ZA/HXe2azYJVSdqjtIggnCH4omU/+0R25052GsU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6272
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


On 9/12/2024 4:08 AM, Ville Syrjälä wrote:
> On Wed, Sep 11, 2024 at 06:43:46PM +0530, Ankit Nautiyal wrote:
>> From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>>
>> Ultrajoiner case requires special treatment where both reverse and
>> staight order iteration doesn't work(for instance disabling case requires
>> order to be: primary master, slaves, secondary master).
>>
>> Lets unify our approach by using not only pipe masks for iterating required
>> pipes based on joiner type used, but also using different "priority" arrays
>> for each of those.
>>
>> v2: Fix checkpatch warnings. (Ankit)
>>
>> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_ddi.c     | 19 +++--
>>   drivers/gpu/drm/i915/display/intel_display.c | 83 ++++++++++++++++----
>>   drivers/gpu/drm/i915/display/intel_display.h |  7 ++
>>   drivers/gpu/drm/i915/display/intel_dp_mst.c  | 18 +++--
>>   4 files changed, 96 insertions(+), 31 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
>> index 00fbe9f8c03a..2c064b6c6d01 100644
>> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>> @@ -3116,10 +3116,11 @@ static void intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state *state,
>>   					       const struct drm_connector_state *old_conn_state)
>>   {
>>   	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>> -	struct intel_crtc *pipe_crtc;
>> +	struct intel_crtc *pipe_crtc; enum pipe pipe;
>>   
>> -	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
>> -					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
>> +	for_each_intel_crtc_in_mask_priority(dev_priv, pipe_crtc, pipe,
>> +					     intel_crtc_joined_pipe_mask(old_crtc_state),
>> +					     intel_get_pipe_order_disable(old_crtc_state)) {
>>   		const struct intel_crtc_state *old_pipe_crtc_state =
>>   			intel_atomic_get_old_crtc_state(state, pipe_crtc);
>>   
>> @@ -3130,8 +3131,9 @@ static void intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state *state,
>>   
>>   	intel_ddi_disable_transcoder_func(old_crtc_state);
>>   
>> -	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
>> -					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
>> +	for_each_intel_crtc_in_mask_priority(dev_priv, pipe_crtc, pipe,
>> +					     intel_crtc_joined_pipe_mask(old_crtc_state),
>> +					     intel_get_pipe_order_disable(old_crtc_state)) {
>>   		const struct intel_crtc_state *old_pipe_crtc_state =
>>   			intel_atomic_get_old_crtc_state(state, pipe_crtc);
>>   
>> @@ -3383,7 +3385,7 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
>>   			     const struct drm_connector_state *conn_state)
>>   {
>>   	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>> -	struct intel_crtc *pipe_crtc;
>> +	struct intel_crtc *pipe_crtc; enum pipe pipe;
>>   
>>   	intel_ddi_enable_transcoder_func(encoder, crtc_state);
>>   
>> @@ -3394,8 +3396,9 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
>>   
>>   	intel_ddi_wait_for_fec_status(encoder, crtc_state, true);
>>   
>> -	for_each_intel_crtc_in_pipe_mask_reverse(&i915->drm, pipe_crtc,
>> -						 intel_crtc_joined_pipe_mask(crtc_state)) {
>> +	for_each_intel_crtc_in_mask_priority(i915, pipe_crtc, pipe,
>> +					     intel_crtc_joined_pipe_mask(crtc_state),
>> +					     intel_get_pipe_order_enable(crtc_state)) {
>>   		const struct intel_crtc_state *pipe_crtc_state =
>>   			intel_atomic_get_new_crtc_state(state, pipe_crtc);
>>   
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index db27850b2c36..27622d51a473 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -1737,6 +1737,50 @@ static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_sta
>>   	hsw_set_transconf(crtc_state);
>>   }
>>   
>> +static
>> +bool intel_crtc_is_bigjoiner(const struct intel_crtc_state *pipe_config)
>> +{
>> +	return hweight8(pipe_config->joiner_pipes) == 2;
>> +}
>> +
>> +const enum pipe *intel_get_pipe_order_enable(const struct intel_crtc_state *crtc_state)
>> +{
>> +	static const enum pipe ultrajoiner_pipe_order_enable[I915_MAX_PIPES] = {
>> +		PIPE_B, PIPE_D, PIPE_C, PIPE_A
>> +	};
>> +	static const enum pipe bigjoiner_pipe_order_enable[I915_MAX_PIPES] = {
>> +		PIPE_B, PIPE_A, PIPE_D, PIPE_C
>> +	};
>> +	static const enum pipe nojoiner_pipe_order_enable[I915_MAX_PIPES] = {
>> +		PIPE_A, PIPE_B, PIPE_C, PIPE_D
>> +	};
>> +
>> +	if (intel_crtc_is_ultrajoiner(crtc_state))
>> +		return ultrajoiner_pipe_order_enable;
>> +	else if (intel_crtc_is_bigjoiner(crtc_state))
>> +		return bigjoiner_pipe_order_enable;
>> +	return nojoiner_pipe_order_enable;
>> +}
>> +
>> +const enum pipe *intel_get_pipe_order_disable(const struct intel_crtc_state *crtc_state)
>> +{
>> +	static const enum pipe ultrajoiner_pipe_order_disable[I915_MAX_PIPES] = {
>> +		PIPE_A, PIPE_B, PIPE_D, PIPE_C
>> +	};
>> +	static const enum pipe bigjoiner_pipe_order_disable[I915_MAX_PIPES] = {
>> +		PIPE_A, PIPE_B, PIPE_C, PIPE_D
>> +	};
>> +	static const enum pipe nojoiner_pipe_order_disable[I915_MAX_PIPES] = {
>> +		PIPE_A, PIPE_B, PIPE_C, PIPE_D
>> +	};
>> +
>> +	if (intel_crtc_is_ultrajoiner(crtc_state))
>> +		return ultrajoiner_pipe_order_disable;
>> +	else if (intel_crtc_is_bigjoiner(crtc_state))
>> +		return bigjoiner_pipe_order_disable;
>> +	return nojoiner_pipe_order_disable;
> I don't think we should need all those diffrent order array. Technically
> one should do. Though having two might make sense.
>
> Another problem is the hardcoded pipes. If we eg. get hardware that
> would support ultrajoiner on pipes B-E in the future this would no
> longer  work.
>
>> +}
> <snip>
>> +#define for_each_intel_crtc_in_mask_priority(__dev_priv, intel_crtc, __p, __mask, __priolist) \
>> +	for_each_pipe(__dev_priv, __p) \
>> +		for_each_if((__mask) & BIT(__priolist[__p])) \
>> +			for_each_if(intel_crtc = intel_crtc_for_pipe(to_intel_display(&__dev_priv->drm), __priolist[__p]))
>
> I think something like:
>
> const u8 intel_pipe_order_enable[4] = {
>          3, 1, 2, 0,
> };
>
> const u8 intel_pipe_order_disable[4] = {
>          0, 2, 1, 3,
> };
>
> #define for_each_intel_crtc_in_pipe_mask_ordered(crtc, pipe_masks, order, i) \
>          for ((i) = 0; \
>               (i) < ARRAY_SIZE(order) && \
>               ((crtc) = intel_crtc_for_pipe(joiner_primary_pipe(pipe_mask) + (order)[(i)]), 1); \
>               (i)++) \
>                  for_each_if((crtc) && (pipe_mask) & BIT((crtc)->pipe))
>
> would let us avoid that hardcoded pipe stuff, and everything is
> just based on the relative order between the pipes. The same orders
> also work for bigjoiner and non-joined cases (it just skips the pipes
> that are't in the mask).
>
>
> The alternative would be to just use the bigjoiner primary+secondary masks
> and come up with a a way to iterate two bitmask in either forward or reverse
> order. Hmm, I suppose one might just combine the bigjoiner primary and
> secondary masks into one, with one of them shifted up to some high bits,
> and then iterate the combined bitmask either forward or backward.
>
> Something like this should work:
> #define for_each_crtc_in_masks(crtc, first_pipes, second_pipes, pipes, i) \
>          for ((i) = 0, (pipes) = (second_pipes) << 16 | (first_pipes); \
>               (i) < 32 && ((crtc) = intel_crtc_for_pipe((i) & 15), 1); \
>               (i)++) \
>                  for_each_if((crtc) && (pipes) & BIT(i))
>
> #define for_each_crtc_in_masks_reverse(crtc, first_pipes, second_pipes, pipes, i) \
>          for ((i) = 31, (pipes) = (first_pipes) << 16 | (second_pipes); \
>               (i) >= 0 && ((crtc) = intel_crtc_for_pipe((i) & 15), 1); \
>               (i)--) \
>                  for_each_if((crtc) && (pipes) & BIT(i))
>
> (could reduce the constants a bit given we don't have 16 pipes).

This looks good to me. changed for 4 pipes, as below:


#define for_each_crtc_in_masks(crtc, first_pipes, second_pipes, pipes, i) \
         for ((i) = 0, (pipes) = (first_pipes) | ((second_pipes) << 4); \
              (i) < 8 && ((crtc) = intel_crtc_for_pipe((i & 3)), 1); \
              (i)++) \
                 for_each_if((crtc) && (pipes) & BIT(i))

#define for_each_crtc_in_masks_reverse(crtc, first_pipes, second_pipes, 
pipes, i) \
         for ((i) = 7, (pipes) = (first_pipes) | ((second_pipes) << 4); \
              (i) >= 0 && ((crtc) = intel_crtc_for_pipe((i & 3)), 1); \
              (i)--) \
                 for_each_if((crtc) && (pipes) & BIT(i))

But, for non joiner case, when the bigjoiner_primary/secondary_pipes are 
0 so pipes will be 0.

How to work with non joiner case?

what if we do : (pipes) = ((first_pipes) | ((second_pipes) << 4)) ? 
((first_pipes) | ((second_pipes) << 4)) : 0xF; \

So if pipes is computed to be 0, we use pipe:0xF

Regards,

Ankit

>
> And then we'd just use them like so:
> for_each_crtc_in_masks_reverse(crtc, bigjoiner_secondary_pipes(),
> 				bigjoiner_primary_pipes(), pipes, i)
> 	enable();
>
> for_each_crtc_in_masks(crtc, bigjoiner_primary_pipes(),
> 			bigjoiner_secondary_pipes(), pipes, i)
> 	disable();
>
> Would at least be very close to what we already have, just splitting
> the pipe masks into two essentially.

>
>> +
>>   #define for_each_intel_crtc_in_pipe_mask(dev, intel_crtc, pipe_mask)	\
>>   	list_for_each_entry(intel_crtc,					\
>>   			    &(dev)->mode_config.crtc_list,		\
>> @@ -431,6 +436,8 @@ bool intel_crtc_is_ultrajoiner(const struct intel_crtc_state *crtc_state);
>>   bool intel_crtc_is_ultrajoiner_primary(const struct intel_crtc_state *crtc_state);
>>   u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc_state);
>>   struct intel_crtc *intel_primary_crtc(const struct intel_crtc_state *crtc_state);
>> +const enum pipe *intel_get_pipe_order_enable(const struct intel_crtc_state *crtc_state);
>> +const enum pipe *intel_get_pipe_order_disable(const struct intel_crtc_state *crtc_state);
>>   bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state);
>>   bool intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>>   			       const struct intel_crtc_state *pipe_config,
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> index be79783ce09b..1c87f81568c8 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> @@ -1003,7 +1003,7 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
>>   	struct drm_dp_mst_atomic_payload *new_payload =
>>   		drm_atomic_get_mst_payload_state(new_mst_state, connector->port);
>>   	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
>> -	struct intel_crtc *pipe_crtc;
>> +	struct intel_crtc *pipe_crtc; enum pipe pipe;
>>   	bool last_mst_stream;
>>   
>>   	intel_dp->active_mst_links--;
>> @@ -1012,8 +1012,9 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
>>   		    DISPLAY_VER(dev_priv) >= 12 && last_mst_stream &&
>>   		    !intel_dp_mst_is_master_trans(old_crtc_state));
>>   
>> -	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
>> -					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
>> +	for_each_intel_crtc_in_mask_priority(dev_priv, pipe_crtc, pipe,
>> +					     intel_crtc_joined_pipe_mask(old_crtc_state),
>> +					     intel_get_pipe_order_disable(old_crtc_state)) {
>>   		const struct intel_crtc_state *old_pipe_crtc_state =
>>   			intel_atomic_get_old_crtc_state(state, pipe_crtc);
>>   
>> @@ -1037,8 +1038,9 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
>>   
>>   	intel_ddi_disable_transcoder_func(old_crtc_state);
>>   
>> -	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
>> -					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
>> +	for_each_intel_crtc_in_mask_priority(dev_priv, pipe_crtc, pipe,
>> +					     intel_crtc_joined_pipe_mask(old_crtc_state),
>> +					     intel_get_pipe_order_disable(old_crtc_state)) {
>>   		const struct intel_crtc_state *old_pipe_crtc_state =
>>   			intel_atomic_get_old_crtc_state(state, pipe_crtc);
>>   
>> @@ -1257,6 +1259,7 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
>>   	enum transcoder trans = pipe_config->cpu_transcoder;
>>   	bool first_mst_stream = intel_dp->active_mst_links == 1;
>>   	struct intel_crtc *pipe_crtc;
>> +	enum pipe pipe;
>>   	int ret;
>>   
>>   	drm_WARN_ON(&dev_priv->drm, pipe_config->has_pch_encoder);
>> @@ -1304,8 +1307,9 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
>>   
>>   	intel_enable_transcoder(pipe_config);
>>   
>> -	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
>> -						 intel_crtc_joined_pipe_mask(pipe_config)) {
>> +	for_each_intel_crtc_in_mask_priority(dev_priv, pipe_crtc, pipe,
>> +					     intel_crtc_joined_pipe_mask(pipe_config),
>> +					     intel_get_pipe_order_enable(pipe_config)) {
>>   		const struct intel_crtc_state *pipe_crtc_state =
>>   			intel_atomic_get_new_crtc_state(state, pipe_crtc);
>>   
>> -- 
>> 2.45.2
