Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BE43AF9275
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Jul 2025 14:27:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 111E310E1F9;
	Fri,  4 Jul 2025 12:27:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=amd.com header.i=@amd.com header.b="eQjhXzGa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM02-BN1-obe.outbound.protection.outlook.com
 (mail-bn1nam02on2086.outbound.protection.outlook.com [40.107.212.86])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23CA710E1F9
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Jul 2025 12:27:12 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=P1prI8MN0I4QeRcEzJRBuYQ3EiOILbkQwYbkd4b9figTEsENO7765l+kg7AV18fORXbxY7Z9dRJi5fahoVwnRyuN/+umi1gWc94RHSSmFl2Go16rY6oXyCgmWGJ3jrnOzHUZ4tr61jxH3sTo4VZcsTIkbHNsUibeVUq8nJzk45RPiEREdP1nqpAFAsSIE3fxqHdtaVHOOVCu1PTrQu30gH02E/EUyMAQF2KLle9OX8utJVxhz749ROX/Ymjq60kHoP33HTWZzs1/4GJ/pCFfUgABl+Lq7QfYxJZvfN+LZf9lGM+e/lLLkfPIgy6Lcmmmy73Vg6OZYYzZtk5kfatjxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HramOLrVGQlil2zO8vUO02CWnsE9zsOpYJVPOhRaIkY=;
 b=E+sOS1TSo8OIa5v4PjvocsplB68KVquvSt7NLSN2XSQnDQEiRxWN/gTpUiOf4DT+XHA2267dfv9o2IVxTKEjyvGm5Y0QGzoZLELuFT2MNBblDS5sXQ3O88zOFG9XRl5KUAQT8l9o9ZT0j/0nSkNyNlrO0+o303ahly8StCT1BD24tkKZW2ppcIKMKofvdQBeojom1NIGnoUGucMUgZm94VMVbGGxVA1DSETecv130g1Wz6z1s2AOFVjHhB63aUrJ8Aql5o9sTPby1FE0z0V+mOMAcZPvqVb/ufH1mTYbbJhZZt9sqJOMwGVtOCd9/D7laCbvEVA4wbVX0HlOLuzUog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HramOLrVGQlil2zO8vUO02CWnsE9zsOpYJVPOhRaIkY=;
 b=eQjhXzGaWuGQh9jqJvaa1GN6nKEWA3Y1QnvZfjkZXOJ8OqALM3+g3RKPtmg0hT9AGu4PW8KosnF3lQU6cbLOgTfxGcbnWBnH4TUptvMlhT/kZd5BMOzsC1XDbOGTfvRvY6c/0OwGMu23RQjRr7E6ub/N234u9A0dmHXSD+QFoDA=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by CH8PR12MB9742.namprd12.prod.outlook.com (2603:10b6:610:27a::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.21; Fri, 4 Jul
 2025 12:27:08 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%5]) with mapi id 15.20.8901.018; Fri, 4 Jul 2025
 12:27:08 +0000
Message-ID: <e3e14f51-b094-4cf1-afee-642de25d9459@amd.com>
Date: Fri, 4 Jul 2025 14:27:02 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/display: Change ret value type from int to long
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Aakash Deep Sarkar <aakash.deep.sarkar@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: jeevaka.badrappan@intel.com, =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 =?UTF-8?Q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 Lucas Stach <l.stach@pengutronix.de>,
 Rob Clark <robin.clark@oss.qualcomm.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Julia Lawall <julia.lawall@inria.fr>,
 Dan Carpenter <dan.carpenter@linaro.org>
References: <20250704105600.1937682-1-aakash.deep.sarkar@intel.com>
 <3b85826c1b0b03ba922c4c948d98d24543bcec67@intel.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <3b85826c1b0b03ba922c4c948d98d24543bcec67@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FRYP281CA0001.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10::11)
 To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|CH8PR12MB9742:EE_
X-MS-Office365-Filtering-Correlation-Id: 6abb60f1-b0d1-45fa-aaec-08ddbaf61799
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|7416014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?U1Z0SFlRRmNFMFNoclVyOVFBQlg2ZTNZVWVpZGUyMFg3TnRFL0ZZZk1kS0FX?=
 =?utf-8?B?Vk1obDJoUEtSSW5SNGwrb2V0K2p6ZUlIZk5nbXZCcFN6bGJRV1YrRC9VeGVC?=
 =?utf-8?B?UU0wMnhRU2dDQkNTbEdGM1YrLzNrZmUxcXhEQUx1RkxLVWJGK1RPdlY1Z2pQ?=
 =?utf-8?B?Z0QwOG1nY1JFNjU4cGl5SDg0cDdoN1d6dWhJMU9PN1A3YlZkNERhbmtwZnBC?=
 =?utf-8?B?eHRzaWYvU1NjV0VBUGdLUnRBK3VBc0RmVXdzS01zc2xmMFFxWFVCYlhrNllQ?=
 =?utf-8?B?UXpwa0c3RFVoVkxlajB3S29sR2FGeEVMWnNiTXF6SC9NTFlWdHJZSDVQb1Ew?=
 =?utf-8?B?U2svZGJMSXNWV3hPTU9HNU0rY3RwcGpZUXB4MzUwT2k0R29XTVZZcm1WY01N?=
 =?utf-8?B?aGo2YnNGOEhRcnZ5MDVFeHZoVzZLSFhha0pWZmNuNUlxVzFaL3A5QURmbDgy?=
 =?utf-8?B?bk1uTGgxVGJnTWd1QjJTUmNFNVdmbFdpOEdnTHMxcGl0amxyY1NvbGVTeEtH?=
 =?utf-8?B?ZFJZdXFXR3FMTzBmdEx0b1M3Sys2WDRTZjMzMVNCbjdKMWJpeityUUJmeVUw?=
 =?utf-8?B?eFdvdmM0ZDlqYmxJVXdTOElDVGREdUxLMTVtNXYvOXB6MFVWVlVzMUlYNjRy?=
 =?utf-8?B?aVFpbSsyRkJkM2ZRSjVhOFlGaFJ4SXphUTNwczI5TUo0Kzk5Qklva1RoMHNl?=
 =?utf-8?B?cmVMQXdBbjUrVkFjTzJudGJJOTk1TVdjL0xBeHVLc2FqN3VJMUtjb0VrVmdK?=
 =?utf-8?B?TzNJeWp3ajYvTnR1WUtDczNFdk9tLzNKdjJyUWFXb2MxdXNWU1k1UGN6dFpj?=
 =?utf-8?B?U2RJay9VNzFnOE1rN1lkZE5vQkIzV3JwWTJ1cnNaWWNIRTFoV1dGQllrVE5x?=
 =?utf-8?B?L2hJYmd6K3h4ODdOa1dkdFYzSlhvTEh6aHpTU1dzVlk2RmZYdmVmNDR0NDNm?=
 =?utf-8?B?OEkxRHRGRzZtQis2NTFFVkcreHpJanVjU2dzYTFNT1psbDdqNEhMbHVpWjds?=
 =?utf-8?B?Y0dJNVFza2xWZHFPWEdFVTNSV0RvN0E0dk45WGNOQnRMMUpFbDR4TWpZKzZ5?=
 =?utf-8?B?WHVhUnhRSUlvWEN4RjRycWg2b0dLa2NaN1R4dU5oVS9UMUlpd0pxL1pYLzNt?=
 =?utf-8?B?dk53YlJacUU2RC8rOSt1VGU0WTUwY09FbGZyTG8rci9iN1RsNm1ZZFBHL2Ir?=
 =?utf-8?B?MXhvcUpOYjVQOGJWNHlJUktWUk9YRS8vTDV2WW1BZ24zaE9GNWFZL1padzhO?=
 =?utf-8?B?bWpVaFd4djFmbThSNVpLZ1NpK3dzajRDam90Z3I5UE9LbkNGN0JaaXBMZjgy?=
 =?utf-8?B?d3c1TnFnbTlpY2V1VzBsc0lUVzBKSVp0ZkxHaUUxekg3K0sza2hNc1Q2QVZI?=
 =?utf-8?B?UW5TVzJ5UXhDQ2Y0SnJxajQ0OHJGWDJLeC9qMzRwZ2N6OHNMdUlacENENjlM?=
 =?utf-8?B?NDhiYU9oV01HY3FvU2t2eVRJSTdhY3hBY2FlTVZtbEg1WkI1NjBILzFVeUZj?=
 =?utf-8?B?Wi9vdDRhZDVVREZEMVg4ZENIUHppMThWU0NvUVFueEdubktxLys1WHA5L1Jk?=
 =?utf-8?B?Q00zRHg4TjhQSmg2N3llRlJ6NG04dDJEZHNCNTNnZWpCT2ZsaEdtVVFyRkMz?=
 =?utf-8?B?VHZEUGxCODdiN1UwQU5uVWx0MDJQd21DeEQwSDNYWTlqb1VMQVhzTW9yajRh?=
 =?utf-8?B?cENySUhEK0NZNlUrQmY4S3RYTVVMRjlKdlhWdDBpMFM4MjZZaFBkdk9lb0d6?=
 =?utf-8?B?YWRtWHBvdzkyd2cwUGN1cVYvd3lGQ3VlbHcxL2xlak9WQjVBMW9JaUN4N25I?=
 =?utf-8?B?dUU3RlhOQjRDNWEwc0pmR2t2MWVBa09laERFNXYwSmhtOHRnS2JRNDROQmZL?=
 =?utf-8?B?MlVpQVpOd1ZxMlNqTk5ldSt3RUh3TGlQaUZUdzJ4eFlZZFhGRTkzc0pvSy93?=
 =?utf-8?Q?Z2nLOaytUlQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR12MB5685.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NWtncEJGL0ljZmRua0h1NkRYbU1LckV6VnowYVd3WEpSQnF1bzVtNHJyeDFz?=
 =?utf-8?B?V2xKVXJrOUpQaHFEdys4VVI3by9nSUIrU21qeE1MNWEwNDJVdDJvSFhKL3Z4?=
 =?utf-8?B?WjY4a3JIUnRZL3JQcjBIYkowSHk4SDN3THhCdXM0dXluWExPMTJyNVdEckEv?=
 =?utf-8?B?Unk0SWR4b1NPSnRKYkhla0xFeWFPTXBFUmR2cmZod2MwSzFFS2c5SFl2eFlx?=
 =?utf-8?B?eWlQbnpzcURmM09KTHQ2ZGFSL1Q4cTl4aFNKcWNUUzF3SkFhZDk5NEgxc0dZ?=
 =?utf-8?B?M1YzWFQzNlY1T3J6K0JyTyszNXZIUXlxMVc3TUt6OFpwQmRJUmlZWkVDTExN?=
 =?utf-8?B?T0NvN2hUbThvOGxLTFhRR2h1VjZLMGxHQjN5U1RMZWtiQnlhNFJhV1BCY2Vl?=
 =?utf-8?B?TDdzaU1CUWEvc2Nmem1iWVliM3BIM012ZmV4VUxwd3hrN2prZ1VuTDV5d3Vh?=
 =?utf-8?B?aU9FVEhvUkVmZFZWaGRIdG9uRzJGWDVSUk03Tnd6aGYyaUQyNVg0d0Vra0Rr?=
 =?utf-8?B?bTFqWTFkNVZJcE1xaVRxY0M3R0x2YlR1NDBsbmh5RmtHUlAxeHdIdURlZ1FR?=
 =?utf-8?B?WFM0bFB2clFNY0FNSHJBQXJhUjFQYTgvSG5kRU03STd3UVB0Z0RUN2hNY0Jn?=
 =?utf-8?B?cmFjSmJHWFZzYjZzQzVzKzcyNXd0aHdKMlY3TzVKT3pPZ3pKaEV4VUJ4emVT?=
 =?utf-8?B?RFl0a0lWNC9VL2trVHorRXU3Y2xnbHJ2OEdjVzNhTG5xaTJVVEtpV25UNG9j?=
 =?utf-8?B?QjlHd29EWFFHckczYUpNM2oycW00UGpXa1p3RVBtWmk2dWlQV21FOFQ4Mkhp?=
 =?utf-8?B?aFdrN3NTYm10SWRDeWFaekNVamdWUEExRG9MaVZJUXVuV0hqdmdoSUt0YWhG?=
 =?utf-8?B?Uzd1YXpnVjdhVlJvTGxxTFhJTzBoMUM1ckE4Z0FWMU04QmVRRlFiR0QveGVI?=
 =?utf-8?B?SXl6YzgrWTdVWEszY0pGMkUvYU4relJLTk5iYThtL1Z2NW1URzdyaGNCbnpG?=
 =?utf-8?B?WTVhNHVoZWZoOHJzSDVmcmRYV21ocTc4RWRubjR4WWJmQjk4bFZBM2pWWFM0?=
 =?utf-8?B?SzJlNlN1TWpKNFViQktwS1hHOGNDeWZlNFFrMldHZkpVRWdIN3IrQXEybjdI?=
 =?utf-8?B?QVQ0SWlKZXhHRlYwTVhaYWtTYXlkQXFtVXBJZldUemtPV2pUSGxvTndSd1N5?=
 =?utf-8?B?ZGlJWk9HYXJwZTM2VHAxOXBjcG5sUUNLalk2QkptcElyTi82eDBDeTRvMktU?=
 =?utf-8?B?YUJ0cnppb1hJTzM5UTdPOWVKQlJFU0lCdHE5TVlGcS93T2FsYWd0SGxOeTUz?=
 =?utf-8?B?Y3Z0NU5vdmtHeHB3Vzk3UHFxOTVoOXlzNW54bTd3MlowOExuelpCZVVKbXFx?=
 =?utf-8?B?VmxZOFdKZFdzTmhUelNQNFpUZVdaR09pck41T3FTMG14dVBNWVB3Y2JEbVhU?=
 =?utf-8?B?M3QwYTAvU0ZhZVdQRVNzR1JyS3daUkVBb1NJa29UbklUTEl0TWQ0L0VsdFg0?=
 =?utf-8?B?c0JZWDRya2lHN2dZR2RxblZ2R1NKQXBwbElYTkRVSFM4UHZGazlyYnVHclI5?=
 =?utf-8?B?UkJiUEEyOGFuWEk2UDlFRzltTi9SbHNPd0NZSFhiWHRTSGc3azNQZVpmZERy?=
 =?utf-8?B?NTZpNGQxeWMrd01RcHJ5MGVQaG5hMnpHZzhyYVA0RU52KzlBRXh0ampsZTNu?=
 =?utf-8?B?Vkl2cloxTWFtb2YxdUNjbGkzT1RiMFJqNGxBYWgvNGtJdDBWdm9iYW5RUEJV?=
 =?utf-8?B?MDJLdXR4RkpLaitTQ290aENoOWZ3Q0hwSDZpcU5Jekh5bm9RZGNJUkxPOWhR?=
 =?utf-8?B?TjhQNWxoVGVyOGRPQTlaOHcrRitUOEYyR1YyNHVsM3V3YWRDSS9KRUNWRVpD?=
 =?utf-8?B?NHROQ0p5OFFDbEdlZVNrUjV3SEE3TFRQSHZWZWJpMWZ4ckRZWU8rZzRMM0Fv?=
 =?utf-8?B?dE9ZdE8xZkF4VEdtYVM1U1dkR1IrNUVyY2JDKzNsQzZrTXZBTVUrZ3kzR256?=
 =?utf-8?B?OXVtZmlrRkg1QTA0Y29HUGJhQ2E4UmFhdlBmQitLSTYyTzlTUkJkd2hmTmlj?=
 =?utf-8?B?MmwralFyQ09xNUZmZ3N3ZFhocmVQUjJML3NEY1JkZFpuOG5LK2ZiRkFGZEsw?=
 =?utf-8?Q?AbUXctG9zUX8D8qeCQQ8Kh9+k?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6abb60f1-b0d1-45fa-aaec-08ddbaf61799
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jul 2025 12:27:07.9429 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: D4KyxX9g3Ir3WGgTXnYfODrmmj3iXQqhFMi58oUMgBxpLmH1D0eF1muAfhFoOfh9
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH8PR12MB9742
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

On 04.07.25 14:00, Jani Nikula wrote:
> On Fri, 04 Jul 2025, Aakash Deep Sarkar <aakash.deep.sarkar@intel.com> wrote:
>> dma_fence_wait_timeout returns a long type but the driver is
>> only using the lower 32 bits of the retval and discarding the
>> upper 32 bits.
>>
>> This is particularly problematic if there are already signalled
>> or stub fences on some of the hw planes. In this case the
>> dma_fence_wait_timeout function will immediately return with
>> timeout value MAX_SCHEDULE_TIMEOUT (0x7fffffffffffffff) since
>> the fence is already signalled.

That is not correct. If the fence is signaled dma_fence_wait_timeout() returns the remaining timeout or at least 1 if the input timeout was 0.

Could be that i915 has a separately implemented fence_ops->wait callback which incorrectly returns MAX_SCHEDULE_TIMEOUT, but i strongly doubt that because that would break tons of stuff.

> If the driver only uses the lower
>> 32 bits of this return value then it'll interpret it as an error
>> code (0xFFFFFFFF or (-1)) and skip the wait on the remaining fences.
>>
>> This issue was first observed with the Android compositor where
>> the GPU composited layer was not properly waited on when there
>> were stub fences in other overlay planes resulting in significant
>> visual artifacts.
> 
> Thanks for the patch, good catch!

If I'm not completely mistaken this patch is not necessary.

dma_fence_wait_timeout() does *not* return MAX_SCHEDULE_TIMEOUT when the fence is signaled, but rather the remaining timeout which is the input value at maximum.

So when the input timeout fits into 32bits the returned timeout also fits into 32bits as well.

And as far as I can see i915 is using the config option DRM_I915_FENCE_TIMEOUT here. So as long as you don't set this to very very large value this should work as expected.

>> Test: No graphical artifacts with shadertoy
> 
> We've never used this commit trailer before, please let's not start now.
> 
> The subject should plainly state the "what", and the commit message
> should answer the "why". You do have that here, but I think the subject
> is still a bit too much nuts and bolts.
> 
> For example,
> 
> 	drm/i915/display: Fix dma_fence_wait_timeout() return value handling
> 
> would state the "what" in *much* more helpful terms for anyone looking
> at git logs.
> 
> Presumably this has been an error for some time. You should do a little
> bit of git blame on the offending lines. It'll find commit d59cf7bb73f3
> ("drm/i915/display: Use dma_fence interfaces instead of i915_sw_fence").
> 
> Based on that, we should add:
> 
> Fixes: d59cf7bb73f3 ("drm/i915/display: Use dma_fence interfaces instead of i915_sw_fence")
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Jouni Högander <jouni.hogander@intel.com>
> Cc: <stable@vger.kernel.org> # v6.8+
> 
> Then it occurs to me this looks like a common mistake to make. A little
> bit of git grep on dma_fence_wait_timeout() quickly finds multiple
> similar mistakes in drm, at least amdgpu, etnaviv, msm, and tegra. Cc
> some maintainers FYI. This class of bugs could cause issues elsewhere.

I can only guess but I think all those use cases use a fixed small timeout as well. IIRC amdgpu uses a timeout in the millisecond range.

> Let's also Cc Julia and Dan in case they have ideas to improve static
> analysis to catch this class of bugs. Or maybe one exists already, but
> we're just not running them!

Yeah, agree. A script which checks if the input timeout could be >32bit and the return value is assigned to something <=32bits is probably a really good idea.

Regards,
Christian.

> 
> Finally, for the actual change,
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> 
>> Signed-off-by: Aakash Deep Sarkar <aakash.deep.sarkar@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display.c | 3 ++-
>>  1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index 456fc4b04cda..7035c1fc9033 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -7092,7 +7092,8 @@ static void intel_atomic_commit_fence_wait(struct intel_atomic_state *intel_stat
>>  	struct drm_i915_private *i915 = to_i915(intel_state->base.dev);
>>  	struct drm_plane *plane;
>>  	struct drm_plane_state *new_plane_state;
>> -	int ret, i;
>> +	long ret;
>> +	int i;
>>  
>>  	for_each_new_plane_in_state(&intel_state->base, plane, new_plane_state, i) {
>>  		if (new_plane_state->fence) {
> 

