Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iGj6D82yy2kpKAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 13:41:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E90F368EDD
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 13:41:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95AC710E8BC;
	Tue, 31 Mar 2026 11:40:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NwyX4i5T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E74D110E0BA;
 Tue, 31 Mar 2026 11:40:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774957257; x=1806493257;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7HuKiPjBjXUIBlm9c8xvVIqZXOR4aQSQ/tsPr1YWfBw=;
 b=NwyX4i5TNoPJ1ge95vHDiTSbH2whVllURjHqfrFtxiubii0W9YuciWML
 kpeOMsBeSB8ucyrH2xLM9Wcy+BP2+7MMVbN9tcMYa3NUL7swTwbe5tmHa
 YkFi5qvCZmqErIODUDveuPqUPyqR/1w5bscMwKcv07V+XjIbQ3rHSPCOe
 NCEcCJQXeeK7r3XODcAWA01kaYuGYiBrVsW5ES31sGtY5O1C5iouROUbb
 SochhXqywVsYGqwfaDgf505ZkosqGqYHdd31jeYWotCVC7GCqZCO/DQ6k
 JF3jt/LH+G9AP2zSZLslIJZ78Hp1jZgPWFTHF5UvNbQiStA+9OAwSWCN8 Q==;
X-CSE-ConnectionGUID: oeZLU1C6QFGrt0AJY5fHTQ==
X-CSE-MsgGUID: 2TQ5SiamQt+ot3jQW55H1w==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="87043241"
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="87043241"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 04:40:57 -0700
X-CSE-ConnectionGUID: +y/5bHT2SWuU0CQnUDUYmw==
X-CSE-MsgGUID: QyezDRV1T/Cu0vrjuXS41w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="225336504"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 04:40:57 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 04:40:53 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 31 Mar 2026 04:40:53 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.24) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 04:40:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DFfqYWhkPzbpIVckOgncnscICJzXGmE/2JnDxBmmigkHFNErWph/VOz8/jrpd/1YUIjPTOOCfBWh6pBDDz2ycF6+3SD6s67kDLUvu1Z1yqZNY4pwIF6CJbq92r48mja+bYgrBaGxyNavbzXD7Txk+0Q0DSs0RkZeAbGKPH1khJF7Dz4n7wu4LKsNj0gdMPRmOgUGuOFJJ/iO+zzhr2tCxZn4BAB/woeMevZk8RGxNmGWyOApt0Rpl+O3n9+TdWbLsc6yM/VTHiVogDXZ9cSpqJMlA15gg8YcdcpQmrfblMNhdcDVn451P2Dt3fSeFqtA48E8BujX0EJOhKbEpCTdag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CUcqK9/dgic1X5yr/1NUsht0GnhFvZWtHZnGdBVFvww=;
 b=eoToC+L0iEbpf1Zn7vefB3MB4vdbD0mQHb7njEnO+5BkQAIZCUTvfUWQvHkuzX9jF/IOtTfwlHHcs6ltSvHJSyPORyiIr6mDRDxsqWj2mm72V2il4NaQVG4NQ3K++ztooup4DGVnADeFavF4QYMDk2mzrCzCt+VtLRuCr97N27o3hmqPku9pTm/0ATf4ASiWUuyUjyO2o8NUc5OgZrxHowu79p11JDm+YoCyjJYE6SxdFUVswaCaf0kV4h8aTriuj2AuKHvyHVdQpKL9jEH4SmDZfdkXJyzmrOhZ4y0S77moOdLfgSVC9VM6cVsblEkr7yl2/U72N76HK23CWQP79A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL1PR11MB5979.namprd11.prod.outlook.com (2603:10b6:208:386::9)
 by SA1PR11MB8573.namprd11.prod.outlook.com (2603:10b6:806:3ab::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.14; Tue, 31 Mar
 2026 11:40:52 +0000
Received: from BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::246b:dc12:ea88:b19c]) by BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::246b:dc12:ea88:b19c%4]) with mapi id 15.20.9769.015; Tue, 31 Mar 2026
 11:40:52 +0000
Message-ID: <67337fdf-1a98-4449-ac54-04b14805ad8b@intel.com>
Date: Tue, 31 Mar 2026 17:10:42 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/9] drm/i915/casf: Integrate the sharpness filter
 properly into the scaler code
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, Nemesa Garg <nemesa.garg@intel.com>,
 <ankit.k.nautiyal@intel.com>
References: <20260326223139.19116-1-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Sharma, Swati2" <swati2.sharma@intel.com>
In-Reply-To: <20260326223139.19116-1-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1P287CA0011.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:35::15) To DM4PR11MB5993.namprd11.prod.outlook.com
 (2603:10b6:8:5c::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL1PR11MB5979:EE_|SA1PR11MB8573:EE_
X-MS-Office365-Filtering-Correlation-Id: 78043045-19b3-49aa-8c4b-08de8f1a5c1b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: r2SonagpnO6UPPCfhCRJ5V8HQZkNjKukZcc/nftK07p6u1uu6sEHw8S4DYstbk5iIS6haFEyTHfmkwF7t/8SqnGj/I01pCnPz8RdEfe3D03q9dgJ1JxDgqXynI/Ms2uyvbQu9EJ4RISvlw9FWf0UbObqqqvepBVsm/QLonMgZk8T1F0nbunzqI/pQJRGVj8RZ+uRlaL/qpawuvrdORn4vFrwrM77HWZTeufcV8qjZojgR5FE3Rndr7euWtehIO4ezzx7wu2W/LND+FKSoDL4vLTzxy/iSwSAVVKbeZhUXrC027bJxGGrsXlXU+nDS+ZOPEBmDVDwguJu5pCSZPvPHzbPDQVU26k/VgaBMltWSOKeXYuZh8LrQ18LOCtTV3jiO2ntsVIhAOeelbAZwfXUjuNDGQ91eekxMXOenn7A49UyYYqmEtMilSv2GJiTnVnMkneIvYtsP/oDPOsuQivxAGvVFsTmAIJHv2+4ldUGMmnb8Ru+11171ccGQqZPxKu9mkeJ4k3k6J5pioPjk05aHHNsasj3EL5pT6DUXOQppRIrHBbaxYEeODHZCXnr0i3csR7qDsZI4insgujvqAOUZdLmvCC/e17Sk++qeAIyEZcN45wP9J9qTT2tiF5v69eMzCmwZt142d1pPsHF+VvslMKPk8wCSKa/cdotxlLJyBQM991ZSK9WjZlh1TXaycTv
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5979.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UVRDVTA2VEl3NFE1MituNUxtRmFaQ3JrS3E4K3dmblJMWE94dkxJTkZUUEk5?=
 =?utf-8?B?RmZia3pDRlFYNlZzYVZPWFJJYU9ScmwxVWVtOVh4UGxlM2lvMEYxWDhCYk44?=
 =?utf-8?B?eHcwRjhSM25MNGZsUkFMdU9RVDNkcCtiUnVCZWtoVm10ZGhrd2hQaXNlRmRY?=
 =?utf-8?B?RTh4Y09lTmpsMXdTZXFLZmt0djJVNXNqYU4yTU1WU3FTMWx3UkdzTWk2b2Zu?=
 =?utf-8?B?WWJPMG1FQ3hiSGcwV0RYRXAvTzJ5TkNzWWZNdXJjY1kxaERZa2wvUGJvMmc2?=
 =?utf-8?B?MnJpNEF6VWNaa3p4eWZKNTN0TGRINHFaUjlCWVNMUElFb1pSREtEQmRITkFY?=
 =?utf-8?B?R1VKbndhN05obTk1NGl5Rm5LSmNyMkg5ZHp2TTJPaGxOMHVwRVhmc29ialNp?=
 =?utf-8?B?M2hnbGh6QTgzK0pMWCtBb3dhM1l6aVpvWHZ0aHlnbEtVellwTTV4dGZ6ZUV5?=
 =?utf-8?B?MG5GdytsQUVEcTZ2aGRIaE9ZQjE2ZUxQMzc1REhNd0U0a05OZlVZdU9UMm4r?=
 =?utf-8?B?ZGFBbFIrSlBZbEhQWW90VzhOdnViNGc4VFU2V0htYWVZZzVPQUFacGh3S281?=
 =?utf-8?B?RXZxeXRCaFByaFI0MUZkUWpHUWlqdkN2bkpLc0IrN0xHZVhJdVFJVHBHVExQ?=
 =?utf-8?B?bEo1aVhXMWtodTdxc1d0Z0hFajdsV0JuQ0xRVEhsNjlXSXp6SXFmWDRGbm5Z?=
 =?utf-8?B?WHQ0RmxpUGNObE5CbTZLMnArbjIxcTIyQlRucTBNd2JPcmVnZU5rY2c1WThu?=
 =?utf-8?B?WXEwMmQyWFNxL0h2dEJtQjF4b3o1YnIvNnVnekk5bXFiQ29jbnluOXNmV0oy?=
 =?utf-8?B?TWRRaUFxSm9wYUlKY3VwMVJob2ZtMHYrZW9TcCtoUVhzR3NUVk1PVjViaEpH?=
 =?utf-8?B?QU1teS9MWUMyT0h1T3RsaUF0Qk1NeHY3RGhncm1VZFJIUm1FK09BejJUc21M?=
 =?utf-8?B?ZGptR2pOVG1iS0ZYUmJJOElpTHNzbFNMSnpoRTdUaUVML1R5bjM3aUYyeGl2?=
 =?utf-8?B?MExndHVNTXpCOXNCZzM5SVBRbjkvTU9jUFA0Y1I3ZU00N0RIcHNDZnk2UHFn?=
 =?utf-8?B?ZUxQamViYnVkUzdVVHJ4RU92eDdMbGtoSVd2aUtEWEllWUtwVlFQb21JeXBu?=
 =?utf-8?B?K2xmNEFXTGVGNFJFMng4aHRqNlVwS1JJdWxCdm5jSEp3T3VKdEc0all5bVRk?=
 =?utf-8?B?SDY3ZHloN29nenA0ZmJsTkVHb285dm9lWVY4alZ4d0k1anY2OWI4UFVRbDZX?=
 =?utf-8?B?aVJ1VGZ6V1A3ellybzFXdER5UUYvdVUwRUs2R2xnd255ellCV1BDTDdrRDRh?=
 =?utf-8?B?TWYvckdmRXZpOXd6czYvbUx6NTdiaEM1R1p5N0RuRXovT1lXWTRQV004Qmw5?=
 =?utf-8?B?bDZaR0RsNEFNQVpOQXVEOVJ3K1RKYlBrZ25VZlUvTHoxT2VFTUxubXBGTzdh?=
 =?utf-8?B?YitmWDIyZVJaeWMvdGhMUE5icm5pemdtTW9WYVFUYmRXdmlTR3grOVY0N2lI?=
 =?utf-8?B?ek1XbXdKYnhRZjJxWU9MNWVHd1lFV3R6R2JxZDhNS05yUjNQNlZVVkp5bTlp?=
 =?utf-8?B?di9uNzBuUWdCOE1jMGQxckxoKzBtRE9SZzhLZSs4a2xIc2R2SThKSDVZSEpK?=
 =?utf-8?B?Uzlzb3pyWG1nT2dWWWFwbUFDT21Ed1hpVllyazYvdGdpT1NUb2JyR1hFVENr?=
 =?utf-8?B?WHRNZnFydUd0ZFA0R0ZucE5hZjVNMXVMWGNlMkpmalpPSFhiK0FnamFNNTY4?=
 =?utf-8?B?OUxHM0IvMHhjdWhLeW9xRENTUllROWZkdkU0aUpOdi9jZmsrL25Ec3VvTVNS?=
 =?utf-8?B?Ujc1QmxNNW85WFFrcFFLK1VYQzdGRU8yeExzRURTQyt2N1RHRjFIZXpVSTQz?=
 =?utf-8?B?NWUxeDdZZGFrYlFXc3VFY0xIaFhRWURiTUFaK1hEN0lrb2ZKOTNBT3gzSjdj?=
 =?utf-8?B?QktkSEZRWldCL29yMmM0WEJFZVhVTUpqV25hUzd6NDFoeUJsZDBUWUtPcmd1?=
 =?utf-8?B?bHRlNGk1VDNWQ3dSRXpNSi9RS2hOSFhXMjB1Nzc5ZkRGQWNNYzFhRko4Y3NI?=
 =?utf-8?B?K1ZJQzlsN201b2dBMWUzOHVna1FmQXZackU5U2k5RzZzVlBDTUVhRnRFbFc1?=
 =?utf-8?B?Z3BxeDRCdHRpbHBCTlE4QUFKMzhkOFRRSkdpMFN4YVlZcWhKRVFYb3ZNTmxP?=
 =?utf-8?B?eVVScW1vekd4WElhUWtET0N5cE9uU25mMmFyMlhTbVV4T3AyQ1VabjJtL2xO?=
 =?utf-8?B?Um1ad1plc0dmU2NlVnNnS20rUW9PeVNaUThQckJwa3BrMTFuQjNuTjFON1BX?=
 =?utf-8?B?b2JrY0JiS0VTNW4yQ0NHRWd3RFN3eXRXTjFpekR5WXBLMUk2SjJyTkJmZXpN?=
 =?utf-8?Q?NP6L51U4j++tB86k=3D?=
X-Exchange-RoutingPolicyChecked: WbTBMWNeU+Q18gBuEj72AE4dQs1/+iv3FGv1zQSzLMdxLbeKvcza0pZmc9OZICPph8hjEKmZi0JQpGnr2Xb6/5ICkLs1/hoVNWwWvlOUy/Oe+VN3IAm9mlXiIDNdzi77EHzO3rm0/wRthJcdx1xTMf+k+k3DTVMUwBZ1okzoTFVb3UjRsi8QkTup+v7vVfQUa85LAzmCDR0GtOsXmX/IFKibpNFsEfp5SfksyB8G7WMIz9ESFbeEXWS5q+xvi6ma28WoN/XLx2BkUVGvd6zF8jIgmovsQcpm6jm/SKTXytox5cGxsbfRbF54Oh+pbrEwl3qN510cmJUuYl16KQA/HA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 78043045-19b3-49aa-8c4b-08de8f1a5c1b
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5993.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2026 11:40:51.9385 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: t6rIHsDzbNplVWGwdo5k2eMJdUIOOayrFr9UFbdaQ23NXrrrt1zXPIqj0kty4Y43sDR+iAdIoeRduP+5fIki5w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8573
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[swati2.sharma@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,01.org:url];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 8E90F368EDD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Ville,

On 27-03-2026 04:01 am, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> The sharpness filter isn't anything special. It's just another
> mode of the pipe scaler, so treat is as such.
>
> This gets rid of tons of special casing all over the place,
> and will allow me to finally land the pending pipe prefill
> series: https://patchwork.freedesktop.org/series/156137/
>
> Note that this will fail some kms_sharpness_filter tests,
> because those tests are basically incorrect. But I couldn't
> decide yet how much of that entire test should be nuked. It
> seems to be doing a *lot* of things, most of which have
> nothing to do with the sharpness filter...

With your series I could see only 1 negative test failing - 
invalid-filter-with-scaling-mode-center

https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-163952v1/shards-all.html?testfilter=sharpness

Is it sharpness and scaling-mode-center can work together? Since 
scaler-mode-center doesn't require

scaler.

You rightly said, all tests are not related to sharpness but covering 
valid scenarios for scaler + sharpness.

Apart from invalid-filter-with-scaling-mode-center, which other tests do 
you think are incorrect? We tried covering all valid scenarios as per HAS.

>
> Cc: Nemesa Garg <nemesa.garg@intel.com>
>
> Ville Syrjälä (9):
>    drm/i915/casf: s/casf_enable/enable/
>    drm/i915/casf: Make a proper hw state copy of the sharpness_strength
>    drm/i915/casf: Move the casf state to better place
>    drm/i915/casf: Extract scaler_has_casf()
>    drm/i915/casf: Handle CASF in skl_scaler_get_filter_select()
>    drm/i915/casf: Constify crtc_state
>    drn/i915/casf: Remove redundant argument from
>      intel_casf_filter_lut_load()
>    drm/i915/pfit: Call intel_pfit_compute_config() unconditionally on
>      (e)DP/HDMI
>    drm/i915/casf: Integrate the sharpness filter properly into the scaler
>      code
>
>   drivers/gpu/drm/i915/display/intel_casf.c     | 102 +++++-----------
>   drivers/gpu/drm/i915/display/intel_casf.h     |   6 +-
>   .../drm/i915/display/intel_crtc_state_dump.c  |  11 +-
>   drivers/gpu/drm/i915/display/intel_display.c  |  46 ++------
>   .../drm/i915/display/intel_display_debugfs.c  |   5 +-
>   .../drm/i915/display/intel_display_types.h    |   5 +-
>   drivers/gpu/drm/i915/display/intel_dp.c       |   9 +-
>   drivers/gpu/drm/i915/display/intel_hdmi.c     |   8 +-
>   .../drm/i915/display/intel_modeset_setup.c    |   1 +
>   drivers/gpu/drm/i915/display/intel_pfit.c     |  13 ++-
>   drivers/gpu/drm/i915/display/skl_scaler.c     | 110 +++++++-----------
>   drivers/gpu/drm/i915/display/skl_scaler.h     |   2 -
>   12 files changed, 112 insertions(+), 206 deletions(-)
>
