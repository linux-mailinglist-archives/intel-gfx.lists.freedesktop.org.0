Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id rmBzLLrtQWrCwAkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2026 05:59:54 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3A016D5C03
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2026 05:59:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=JekhQRsr;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F77E10E00C;
	Mon, 29 Jun 2026 03:59:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A856010E002;
 Mon, 29 Jun 2026 03:59:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782705591; x=1814241591;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7NIdo0cnH/PmGUJHQKcuxjuP0wh3nYCwNS71TrcWl98=;
 b=JekhQRsrSKmMVa5Q5S3KeXVcpSn0Nwl7KYWGUfCWcK/X3esBmyPUA1DO
 5CmUiIh8HL3InaRlICSt9cByZIcsTJXE3/sMEGcWBUXFDaPdrlwtMHP5U
 q/sVFe1QDCX0zwFgn8CT08DlQAeWGbGByqX9/IgHdQHh0IswBL2MV9tK6
 ON2wfXBZ0pUvndH0DakWP6cJSXnVMcPWzeObzcO+P10jip4+/bCUXpHRt
 eFrnITT94KpeA89XjkXoo/FGVP+TbMwBk663YRJKD4efOe4fIj0O+gtQI
 nMszoX4wkXewVTleOoffL95GAiGO3qV1jEvDOiQcTqtjUzpJoPdSr8KWY Q==;
X-CSE-ConnectionGUID: fUmX+RZFSOKB8KDswwvGkw==
X-CSE-MsgGUID: WKREvaxRTiGlnXohRxnPug==
X-IronPort-AV: E=McAfee;i="6800,10657,11831"; a="83527686"
X-IronPort-AV: E=Sophos;i="6.24,231,1774335600"; d="scan'208";a="83527686"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2026 20:59:50 -0700
X-CSE-ConnectionGUID: loGOaWrFT16YudExO5hrrg==
X-CSE-MsgGUID: QgMkQE6gRZWMQqlx7zxiwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,231,1774335600"; d="scan'208";a="248476113"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2026 20:59:50 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 28 Jun 2026 20:59:49 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 28 Jun 2026 20:59:49 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.41) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 28 Jun 2026 20:59:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gU3bnSdiyO8mCMQSjREujiZjEPz03OfO2UUC+lp+U0E7CYg14q2xjTMUkeeSvldLs6h6fizclsni73TKEh8NDKPHmab7ye1HFcMs3PtDvSvSol284oaGEijkFBGxtGFyPLwjm7EeSRHCv49s62WKXDuXhF+X6e39qLJT9ZK2avkdkjtQnfMaiFi3Tn9V3FgPzFio5wBt0zPPRYWn7W2mGNN46SVgzIHGAXeRBM42iI18866sbGlzHGiv2o+mmERLqYOhAkhno1Tgza758ePYG7Gf4PgFuoWdaa07tvcSJkRL3B10f3dy6m/nc/wnuQ3tY3Xn5MQ2lY81rx7pkZ7B8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hLt7j+ZOfAsW7HM8HEeCUDYuwn92OMx6TtDMSXJMNEg=;
 b=mrrnqyD1qoMp5o4XMgpk04JtZIP0lQWV6ObIAcfk+yre1aV2iT2sm2kXgcnGjPY4WwPvqdsVR4KZbeEC/OPpA7HxJQhMFL1PIm0ThseWLFlOG2D7dtJCxfU1TQvVY+NdSQ5GPfmt9QI10/aUQLv0IdjJbS5OLmnhzO5Zb/9DIwZrUjvudLer1FHiG3muU+V1x/xyH1J3aOvBCC/4t2ChVjSUGamwVI+EYbQr1LhyYJE6agPUdBu7VIZFiGVnbiEg0nxSq4DiQydGKCg3QJ37PJiOrF4cYvz10VGtMBZIJNZRoP2FW6Ep7WwHRNjodtkXelxiDwoJiRdlMs0BI7pqZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA3PR11MB7554.namprd11.prod.outlook.com (2603:10b6:806:315::9)
 by SN7PR11MB6679.namprd11.prod.outlook.com (2603:10b6:806:269::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.19; Mon, 29 Jun
 2026 03:59:42 +0000
Received: from SA3PR11MB7554.namprd11.prod.outlook.com
 ([fe80::3ec0:2280:db82:d67b]) by SA3PR11MB7554.namprd11.prod.outlook.com
 ([fe80::3ec0:2280:db82:d67b%5]) with mapi id 15.21.0159.016; Mon, 29 Jun 2026
 03:59:42 +0000
Message-ID: <113da161-b03f-47ab-973d-96799ada5f13@intel.com>
Date: Mon, 29 Jun 2026 09:29:33 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] drm/i915/dp: Prefer DSC over a 6 bpc uncompressed
 output
To: Alexander Kaplan <alexander.kaplan@sms-medipool.de>, Imre Deak
 <imre.deak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, "Chaitanya
 Kumar Borah" <chaitanya.kumar.borah@intel.com>, Nicolas Frattaroli
 <nicolas.frattaroli@collabora.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <aiw0oaqf6Obrg054@ideak-desk.lan>
 <20260612184638.7667-1-alexander.kaplan@sms-medipool.de>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260612184638.7667-1-alexander.kaplan@sms-medipool.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0079.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ae::7) To SA3PR11MB7554.namprd11.prod.outlook.com
 (2603:10b6:806:315::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA3PR11MB7554:EE_|SN7PR11MB6679:EE_
X-MS-Office365-Filtering-Correlation-Id: 087578af-7860-43ee-5710-08ded592d92e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|23010399003|6133799003|3023799007|22082099003|18002099003|56012099006|4143699003|11063799006;
X-Microsoft-Antispam-Message-Info: 7wbfE+rkUcB7hyacAiDyAO1SJMP1eTVFQ9JiZLk2s+2iBHYz8SaP5kk9mmfhJQA1CdMP3pKsEIODSpKoE68lw5aUEZ6GBqlAEzdWDPRBzCopg63JNqtTGShMW4T9PZFLKiiM1csTkjlDJHHZWU/NkfAqw18LLv/qSPQiVswMnADfQdFIATUvW5m0XNhY0ANYFPkhME6QUA3EGmAcfsXx3pMLbhBbqTmzlRaPahREcbOnPYTBVid9odvh8SEFOU4RuXAWXDp9wZdAgw6FjJuQEYeTX1nA+ew8Nr8h4AKwTKQ9hC0IjvFSwvviCF9RaPXEpdrntkY59r3BoNn3LSVjZiX3ffupX8vLAk7c3KGNAB36P+0Ef5lodp/RDQRJ+5shL/MLwAp9S3hCT9/tZeXZiMw1QtkhhqO1qYPL5laZB3arVuOY3dZWS9Od6VQ6t+6+zcvXVKU/U2h3UnY5sioH8V2t2k8Q3WepmM2ESauu1+Fk0T6IxmBUqcFEu+xeJpfFJGfXr6Q6JUFJNM2VJvkSKj5RQcToz8sQ7IPZxuPZclD+OB3p2/uiBjAQF6TTt72jNefpaET2EJnboZG6jCMCLe4eO9KWaNwBjaVVSeei25jJgqG4IbAdKPs4x1AZwi/LkY/NsW0UA93VzAK1Xu9UuYzg2WpfJkVq2YDXI///OiI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA3PR11MB7554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(23010399003)(6133799003)(3023799007)(22082099003)(18002099003)(56012099006)(4143699003)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?clhwYUo5SEh0ZFpFaElGdzFUcDlIQ0d4eG00ajhDbytPQSszcWRVczYzVGpm?=
 =?utf-8?B?YkZWdndxWU95Z1pybVN5UnJwd0YzQ2loZVIxUVM2Y2x2dk9TeHQ5akFjRGx3?=
 =?utf-8?B?eG9yQzZobE5xSEZrS09qUGZldjMyUVJZc1pNYUlwQlNzc21ZWUpaQzFZNlg4?=
 =?utf-8?B?N3dGRjhsNHV4K2ZZRlIrbzlPaEYvaGphQUtVa0FMZmdQRFR2SXJLaTVSTjh4?=
 =?utf-8?B?ejRUUExLa3Z1N2ZsaFkybXZHK3BPbkszcUpTQ2FCTlBlOWtwSlo0c1dPNDRT?=
 =?utf-8?B?dTFNQVh4eW5kSGk3QndnYnphUVZkd3pXUFhmRFoyK1ovdUlEN28wcWxWRTVJ?=
 =?utf-8?B?SGdGZTNjbU1ZaE94M21DMGt2S2paMWtLOWlUTFU0YXI4T3Flc2MraXljeG5M?=
 =?utf-8?B?dVFrVE9JNXFiUHV3WW1WRWFHaEhCOUc3K1RaeUFOTkhsVVQyQ2VGck04UWhH?=
 =?utf-8?B?aTVlTGVUckZSQ2VBRU1MN2Q3RllLUGdkK0M3TzByUWdXZm1mVTl2clhCN1JC?=
 =?utf-8?B?cGV1eVE5OGo2RUVmMWlzN2xaTkRiR0dSTTNVdFRLWHZrSW02a2RwTytTOE1K?=
 =?utf-8?B?aTJydGhTM3NWUlY0dnFHcWJaeld5aGJoN3FIVDBXYzViVHFYUXlXQm9VbS9r?=
 =?utf-8?B?NmFlRnpqZmg2UXlGTWVMdHNWTWoxMzJJU0xlU0RFaGlQdUtKQUlLdXdHaGha?=
 =?utf-8?B?aVVPTXppWWJvMlVkVW9WV1pPUzQ4Z1VyVnN2bkZxTXdMNzB0NGlFdjFtbHpz?=
 =?utf-8?B?clBVRXpKbDQ1QmxkTjU5NDh6aHAyK0Fwck5QNDhkcnJieDVWR2hMMTBucisy?=
 =?utf-8?B?dzZ2VWhDWmc1VjVuUHpLTlJ4L2JyUVQ3UUdQT0NwbG1JaUd4cFZRN0FKM05l?=
 =?utf-8?B?OWdnOW11Z1dscE5xck94NndvUVhiQUExVGwxTjgwK1MyN2dHcG9Zd1Rhck5K?=
 =?utf-8?B?ZVpjdlJHTmg1Y2tTVUpRVmgwREwrMDZRSVNNRzhDdUo0bkZPN2FOSVQ3bUsw?=
 =?utf-8?B?a0xHWmloZGNNcFBxaWRLbFkzMytrTk0xZ1RJcHBmUlhLU040aUtyY29JRzZt?=
 =?utf-8?B?TGZlWjZRZlhtRTE4SFgvcVdBRFFncm5QbEVFdkVDMGFleTF4MlpIZW9KSDRr?=
 =?utf-8?B?cDZZbjhsQ0dxQlNqa21iclYzZ09Tdk1GaFBkaGNTVWkrOWE4MW5UTzhyeHpq?=
 =?utf-8?B?anF6d1JZZnU3Z24rMEY4OTIrckVJMldEdHN4QS96aEZjN3QxcUVrYUU5bkNp?=
 =?utf-8?B?WkpSdk9FMXozMXNqUzVkemxrTytvWUhQT1lYN3JHZ2xuT0l1R1ljWVVqNjYv?=
 =?utf-8?B?aDhYTE5mMkh5OGRSZXBPYjJRRFFjU2F6bUFhSDhVVVl5TDJCdHRibHhYVDhh?=
 =?utf-8?B?anBzV1JlRjIyWTYxK0MzT2FzaHJ2R2FpYlBwdG9nenZIaDhhZGl4ajdIaDlT?=
 =?utf-8?B?MGJLeGlHeGJXSWJvejU4Y25MNkdQbVhuRjdwU0k4eDZCSnl1aGIwNnBCQWhp?=
 =?utf-8?B?NW9DUFpJbndyOUovc0RDOWMxOElRdEJRRmErcTBzV0hKaVpZSkhsa2VjNExU?=
 =?utf-8?B?T0YwZ2F4QlJ3dm8zbU03eHJ0ek1GSTNCeVAyVStxS2NlaHIvRGNUSEZzNnZr?=
 =?utf-8?B?MlozMGRabCtaRnA5cXhHcFZSa3ZaL2ZKMWtzSC9qNjdkL1ZiOUxSVkxkVVAw?=
 =?utf-8?B?ek12cUk0V2hwQ0ZwUDljUzlEa1BlNFVKckRaOTBjYTZGeWFSeVR1NERvNmd1?=
 =?utf-8?B?WWllOFZPTEdJZENVNnIxc09vWjZQbnN6OUNyMW9td2ZtaTc4cjQwNUxpdTlj?=
 =?utf-8?B?cXUrSm5UMmRkT3pFZm1tTjJmcVNlcVJPQ3BxSUl5U3QxZzExa2gxRUpCdnVH?=
 =?utf-8?B?MGxrdElQRU9vQkNpTzNZM0wzdFpPclNwYUtJRnpXdE5FMFlvTFRSOVdOaXV0?=
 =?utf-8?B?NU0yUDFJY1piVDhMeUg1bWtmVlRUbjdoNytBLzRwTkptNlhLUHNiVVdITFJK?=
 =?utf-8?B?QnU1Z1c2ams1MmNQTHRvUFgyQ0JTRy9CdEhXVDJuNWNob3V1RDhud3I3dlo0?=
 =?utf-8?B?UXd3TDBVU3JmdUl5U3FGWmVWb0J3T3R1eks0K2tYN2FGaXgvcmZBYmtlQ3R4?=
 =?utf-8?B?N1VlOHVEN0JacXRkNVQ5OWNuVTB3TnFpR2U4dlBOcmd2Nmpxcmt3QXlYZ0Rz?=
 =?utf-8?B?L1ZXazZSeXptOVNNZTFlcWdYeTVCaElaWUtHSlhRNmZ2M09POFpQdzR6WVFy?=
 =?utf-8?B?WkZPRG1kVklSSXpqckUyNVR2VEpTSjVwY0c4bURaOFJzSlp2eG5aWXVKam9R?=
 =?utf-8?B?bCtkdFgvQ0FEU1FtQjJDeGMxdHhWL0lRWkU5WUxmZWZ6VTFiQVdlZis3dVNm?=
 =?utf-8?Q?SQKTWbWqt16U4QLE=3D?=
X-Exchange-RoutingPolicyChecked: MB1zO2v0pMmu8duZDF72BA2B68ojIQZUf6Qe2yTtuSXsSWaVQsCfj7p2Qxlwx5nXPXqVAA+hibZU0CozfZqXsGNg964sM7JBeeJYchTsMiDMMnS9U2J6QCo64IsjHRzSOUYAyL/ljnnjniy2PWVme1IlzN5bj5nnhGDxzAr/p1bYhn5NS+8qqo9jXMTtzpQEjuDKjyGGDTz1olLQbb/mVvHOTX4H7Zcyq5Mm7JoE8Dj6Vbcw3RzSKqR1CzSOCHcQ5JoM7t4jFaO2IhQcjFA8NeHqA5PjTyWdVxMShP3GHZdORYS9zdiVjlvuyKjJYLsW3sZj+1QKKaeAdPcu52sbtQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 087578af-7860-43ee-5710-08ded592d92e
X-MS-Exchange-CrossTenant-AuthSource: SA3PR11MB7554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jun 2026 03:59:42.2446 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Xyw4OBN6TgnjwEyloYQemctgd3yRp2wr5UqJtB4NpphVHdHLmMhvITAGGgf+GLRua3vx4TCUcCvtqWJ7DFZMwb6IdbOkyiUvt0glV4tvTfs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6679
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D3A016D5C03


On 6/13/2026 12:16 AM, Alexander Kaplan wrote:
> On Fri, Jun 12, 2026 at 07:32:33PM +0300, Imre Deak wrote:
>> So, this would be a generalization for/instead of the HDR logic above
>> using a intel_dp_in_hdr_mode() ? 30 : 24 limit (which would also apply a
>> lower max-bpc limit for HDR as well).
> Hi Imre,
>
> yes, it follows the same pattern as the HDR logic, with one deliberate
> difference.
> The extra crtc_state->pipe_bpp check makes an explicit max bpc property
> request below 8 win over the new limit, so the uncompressed 6 bpc path
> stays reachable.
> That keeps the current uAPI behavior under IGT kms_dither and leaves an
> escape hatch for sinks with a broken DSC implementation.
> The HDR limit currently wins over a lower property request, so a merge
> into an intel_dp_in_hdr_mode() ? 30 : 24 block would, as you say, make
> HDR honor such a request as well.
> If that behavior change for HDR is acceptable I am happy to merge the
> two blocks in a v2, otherwise I would keep them separate.
>
>> There could be other reasons to prefer DSC, like a more finegrained BW
>> allocation on MST links. But there are also reasons to prefer non-DSC
>> mode like power saving (no need to enable either a DSC encoder in the
>> source or a DSC decoder downstream), or reliability issues related to
>> DSC.
>>
>> There's been a lot of talk internally about the above aspects and how to
>> handle them in a way suitable in all scenarios. Hence, I'm not sure if
>> adding more policies to the driver like the above bpp limit/DSC
>> preference is too ad-hoc/early or not at this point.
> I understand the hesitation about adding more policy, but for this
> series the patch is less a quality preference and more a dependency of
> patches 2 and 3.
> Those open up RGB configurations on FRL links where previously only the
> 4:2:0 fallback existed, and for modes like 4k120 on a 4 lane HBR3 link
> the only uncompressed fit is 6 bpc.
> Both tested Synaptics PCON device families output corrupted FRL timings
> for exactly that configuration and the TV shows a black screen, while
> the same mode works with DSC.
> So without patch 1 the series would trade the previous 4:2:0 picture
> for a black screen on this hardware.
>
> I also think the 6 bpc case is narrow enough that it does not really
> open the general DSC versus non-DSC question.
> 6 bpc is a DP and eDP panel concept, HDMI only defines 8, 10, 12 and 16
> bpc output depths.
> A PCON that has to forward an 18 bpp stream to an HDMI sink has no
> valid HDMI output format for it, which would explain why both device
> families fail in the same way.
> Windows and macOS drive 4k120 on these devices via DSC, and they have
> no other choice, RGB 8 bpc at a 1188 MHz pixel clock needs 28.5 Gbps
> against the 25.92 Gbps payload of a 4 lane HBR3 link.
> There is also precedent for forcing DSC where the uncompressed 18 bpp
> path is broken, commit 55eaef164174 ("drm/i915/dp_mst: Handle the
> Synaptics HBlank expansion quirk") does the same for the affected MST
> docks.
> And only modes which do not fit through the link at 8 bpc are affected
> at all, so in the uncompressed case the link already runs at the top of
> its capability.
> For the power and reliability concerns the max bpc property acts as the
> userspace override, setting it to 6 restores today's behavior.
>
> If the general form is still considered too early, I could narrow the
> limit to HDMI sinks behind a PCON, gating it on
> intel_dp_has_hdmi_sink().
> There 6 bpc is not a valid output format on the HDMI side, so the
> change is a correctness fix rather than a preference, and it would
> still unblock patches 2 and 3.

I agree to this part. As you have noted, since HDMI does not accept 6 
bpc, we should narrow down the check to HDMI sinks behind a DFP.

Regards,

Ankit


> Just let me know which shape you prefer.
>
> Thanks,
> Alex
>
