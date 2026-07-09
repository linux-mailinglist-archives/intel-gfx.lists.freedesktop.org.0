Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0DwkBL9mT2oagAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Jul 2026 11:15:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F66372EC97
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Jul 2026 11:15:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="VVLdy3/i";
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E704010E044;
	Thu,  9 Jul 2026 09:15:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3295810E044
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jul 2026 09:15:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783588540; x=1815124540;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=nBXo/bqutV8cWdNVdIctkq6eqt2/RFRcN4yO0rkh3ys=;
 b=VVLdy3/iRbtX8ShJlZ/r45kOF/KDSdo3wNt/rK1cxoZfPkmCRBRDplAs
 j9+Gw7S9GV/V7b4Wg9LGboIC2Ip6aCaV3pEKr7IhzXpBXBYnzgrNDPE1v
 w/pL4qcBAy37lFvGPcCU0fzjf6clDAcsvNEeZkBmmElNrRxdD+dLT2y5Q
 s+i7GxOegn1YnC2oM/+tMcG75Z1dea1vrCUKM7o/YRMDDscQhJhgxJr9e
 OHJOWPIc2BKwwYjfrGXACjFOC0cyckZhjsDOnR/HxlZgeIZA2kL9XNQ0r
 fgoyHlMNky+CMzXTZ1AqCfA1xrB17KTy32s3cQUkKKhNX8JBYOj1Lfu0j Q==;
X-CSE-ConnectionGUID: DVjMuMWSSyqSkc77L6euMg==
X-CSE-MsgGUID: WB1HId01TreOGyIg5dn9iQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="101692811"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="101692811"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2026 02:15:39 -0700
X-CSE-ConnectionGUID: UOoahiAvQqeeXbbytrBUAw==
X-CSE-MsgGUID: WO90MJMBStqh5/rfbMtU0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="248159685"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2026 02:15:39 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Thu, 9 Jul 2026 02:15:38 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Thu, 9 Jul 2026 02:15:38 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.16) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Thu, 9 Jul 2026 02:15:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=t33TrZEZgbBHrEvS+47ekulG/4eu1eSZFYd9F9zZk02JODUKbH4GbMsPKqZRZWjS8AFXJ2PPrHrAf1MWTAa4gg1guAOkFJ4aJ2NPLXOJ7E0ogmtMSm+mAlwrp4nKxEIKHmOS6SNEhYJSRG70DwPLEY4a8A0nA9gWlUzkyup1W1cj6a2CXMCgfi4U1CftxOIW1UeNun6ftSPPskEoT9WdrjkEcZlqOiZzJ1PoLhNL/aWtprPA2GXBQ5+FPaNUmQnBtvR7x+7ef/Hti0ghBRgXz5rraveKIUjifowbV8Glaz7HmzgCHFqPL6uxsHtmZt4AvUzjgiTZnGTXgPtnApQTkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C1UJ53Ms4RhkcvqDtcbtbMWZKOMUehZ5y2ODSq5cqY4=;
 b=iIsdadVJVUAba5bh6vhTRLgDsoQRoMPhgqLLGIo14GFkcMjxnUzDZzSLxtZfyuuGIejCA18LdvcAGtX5O0gxU9Gj7o7agQsHzOCG+Gcqk3urWllz1MQ4v+ApzrZ25zi4kROaxMc1Fu3pQsSOrd6wrrfsbHkInvJkYJZl+oFrSFX1I/l4nzZ+wmhCsvWV+4QnEdxt8QJrwO9z1bAYsaeAPLlCHHWbq+1UTZERCH1PbIajwZGY3c5csrfAGTnn0O1xLoRbmfvZXonaDIFlqgLI7kxdNaF8AY6MTC+8ESAxEAbmORFldj5o6zX0V7WnEGbG0V9yryDp8LSvCxfAYYbLdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7424.namprd11.prod.outlook.com (2603:10b6:510:287::7)
 by LV3PR11MB8458.namprd11.prod.outlook.com (2603:10b6:408:1bb::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Thu, 9 Jul 2026
 09:15:31 +0000
Received: from PH0PR11MB7424.namprd11.prod.outlook.com
 ([fe80::c448:1138:6981:52e2]) by PH0PR11MB7424.namprd11.prod.outlook.com
 ([fe80::c448:1138:6981:52e2%5]) with mapi id 15.21.0181.008; Thu, 9 Jul 2026
 09:15:30 +0000
Date: Thu, 9 Jul 2026 09:15:20 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <alex.zuo@intel.com>,
 <jani.nikula@linux.intel.com>, <andi.shyti@intel.com>
Subject: Re: [PATCH v4] drm/i915/gt: Use poll_timeout_us in place of sliding
 sleep window
Message-ID: <kaocjx2mqmwwbxvrgqyrsu2wuc2l6zj7hlqphwmfse5rq2pu3t@rt56fpt6idjd>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20260706153510.1466259-1-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20260706153510.1466259-1-jonathan.cavitt@intel.com>
X-ClientProxiedBy: VI1PR08CA0246.eurprd08.prod.outlook.com
 (2603:10a6:803:dc::19) To PH0PR11MB7424.namprd11.prod.outlook.com
 (2603:10b6:510:287::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB7424:EE_|LV3PR11MB8458:EE_
X-MS-Office365-Filtering-Correlation-Id: 1d395013-b254-438b-bc53-08dedd9a9f5b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|23010399003|366016|1800799024|376014|6133799003|56012099006|11063799006|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: VLRQjpoByfnILduwtyuq82qEFPqwkpPg1mds8oS4+gRekWdkeNTF2o54MORm6SQUmpj8lF7K0ufnjDmA4HDfvqK8mJDdGiKfd5wzh01NexfeuVDOdK6PijVZtmcSO7910DhZhEHZgJiEBTWaPbiGpjK4KpN0NVVemlrj/lUzo1tNOmtrml2eNh/HZp3ja09lmWzwpExtI+02R/bE+aVnqfP+6yjnr3H1PnI0ZxzEAY7x03S1vv5Dv2MovTXpxrdFrOdsQ3fr2IOBfzOZCwuRmICbLkVtKdDkD3Wngqgfe9V8XuGKCwPswbEtpA7GEsOTHURwQCEETpzRuRd6X/pTg+6G2qiUxN8pGyxea0c4MUoUt1kylfPpI2+4cGftdROz9ZnPfycGDYZEQD+pfGqi8NPuUHN1KGnzK7mypd+2WnTfiiGdXJIq2e1rMR2UyT7dew73GbOjEMrQJRukfXyR/APaHYb//s+IJKaHCC1htqRx523sOhMqEqLoCQcxn4iT7IXZzz1qCDi0ng7MKdU3fa58cktNvx26nBQ5cAguE5ZZxCDFrNuKub40J8Jk2LRr5R6GZDNBlN3UZrQ8beUJfx4wefFAayOVkO3c8+IKj+tZ/SKUmx9QZ+IU0NG3q/kdH6l9Re2dm1yM+ntJsbmqBF/nhwf7AjLh1BfcTx5klvs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7424.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(366016)(1800799024)(376014)(6133799003)(56012099006)(11063799006)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZHJ2RUVSRlUrd2lpbzNYYmJ4UElXQ3RxY2ErQVJObGhEb09ma3FnM1lMcEtQ?=
 =?utf-8?B?VlkzUHV1cmpEZ0x2bXZFa3IyR3JQMU5zek1BZ2pRVEUxa0k4ZU11bCtWcUwy?=
 =?utf-8?B?bFBqUHZJTitZWFliWnZwZWsvQ28yRzVCTjZKYVg2YTQyaytkcW1NWEsxV1pi?=
 =?utf-8?B?bzJIS2hFRkEwSWE1TzFFS29zVUk4NnZ5RUkzbzNIeU9VS3V5VnJMdWJPbFky?=
 =?utf-8?B?SkNlcnpYQ1FpRTVQd040R0s1RTE3eG01U2szREVkclBqUUJXVlpjUDU5SnJh?=
 =?utf-8?B?Um1kVWFpTi81QkRCVHgrV0FEcGhZZDB5d0J1NE9ISEw3THBHd1VyM1dUYitT?=
 =?utf-8?B?TEJMQmVKRW92bmF6UStYRjRMZWQ5Y2hLZXNtQWc3Z3VicENWVnEwSDJQV3h3?=
 =?utf-8?B?bkQxc3p4eWUwRnZLTTdlYkZhSThZSFZUM2lxSit1RnVaQzU5d0drbE95dmpT?=
 =?utf-8?B?TEs4ZzF2MDJNV1hFaDMxMS9HdC92TkVpaFJ6V3RpaUVmZmpDdkJjbFZ4YjZZ?=
 =?utf-8?B?VVVPU2IxMzNheVFBdHpOUHNCTkJBekN3Mm93TE02MkJYWGN5bGZWYnF2WDhn?=
 =?utf-8?B?b0JVV1pGbXVCOUVTZ0hKdXVEQ0hRRWtwOHFFa2NJUnl1TVpzOUJMMEJ6bFhH?=
 =?utf-8?B?ZlVaVE1HOEc2ZndHQ29NenZGVGpHdmpkQnl2QldublR6dVl5SElOd0NvL3Fx?=
 =?utf-8?B?NTg2dThDbkJVZCtLcVNyT0dHMTlOS0t6NFV2SXI4ancwVzRoMFJQVWlGZEZH?=
 =?utf-8?B?dEdHQzBWc0hzTndNTmRjajBCWE9RVVFjUVhldWt0eUZHbnVJNEN5MTF5SU9B?=
 =?utf-8?B?TlVwUk1SZUpOT2VRWXJOMjJuMGNSdmtxRXpIb0FWQmRONVZqVk83SjBBREZo?=
 =?utf-8?B?M0w2QUc0RjRiTFVQczh4Vmp6eFpQZ0JDN1ZaVFd2dytuOWoyTHpoUENhOEtu?=
 =?utf-8?B?ZHhNdG5oNXd3YXBvUDFKOHZOZGZEdUxSUU5XamtVS2RpVjhzOS9sUUhxSTI2?=
 =?utf-8?B?OGpkNFpzTEQ2dVh4OUg4UFhJS1EwMHVEL0ExdlBRSnlzMFFGejcwNmRKZUZy?=
 =?utf-8?B?ZDdwQllNMDJ2V21jbHdpczJPeWNsWGllMy85OURhRjU0MmtBVkVESXdFZkpj?=
 =?utf-8?B?OThIaUdERzg4eWdwOVRPMzhSaFdlWnBjZEdkUTBENkhkOGNlUThGYlZsY09T?=
 =?utf-8?B?WmZnb2lIOWJFYlkwMFJUbDEzTnFzK2pmZ09jVGhwMllyMmlCb0xyaGcyWnQ4?=
 =?utf-8?B?QVFiY0RIeStuZXVDa2RQcHArcXRsV0RsbithVVhreFk2bjBnTitvbE90Q0NW?=
 =?utf-8?B?eHRqWlFLTzBvSHl1cE9QZ2JpTTNSd1ZjWE5xbmkvMTU5dkh5ZWhxV3pVYzVZ?=
 =?utf-8?B?YnY2ZEEwMGxMY3Vnd1lPaDJQVmxSK3hVRXR4NWVVSmE0NnZCY3ZmcTJrNDdx?=
 =?utf-8?B?SFFtK1EvYmVlbDIweGZTQytSK3B4Z242bFNlcExlT0JWZDhGSmZ0MEJ0VTFF?=
 =?utf-8?B?YWFHRi9FYzN6Vzhpbi83YTZ5WUMveTlzZkxvUEtEbTRvOHpWaFpIeTUvYk5o?=
 =?utf-8?B?QlFrNGliclR1WTVDZ0V5bWY0TzFIajNjZngyNEROLzRUQU9YRzIxSExiL0g0?=
 =?utf-8?B?dUkyeFhNeXNUMm9UbGo1RDhmZEd6SUVtcFJzYzBweXl2c08xdkUzVHJMRnV0?=
 =?utf-8?B?Rk1GWDVsZDBJUDVGaEhhTS8raUx2TDl1TG5iTlFWaTl4c1Y5OGhJY0syTXdD?=
 =?utf-8?B?WXFOSFpaQ2RxMjJnUDZGWk05Y3AxZWd2SkVlQ09CczIrYnV1d0Mrd1VNZXdv?=
 =?utf-8?B?SmFjVW1JS2RBaG9jbUJBV1psblRaa0RLbnBtMlpMNjMxazdOTVBjN1ZCajdO?=
 =?utf-8?B?Q3dKcGF6QjBReEt5Ny9yVjlTQnVYM1lUMUs4c09EdDFTaC9zWXdiRTVyMmcz?=
 =?utf-8?B?bkJuY1JsanpMSE96VzlPdlI0cFhCN1dOQnpyVnlURjNsTEZJQjN5TTRCSm85?=
 =?utf-8?B?dmpqU3NlVnNjRmN5S3JFbTNCUzRsdE9GdEpnbkZNcVRrK3EvVWx0aDhjUFNj?=
 =?utf-8?B?bHljTDFOdk9CV0xsYjVYK0dzK0d6SGN3MW9MNlBMd0VyeFYyMHpRcm81ZUpW?=
 =?utf-8?B?V3RWQ0pCV3orSnIxTW9UWmZCOE5jZDNQSUI2QTI5QTh0QVlJWGlDcnJ0VEU1?=
 =?utf-8?B?Vm5CR2NWVHVvRjFoQnBhMVlYOGVRRmczL0xlOHJWTTRMekpPQjFCRFM2WmhT?=
 =?utf-8?B?cjhDRmhVZG04UnA1MnByakNaeUQ0eStiZUJqUFVheTUxYWpMV2lHS01tbTkw?=
 =?utf-8?B?Vkg3MjF4Rkpocm1iRXVZZVNWNUErL3BLOTZVek4ycnE3NEpHc0xzQzNrNDRW?=
 =?utf-8?Q?2f50YMu4ptOfArL4=3D?=
X-Exchange-RoutingPolicyChecked: KhaATb1ImuH+xdrb2zoJnjCpLx0CCquknfjKIdo27ypeTuO+LM2ziJSwaAunWwtM8P0ZxrhvAYGTJL5olLpgQjUoFgRYAtWyKD+O3qWL/IUg2aRRQ8B5Zm5ZDXW6UOEkumbKyR2yKO6fmAfnt4jWDL07VinndPu1ySrV9mjO+pwHy5znlHO4BKgWephwVTu0WomJ6FgMuPZc58bhWyeidskeaOXYMwGp+2TSRgNqhQdlve6p7DmSsL7iq+BIGmvBbfT80ZVYwo1ky4mb4S0iQUEZY698FuTU0B60hklH9lN3iwzP+SfbNeZliETEeo+HJtetXZWTpM9EPnWx686W+Q==
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d395013-b254-438b-bc53-08dedd9a9f5b
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7424.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jul 2026 09:15:30.5560 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6baniiSmXmPAa0koAiLSrEJ3ss6/XfKcUXDClqsNgoUPYtWmghUAn1PDds/4Gz48aNsFYFslyyxy67KTu5lwtXkFR1/Awb1SJPaF7Q6z2+w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8458
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
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS(0.00)[m:jonathan.cavitt@intel.com,m:alex.zuo@intel.com,m:jani.nikula@linux.intel.com,m:andi.shyti@intel.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:email,intel.com:dkim,rt56fpt6idjd:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5F66372EC97

Hi Jonathan,

There was a BAT failure in sound module - I think unrelated to
your change.

On 2026-07-06 at 23:35:10 +0800, Jonathan Cavitt wrote:
> The functions intel_guc_send_busy_loop and ct_send can theoretically
> loop forever.  In the former case, intel_guc_send_busy_loop can iterate
> forever if intel_guc_send_nb repeatedly returns -EBUSY.  In the latter
> case, ct_send can loop forever if the guc-to-host or host-to-guc buffers
> get stuck in a full state.
> 
> Rework the functions to use the poll_timeout_us family of functions
> instead of calculating sleep_period_ms repeatedly.  In both cases now,
> if the loop condition is not met after 10 minutes, the function will
> report it as a failure.
> 
> This also resolves a static analysis issue involving sleep_period_ms
> overflowing after several shift-left-logical calls.
> 
> v2:
> - Reduce default sleep/udelay duration (jcavitt)
> 
> v3:
> - Use atomic in ct_send (jcavitt)
> 
> v4:
> - Rework ct_send reimplementation to better preserve original logic
>   (Andi)
> - Define 10 minutes to remove magic numbers (Krzysztof)
> 
> Suggested-by: Jani Nikula <jani.nikula@linux.intel.com>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Cc: Andi Shyti <andi.shyti@intel.com>
> Cc: Krzysztof Karas <krzysztof.karas@intel.com>
> ---

The patch looks good to me:
Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>

-- 
Best Regards,
Krzysztof
