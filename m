Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EHokEE3P4GkkmQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 14:00:13 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4CA040DBC9
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 14:00:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1564610E896;
	Thu, 16 Apr 2026 12:00:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="GS4FsRNA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from PH0PR06CU001.outbound.protection.outlook.com
 (mail-westus3azon11011011.outbound.protection.outlook.com [40.107.208.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6633310E893;
 Thu, 16 Apr 2026 12:00:09 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wHltc/mzcmgwhvwX0Df4a/AfxepEteL+BdFSWm4Dnvyrv5O2JWw0M/sQm5tPnI5ZZTR/8up+P+LGLLCcO43OBgg+2tJYjjIsu5p5HmfnG3b6UCp6sqbGpVnCofkBDKtL8H53GZYozUIVErJ6EVa5N7q93llXYnI8baRiFO5IIO4ELUmAbWJm/mvbFLc8vAabBpjwHtmhPkKGwEreV6A7hZ1N2Eywbu2xE9lJqrnpctd3Hq3coeH4dMI1IIa3jNRWnuwHvxBWINywYaoBidC3HHBCm9uFVSAeHF9x9bU/otsFuEaL+4p3ZgwlrK+ot92WKDI4JU762jbYVRb4vHhztg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7W5DslnPbBMISsos8+APnUdF+rXLdA3Gu0hRAwTad2E=;
 b=h6NEZpB9D++0GhbN8TEWrfQ4nNDuuBimEhutajVPWyZqKhCHSGV/V5SvIxaPhWPDL778yOgFG5w0bnzn8SsEIGLkSCCt7M3e4k5liDfmK82U6IugeCWE6S/QD1ExUJdP/JmKRyEo0CaIRUv6HHwBfWCxZFUmLht1GsGYSv/Do6X5CW7AJ2auHW0XmvBraM5H5Vkwr8f2/nNt5T2xIcFjJYEo/OPF7Vu5FNcbqmAMDuZwfgUxARt4h7OwUj3uBpTAYsFwc0/sXXjfBpCZx21UjK/NSFpi5DgFgcLHDVhLqk4VgRk4dGT9uUpb1YWPK5s3iU3BjD7ZaMmAx++IEqQjfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7W5DslnPbBMISsos8+APnUdF+rXLdA3Gu0hRAwTad2E=;
 b=GS4FsRNAEcI2kTPYLq0ZI2eMW+8Q/pTBWmZ094BXKfGUKOl9BNOLIgYcJ74t8aJDoJb2jdV1Rife0jBtpRMkdDHKy2d4to7954IS9SHVaYl0niYejkNAj0wxFe/5bFeTa8q/Y8IYnnerh+G+15OGmcYGjiRJdBtEr0oLEDVOyjeNf+p+svtoXpNQ7AR5UDrXpmyzXW+CbLW3WXTgTPNN9F5E8zCIkUSjxuR0kwFbVySRbuWAl0bvEHQF/F1XMdNIdbbkyRMaJVesb9I+8+7ErnQUA2iA7ahCgPkGJmKu8Y4OTMdPb7xHF2GmRX0nnBoCV5I6LFoxAACFho4bop1wMg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from LV8PR12MB9620.namprd12.prod.outlook.com (2603:10b6:408:2a1::19)
 by PH8PR12MB6939.namprd12.prod.outlook.com (2603:10b6:510:1be::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.20; Thu, 16 Apr
 2026 12:00:02 +0000
Received: from LV8PR12MB9620.namprd12.prod.outlook.com
 ([fe80::299d:f5e0:3550:1528]) by LV8PR12MB9620.namprd12.prod.outlook.com
 ([fe80::299d:f5e0:3550:1528%5]) with mapi id 15.20.9818.017; Thu, 16 Apr 2026
 12:00:02 +0000
Date: Thu, 16 Apr 2026 09:00:01 -0300
From: Jason Gunthorpe <jgg@nvidia.com>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Cc: David Airlie <airlied@gmail.com>, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Simona Vetter <simona@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Tvrtko Ursulin <tursulin@ursulin.net>, patches@lists.linux.dev
Subject: Re: [PATCH 0/5] Replace the dmabuf custom test framework with kunit
Message-ID: <20260416120001.GA761338@nvidia.com>
References: <0-v1-0a349a394eff+14110-dmabuf_kunit_jgg@nvidia.com>
 <7c30f527-abc4-43a9-a11c-9233015b0a59@amd.com>
 <20260302130113.GV5933@nvidia.com>
 <c088698d-0bb2-4b0a-acad-946ec3df5777@amd.com>
 <20260407123530.GA3395114@nvidia.com>
 <60cf4c5c-9a4e-4f1f-927e-75ae585d5e9d@amd.com>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <60cf4c5c-9a4e-4f1f-927e-75ae585d5e9d@amd.com>
X-ClientProxiedBy: BLAPR03CA0179.namprd03.prod.outlook.com
 (2603:10b6:208:32f::33) To LV8PR12MB9620.namprd12.prod.outlook.com
 (2603:10b6:408:2a1::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV8PR12MB9620:EE_|PH8PR12MB6939:EE_
X-MS-Office365-Filtering-Correlation-Id: e165b19c-18a1-41a8-66b4-08de9bafb0db
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|7416014|366016|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: dEL74G4OQzQkI6Kvq1oOGvADk5slFnwKgiIPiC5jUIQQOsAIJbhCo2JtOrvkF8owN6tHetPslRgf4gKTbwyf548iwcDmbX7jUx/mfFmdPsNB+hOLmm9yYskIoPrTOEXt9IwkBkx8BD+A69uYmIWqZ7KPmllBuIi1gB2d0uD/wH0KrpPj8voGHAxjPo+vbYEWYQO4W0kRZkEBic9bGm1iICc2vBzjmeghB+nLUjiGzsuZnQG/KXwIR+WedvvFny+Hv1RsqxlTYzFw4HRqM99vq1tZDh6pDdQ2NnWr9Kt1S1e2denNkBiPJVa/zITDouGnotQKZG+fnufcK4syph3GBea2YEDm91Jk4nRM0QqrsmRAF2cG5Snxxaj3eEm/p777Y11dFAt2pXXxjiq2AhTnNw35nsNauiywcrCqGImgeptwuC3jchyT9nxqf+sN9v8rvFJaifMMbTHa/M8G4Z9GOGMKLHOD+G9XGxoQtbLxH6uY8eADIsSBkicYXOOaozH5Wg6DycN0GfksEVBqOhHBACFIPpkT+zVOujFTScxdKUdj52d5kOmnabWe0VnuEMaeEL8VhYlFJOz1KjbRQgU7MS3YhV7i1yX5XMQ4ITGvhLNKUlVHtAhA3gKqPItxN7eH79fa9l7CnS7WjBG1fvIfZ9IZk53uaali9j5g5J8eiKLSYDmPAX9pYKx2iUNojA4rryYodouf8oLoOxe4DshRVBF2xzPyaaczqT05OjFSUYI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV8PR12MB9620.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(7416014)(366016)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ejZBVjcvUGdsNFVyZnBwRFliU2kxRDR1b0RIWkRkbGFaY1Z3b3FkUG5xMEs1?=
 =?utf-8?B?dVJ5akM0NGg1cm1vVkVYY1dIOGlyWFo4cW80VHBYTGxEZnorbWdCV3NHZEox?=
 =?utf-8?B?TURnY2p0T0huZXJ3UEtlT2wrMC9lT0ZqY0RSUkFrY3psK0o2ME53WFgrV2pJ?=
 =?utf-8?B?eHFIVnR5dWJ6OVRxUjd1aGFhQUZSSEVoY3I4VmY4UkxxU09sVUNoZHRacVYz?=
 =?utf-8?B?RTlibjB1cHBpYTgrRVFiWUpYMzIvdElDWUtBNkJaU1NsS2U4YTFjWFRsNUdy?=
 =?utf-8?B?Vm9QdVNvUVBCemplOUN3RVNJM2tMSjhCTDUxMGp6eWNlb3RMTDdPYTdlUUpu?=
 =?utf-8?B?a2YzbmNuTWhHMTFOK1FFSWxZZ1AwL1hmOHo2eEp6MTBwZEtsYWt3eHNpZlVt?=
 =?utf-8?B?UFFPeklkN0F2WTlydTZPOTdKZS9ab1FERU85cUNVaTlHakFEaUlydUFhc1FH?=
 =?utf-8?B?dExiVlg3RTRNSlV1NVNQVGlOeWh3dW50ZTkyb21QL2trV29VMzM5dzhFblVD?=
 =?utf-8?B?RFg0RjgwSlRRZ0RBaFFMY2RReERhRm8vV3pkc0Y0Q1ZWbEYxUXJQelQrNzg4?=
 =?utf-8?B?UGtDU3AyUEhxYzBkeFZmcGJOdU9waE42YVZLN1RocUd1dEVXT05QNUsrbUlY?=
 =?utf-8?B?Nk93NTJtdGVqOWxnMGZxc2VqNFlHK213ckZhazNrdWNDMHNxaTFHUDhjQitH?=
 =?utf-8?B?N0k1bWdKQ2RaNEVNK0VUS3h6Tm8zTFFwSTc3N2hCeXowYzhCcy9GWjEwOTZu?=
 =?utf-8?B?U3puOTRsTFZsWElSM3k5NThrajA3M0dXeVhwanUwQVlzSm5LNzdWUEhRZWlM?=
 =?utf-8?B?ckZrNVlrWFJFcUFDcmk4TTNBcG9rNVJIM3U2MHZPL1FaVHZRZVhJaENYWnlW?=
 =?utf-8?B?M2VmM3JzNHUwcGVia0NYRThxUGVFREloUGdSTmF1Q0V2ZDl5ZlZTNWxUalFB?=
 =?utf-8?B?WG95SEFUeDZMMDNYT3QybmNoYVlxUDZ1UE1iYmtuZFhyNjQ2WEZXbUIvai9y?=
 =?utf-8?B?a2tGQ2dnUk9IUXd3cE9NclRuZUtDVGVlQ0xSek00VTJkTjNmWEIwM0IzaEs4?=
 =?utf-8?B?Slo2UFVwRnBZUHQrUVkxdFp3OVBuRFR0UXNxd282SDFteW5UYkRGanVmWUYr?=
 =?utf-8?B?Q1piRWR0UnpvYjh0OGloeFowUjdyMmVwVCtUSWlwTTZuN3lpelBlN2lLc2Iz?=
 =?utf-8?B?NEsvcXVGeGJrU3pBT1MrQVFRckFpYUFhTzZqR3dONWxmbXhkRjlWSUVJcjZz?=
 =?utf-8?B?S25LSWRYeHFFS1hDRkhQQ0VLVkZlR1U0am9jSWpBdzc4aS9NSTNwMktiMjVt?=
 =?utf-8?B?YWJsZVEwK1hGK25JSFk3dUJmTjZ5WU9ZdDBKYUwvUGw2bG5NaGFTRDFUWS9m?=
 =?utf-8?B?eGR5Wkhlb2YzeDdFTzVxWWF6OFJIdFl4dFlZS3FxaFo2Y0h6d2tFNTdBS09r?=
 =?utf-8?B?Sno2TzFOcTFxb2oyVysyMENnRytxMmlwN2VQNDQzR3pwZURSQkFMYlkvWVM2?=
 =?utf-8?B?VFIySllHZ0F6dFZDNFBEZlFRbGJBdHpIWVc3amxmS0R5QmVaVDBaN21QTk1Y?=
 =?utf-8?B?UWlOR0NnZ01qTWJZeU11MlorM3BzYXVjWXlESk5XdTZyOEhrWmJ4dG5pSFgw?=
 =?utf-8?B?UWFwamIvUjljRUUyUWQxY1YwMWp3a2NGMExwVTFxaER2WmpFaEgzL2dHWnU4?=
 =?utf-8?B?Sjg1Rmk3L3BaQ3RzRndMOWhzQzdHUndpaEkyYlZuWlppYWF0cE9VNTNURzlv?=
 =?utf-8?B?OFJzRkJLdHloVThPSWk4bGNIbkhsTStPajdSUDZoelNmWUFER3JjeEJ2OE1D?=
 =?utf-8?B?UmdYNFFScHg1MFF4dnRIa3M1VVJqdGYxM3Nxb3FsVXl1MnV1bVdyOWJJdDJW?=
 =?utf-8?B?d3J1TGZPV2lCWXR6STMzaTBUeGc1c2owcEUwQUdvY1JVRkY2aUVwczlDVWk2?=
 =?utf-8?B?UFFLbTJvOGJWYm5IbXV3RkV1RGQ4NGxTL0hGcW54TGJYY3Fsa0o3NTJqVGRJ?=
 =?utf-8?B?RldrcHU0VEFjb3JRbVhaenRWYitoK09DelFsckg0ZFVZZWk1MEp1SVl1T1Vz?=
 =?utf-8?B?Qm1UWGFoMzA1a08rbUsxNi9FN2cwbjcxTmY3c0xTazBTYU1xTVI0cVA4Z2c2?=
 =?utf-8?B?MjdDUE1vSmZ6M3YzazdiOFdjTkQ1VUMxSTZjMkhhZjdWT1VVZFlsSHdIM1Zx?=
 =?utf-8?B?V1RMOERYZEk5K1RhN2NWMG9XRERsR1RkR0U3TkREbUVQK21XRVlnVnY2ZkdZ?=
 =?utf-8?B?U2pwWEV3ZzZ0TWM4Wkg0OFdTUUk1d0FKa0pXTFkxTzUvMU45cjE3UGs0dWZt?=
 =?utf-8?Q?t1UDHZH5kXg7Uv7HHX?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e165b19c-18a1-41a8-66b4-08de9bafb0db
X-MS-Exchange-CrossTenant-AuthSource: LV8PR12MB9620.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Apr 2026 12:00:02.5750 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uzBbn/LMK+cLwM7rgr/eNB7tElK0h4Wh0X0wEMUkJt/OmeqzD7YVAKRuI344EHfr
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR12MB6939
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
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_CC(0.00)[gmail.com,lists.freedesktop.org,linux.intel.com,lists.linaro.org,vger.kernel.org,intel.com,ffwll.ch,linaro.org,ursulin.net,lists.linux.dev];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jgg@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:mid,Nvidia.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: E4CA040DBC9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Apr 16, 2026 at 12:37:29PM +0200, Christian König wrote:

> Sorry for the delay but at the moment at least I get flooded with AI
> generated bug reports which are at least partially complete
> nonsense.

No worries, it isn't a critical thing, just cleaning out my deck now
at the end of the cycle.

We have also been getting more AI stuff of mixed quality..

Thanks,
Jason
