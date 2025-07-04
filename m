Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35D81AF9558
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Jul 2025 16:22:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A749B10E055;
	Fri,  4 Jul 2025 14:22:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=amd.com header.i=@amd.com header.b="WqoWTdI3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2069.outbound.protection.outlook.com [40.107.244.69])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCBD710E055
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Jul 2025 14:22:45 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=d3UTthAvdDnJiU3dFItVXOYKEizi6PqeRr4yMH8293MrpXzeIa7SW7lKgShEfzyNgkQbT3qHqJLYJT0djiTj/IlAenY8d/hoA7bmLOnFAvn8jm4a4f1Bofmo1ssFnJof+ez2sJ930maXb1s6eBlIooG00ZWc/YiKUEVpQdtSpn0SGUtAIDKZkJ5QXF04qdCG964SWsGJKDAennsAulj0wKUWuyG58TF1tmspcg48/gBaYrgTWE2qTCUzIGW9A0c3BRh7lYxg1pwHnX9iD6vpgVti/uy2eVpGkgmg354kvUDLcVTJc41YTTcJgeZOGGRbwKCR18sMQPdZTH4cSb9/zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2eBOnsZU6i51dkkLNUOAqgLXuSVWDfMLprp5/xq51Cw=;
 b=AGT2Thah+861aI9T5K2b4uVDn2KVhmrELGdNJq3S910WBRfahZNDRrUEuKxl2A/53TDP1zRE2M0NSjRm7GQ36NycGzfoGanOWgPc84b6srj1x8Ywf+4gtOHbgMQnzhLs6JNVO1jiokjDLfhqMpRlWKTmjbpgWf1Yr3GkF2IdZqHf/qMZja7/9XNSmZowXLg62bTJgAxtngoxgu+Dq/aObj7D0sCxFoAKjnugXe5jVv9KeUN7T52z37DnuuAONx/jOqZmI35HTfNqF+8AwRt6/ljcew3PLTF8xifyeLUfh6b1k7C1fbwRbIpuxg0kH9k2Qsxg/eYPAdcZrn9VVqgh2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2eBOnsZU6i51dkkLNUOAqgLXuSVWDfMLprp5/xq51Cw=;
 b=WqoWTdI3652ZykLQZLbtnpNpg+8X8zm/rbm89OSSLrXP0Bv8HShZuuqEw1dcCr0F2WRcsiAAglcXXslbAD7RCUVfe5DsItkrINa2IiBw+zhxTi6KqHwbRx54/oR1+eu/m48h2RdlRSmEkRoYKm7h715SBUjYDHUueXLLdZ6BYj0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SA3PR12MB8045.namprd12.prod.outlook.com (2603:10b6:806:31d::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.35; Fri, 4 Jul
 2025 14:22:43 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%5]) with mapi id 15.20.8901.018; Fri, 4 Jul 2025
 14:22:43 +0000
Message-ID: <dee95fe3-65c3-49d3-806d-7346d6ea24b1@amd.com>
Date: Fri, 4 Jul 2025 16:22:37 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/display: Change ret value type from int to long
To: Aakash Deep Sarkar <aakash.deep.sarkar@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: "Badrappan, Jeevaka" <jeevaka.badrappan@intel.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 "Hogander, Jouni" <jouni.hogander@intel.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 Lucas Stach <l.stach@pengutronix.de>,
 Rob Clark <robin.clark@oss.qualcomm.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Julia Lawall <julia.lawall@inria.fr>,
 Dan Carpenter <dan.carpenter@linaro.org>
References: <20250704105600.1937682-1-aakash.deep.sarkar@intel.com>
 <3b85826c1b0b03ba922c4c948d98d24543bcec67@intel.com>
 <e3e14f51-b094-4cf1-afee-642de25d9459@amd.com>
 <CO6PR11MB5668541E036AB8429F779226D242A@CO6PR11MB5668.namprd11.prod.outlook.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <CO6PR11MB5668541E036AB8429F779226D242A@CO6PR11MB5668.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BL0PR0102CA0039.prod.exchangelabs.com
 (2603:10b6:208:25::16) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SA3PR12MB8045:EE_
X-MS-Office365-Filtering-Correlation-Id: 8bde03c5-55ff-471a-7d36-08ddbb063d92
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|7416014|376014|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?d0NJNnVqWURqN0JORXRaZXU5cGpCV0JUNmxOclg0N3ZYelNmMHFhcHc1RVpj?=
 =?utf-8?B?ZWtJR0NydkJqcnVEOW9zTm9OS0pZeWh0eFZCVVYyZzI0OGVaNW1rQURRTWRx?=
 =?utf-8?B?bE1DMzNvWHo1Z1YyZVdkTlhmcXp2SXpCYVRLUVBvczZ0ZlQ0RTBMWGxPSC8w?=
 =?utf-8?B?QnZ3VmdNL1BMMTJaY25WVlo2OHl2d2pzUzdKTzEzcWNVSElFTXByb1oyVUVK?=
 =?utf-8?B?UUZucUh4TzR6dk8vSUZ4MVNoTlY1b2k2TXUwenJyYWtrRVp4dm9XRDlaNEV1?=
 =?utf-8?B?UHkvd0hqcXluTWUxUmhjU0c0cVZBSlc2WklKNHQ5dWRqYmtoSkNwUDhkZGpw?=
 =?utf-8?B?U0I4b3Z3akNDR3lvZitRcWFaMTN3Z0lFOUU4TytjQUQ0TnBENDIzRno2YWlL?=
 =?utf-8?B?MkVOcUxYK3FQd1lKQmZUbFRURml1R3pBUEY2eUI3NmgyOFZyQTU5Z2F0UFhn?=
 =?utf-8?B?dStTZFFoeGlYa3VtdXYyNnVXcHB4TThheVROVG9DeTA5aGNnZ0ZNQ3JHY2Ni?=
 =?utf-8?B?SXFTb0QydGhYSGFBY3ZDcnhVN29VU2J6QVRXWldZVFFvSXB4eVhZeHF2N2RZ?=
 =?utf-8?B?L2NoM0FhWWVYUFhHdXEvSFowSEVhUzZpRHlLTHlwTzJLc0tKK1p2c1VMUFpq?=
 =?utf-8?B?MDNuMTBReDVZLzBvbXhNdUp4akpnR0JwYXdFbEx1Si9pelR0dUpmTjlqa2Y0?=
 =?utf-8?B?bXV0YnNlSXdxc2hjZVdWK09kc1pudUNGaTRLbENoUXZMRHhWNzI4RXpoWHp5?=
 =?utf-8?B?MnhCNk9paC9MZy9Kb1AxTUFlaU12TkJRekNmeEhiazNDcnRINEZoSUpYbXZR?=
 =?utf-8?B?TjNKcWlabGN1VTY0ajlrY3ltVWZFSE1ObHFMcE9ZNXZzQjE3VGI0bzR6MXBT?=
 =?utf-8?B?cE91ZmxhQU1GTzJQZVhOVzlDWTlMb1dYZTQ3UWV6MkxUcmViS2ZVSGxyUGdI?=
 =?utf-8?B?TGxrUFR6OFNYS1lUbkhGY3dZWklDYkZTc0psZ3dpSWFUWHpwd1Y3d2lBMHBh?=
 =?utf-8?B?Qk1YQmlrNGlyckNIeWMycjNoVWpndVdTRFVOZTV4dnlFRUJrUlFZOFVlM3dX?=
 =?utf-8?B?cEFwMFlIVUE5b2dKVFhMQjFIb0dQRTJXLzFDRUU1b0l4ZE1GRHh2RFlPNTBU?=
 =?utf-8?B?V1Zza2w1YXZ6TlRKKzJJNGQ2UjJLWENnOXdJYTRUOG5ZanZ2aVFXVWNENzBs?=
 =?utf-8?B?MDg3VWVBZGpJTWxLWWpSWFc5U01yeU9IdEdNUmErODdpNVdBMC9TbEJ4YSs2?=
 =?utf-8?B?eFM3WjJkdGxmSkM4Y2lWUHdMRXRKTVkydUx3Y0pLdWNQemxJREJNVjVTR2Rn?=
 =?utf-8?B?VEt6STZWL1FkRlhzOTV2dVplVDA4Z0RxRklaNGhUUTZsalJFZG1VRlBaVlc4?=
 =?utf-8?B?aHgzUzJ2Q1VhNUNIOUIyL3FNZko5eWg3VXhuTlJHSjV5U3dKbjN6bWZLMVNB?=
 =?utf-8?B?SUpRQWloRDlzQTdyNXpSK1gxRHpOYU1zdGsvSTdMcldzV2EzdnlXQy82Y1Bi?=
 =?utf-8?B?N0xaWlZUSWh5UWR3NVplUFQ4WTFtdjhoL1BwRGRvSTNwWFZZcGFmVWdkUnRo?=
 =?utf-8?B?cTB4TDlqdFY5aDN3Qkgwb0JXNGtabW83T2NVVVdmWFVmczBRcUM4Y2k2VG9r?=
 =?utf-8?B?WkszcGJFRXpvZkh5NjhWYmJ0SGpXQnVxSXd1dG8yWkhBMFczSVdEMUptNGls?=
 =?utf-8?B?TkFkK1VJeW9zWStHa202NmQvRXpkeVZFM3BVK01DTmRTTmU0RXRwQlBKcjRY?=
 =?utf-8?B?Q1pIRUxRRlVDZ0J4Wi9ISm5TVjdsTE9CRXlhOC9VZ1FhbXBwK1puU0dYQ1Vj?=
 =?utf-8?B?S0J0Yk9iZjBHVUg1TnBpSENMSldYWVZBWHBiWUpPb0ZYcHJnOWl1Szd6cDBp?=
 =?utf-8?B?aFpFMEtJQk8wTHl5QjlJcUdnLzlqd0s3Wk5NR25XVTRrWVNvdkNQVHdST05X?=
 =?utf-8?Q?TRxkhlgU9TU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR12MB5685.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QngrdkFBMWJ6K3p3azJqbkZ6TllXMERHeE5TNWRIVzRSUzFXSEhacUpxT0t3?=
 =?utf-8?B?RjNuSUJSTnlKcnJxMENvWk11bE4rQzBzR2lQRk4zZU5rQ04yczdpZndjYWs2?=
 =?utf-8?B?Z0VWV1B2OVlvYmpYNm9hZHdYNVVQNHVWNklnakxqbXFaQm16ZE5wNURRck1i?=
 =?utf-8?B?ZWFNUXE2QU8wV1dWS09ncEllMGYxUzRNVFIzaEJpa1EyYitGeVJzTmpwOENL?=
 =?utf-8?B?WkVwQXJFSnIxa2YrWXZ6SzRZank0VmdFL1A5ZURsWG1ZUTE4bnE4THA4ZUJV?=
 =?utf-8?B?cGlWYmhDTURBRHovUnJmQ25pQnhvNmJQT2wrL0lqcVczbDJZN2pHTWNRUGp5?=
 =?utf-8?B?YW5rbWlUZXNpcTBmVUUrWkJLbSt5WTZuVVMvRzBJVzcwbGFxUWxnY2lYUy83?=
 =?utf-8?B?WjByT3c0LzBxY0grcmt1RGpmWG9SaGoyMFRkeU9YQm1ydDJRVXZzMC9JKytE?=
 =?utf-8?B?em9mVkFNOWVzQnZkdXZtTDJrMmtnNUF4WEE0ZHB3TXQvdjZZNm9rM1h5Vk00?=
 =?utf-8?B?VVo0WDc2czcxRm5HRThYSEIwcnN0RVRKYUFpaUdGOHpEMkRMVUF4ZDRiWXZG?=
 =?utf-8?B?OE9BTm9jNFUzV2xMaUpZV3ZiNVUvUkdPcDRFN3NoaGlpTnFJTTJjUGpFN2RV?=
 =?utf-8?B?R2hrT2ltT0g2OTV4SWp0Q2xoKzNTMy80bEZIQndheGNOYlBkeGhrd0hZS2tp?=
 =?utf-8?B?bDJJUFpWbjhXZ1k2NHFZeGEvRFIvNGg0N3c4c0UxSXlNRXhzSlhIQTZJRlp5?=
 =?utf-8?B?ZGU5U215bUpKZnVOUVZySFNkSEhpWE54UlJma3RWSFRzVjhLVkUxQ2c1OVhR?=
 =?utf-8?B?VlkxdFVYSFZJaEdoSlFFSzV5RFZtWDVkVXhpTDhpaHFQUVZYZzRVTjVMNmpX?=
 =?utf-8?B?Z25nSnhoSEoxZjdVaGtvd1hva0N2QlpwNGpuRVNVazgzSjcvcTRyK2w5aC84?=
 =?utf-8?B?SjhPN0NuOXRKbjVOR3dzNjU2TUdmWG5NRUpxYmZ6L0F0VHUwY1Z1SU0veVcx?=
 =?utf-8?B?OFNtWnFjYWJZeGtycW8vN3JGWmttUENkUlg0VDJQSzE4Z0I5R0NyVG9PblFm?=
 =?utf-8?B?cjMzeEE2WTFXU2YvSEdlRzZOclNJdXVRYWRpM3F4ZzFvV29QSjcxemxIWXJW?=
 =?utf-8?B?VTZMRkZncjhScG0rbWN5aU41bDZLM1cxbVdiK01Pb1AvZzBDekxFRXlRWkNY?=
 =?utf-8?B?akdkc3FWdXl4SWZtblJaMVRNaGRQYjYrNUpueHR1aCtUZ2ZxYW5WQ2ZYMXY4?=
 =?utf-8?B?d2tGMmJGMUhKQ01xNnlMeDJRRGY2U3ZjQWhua0ZYU2hPcWk0MFFXaUFKTEZF?=
 =?utf-8?B?RXNzWEQzZXFSZmV4d3ViVENZbWpDVFhLQ2h5OVJiTEpMRVJNdjhZanN6NEts?=
 =?utf-8?B?WHBRL2VpTjJDQjBpN0hNUzlJOTRTTk9CQzNnR1N1YUxNaXFsay9wUGU3MGZr?=
 =?utf-8?B?UGRnNUU5NGkyNmt2YjIydHlRNk1oaDZKb1AycWdxMFhNVGhhcFMxSFVCS3NL?=
 =?utf-8?B?cUt6b0dETnJRRVVadnF1WUtPTHExWEJNck5aV0x4R1FQd0pNbkFWVitIQjcz?=
 =?utf-8?B?dk9pSlFzZ3hMblVjNVJGN3VJQitvUW13eEd2L2xoT294eXhZWFMxeXFEU3g2?=
 =?utf-8?B?UXd0dGNJSHNqQUZ2cEc5T1E1b2wvb0tGVFlaTHBHOGZ5Q3NuQjQ0dStIREpj?=
 =?utf-8?B?R25yTDNmeEZkTVhBV3E4YUtQNTRKc2Zrc2lnOHNOdlplTC95U0FER2pOT2Rt?=
 =?utf-8?B?bExwTXo2VEFDZkhTamE3U2VIWDJrZlZsRHZpWUlhWXIzYnZJUVJUZlUwcWo4?=
 =?utf-8?B?S0pLcXNPcXJIR1JObVk1dTBYM0J0S3dVSExmSnE2SnFkUHRGK2ZqSUxESitN?=
 =?utf-8?B?Zk9CWmNKK21xeFMzc09SazBjcHBmRnFpSjRVMzhIZzU3amV3NFhIN1FSbW1P?=
 =?utf-8?B?TjhydmZHRDg0ZC9OSFZJZ3VCWDRJY0NoQTF0TkhXcUZURXpaQkt6bDhWN25m?=
 =?utf-8?B?aVZsRWdYbWhhdnZhR3pISVA3a1BnVHhzdENVd29MZzVUdFlLU0R0U2x0aFNK?=
 =?utf-8?B?N09YV0xXWFRCTlQzQmxBRzBqUGhYNWh3bUVHNGZrdjhiMHVhSVhRTnhYaXJJ?=
 =?utf-8?Q?K1Z7stTox35/23M7ynmz3HHFF?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8bde03c5-55ff-471a-7d36-08ddbb063d92
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jul 2025 14:22:43.5333 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kndj2hbcJ14LJ9KBW1nbSjd2Mux9qr+nBVmHqP2yQpsJLwP5UdmMtPaVbZeSdzal
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR12MB8045
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

Ah, yes. That makes a bit more sense, in this case the patch is indeed necessary.

But why is XE hard coding MAX_SCHEDULE_TIMEOUT here while i915 isn't?

Regards,
Christian

On 04.07.25 15:05, Aakash Deep Sarkar wrote:
>> And as far as I can see i915 is using the config option DRM_I915_FENCE_TIMEOUT here. So as long as you don't set this to very very large value this should work as expected.
> 
> Sorry I forgot to mention this in the commit message; this issue is happening in the xe driver. DRM_I915_FENCE_TIMEOUT config is used only in the case of i915 driver. For xe it's hardcoded to MAX_SCHEDULE_TIMEOUT in the compat-i915-headers layer.
> 
> Regards,
> Aakash
> 
> -----Original Message-----
> From: Christian König <christian.koenig@amd.com> 
> Sent: 04 July 2025 17:57
> To: Jani Nikula <jani.nikula@linux.intel.com>; Aakash Deep Sarkar <aakash.deep.sarkar@intel.com>; intel-gfx@lists.freedesktop.org
> Cc: Badrappan, Jeevaka <jeevaka.badrappan@intel.com>; Ville Syrjälä <ville.syrjala@linux.intel.com>; Maarten Lankhorst <maarten.lankhorst@linux.intel.com>; Hogander, Jouni <jouni.hogander@intel.com>; Alex Deucher <alexander.deucher@amd.com>; Lucas Stach <l.stach@pengutronix.de>; Rob Clark <robin.clark@oss.qualcomm.com>; Thierry Reding <thierry.reding@gmail.com>; Julia Lawall <julia.lawall@inria.fr>; Dan Carpenter <dan.carpenter@linaro.org>
> Subject: Re: [PATCH] drm/i915/display: Change ret value type from int to long
> 
> On 04.07.25 14:00, Jani Nikula wrote:
>> On Fri, 04 Jul 2025, Aakash Deep Sarkar <aakash.deep.sarkar@intel.com> wrote:
>>> dma_fence_wait_timeout returns a long type but the driver is only 
>>> using the lower 32 bits of the retval and discarding the upper 32 
>>> bits.
>>>
>>> This is particularly problematic if there are already signalled or 
>>> stub fences on some of the hw planes. In this case the 
>>> dma_fence_wait_timeout function will immediately return with timeout 
>>> value MAX_SCHEDULE_TIMEOUT (0x7fffffffffffffff) since the fence is 
>>> already signalled.
> 
> That is not correct. If the fence is signaled dma_fence_wait_timeout() returns the remaining timeout or at least 1 if the input timeout was 0.
> 
> Could be that i915 has a separately implemented fence_ops->wait callback which incorrectly returns MAX_SCHEDULE_TIMEOUT, but i strongly doubt that because that would break tons of stuff.
> 
>> If the driver only uses the lower
>>> 32 bits of this return value then it'll interpret it as an error code 
>>> (0xFFFFFFFF or (-1)) and skip the wait on the remaining fences.
>>>
>>> This issue was first observed with the Android compositor where the 
>>> GPU composited layer was not properly waited on when there were stub 
>>> fences in other overlay planes resulting in significant visual 
>>> artifacts.
>>
>> Thanks for the patch, good catch!
> 
> If I'm not completely mistaken this patch is not necessary.
> 
> dma_fence_wait_timeout() does *not* return MAX_SCHEDULE_TIMEOUT when the fence is signaled, but rather the remaining timeout which is the input value at maximum.
> 
> So when the input timeout fits into 32bits the returned timeout also fits into 32bits as well.
> 
> And as far as I can see i915 is using the config option DRM_I915_FENCE_TIMEOUT here. So as long as you don't set this to very very large value this should work as expected.
> 
>>> Test: No graphical artifacts with shadertoy
>>
>> We've never used this commit trailer before, please let's not start now.
>>
>> The subject should plainly state the "what", and the commit message 
>> should answer the "why". You do have that here, but I think the 
>> subject is still a bit too much nuts and bolts.
>>
>> For example,
>>
>> 	drm/i915/display: Fix dma_fence_wait_timeout() return value handling
>>
>> would state the "what" in *much* more helpful terms for anyone looking 
>> at git logs.
>>
>> Presumably this has been an error for some time. You should do a 
>> little bit of git blame on the offending lines. It'll find commit 
>> d59cf7bb73f3
>> ("drm/i915/display: Use dma_fence interfaces instead of i915_sw_fence").
>>
>> Based on that, we should add:
>>
>> Fixes: d59cf7bb73f3 ("drm/i915/display: Use dma_fence interfaces 
>> instead of i915_sw_fence")
>> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
>> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>> Cc: Jouni Högander <jouni.hogander@intel.com>
>> Cc: <stable@vger.kernel.org> # v6.8+
>>
>> Then it occurs to me this looks like a common mistake to make. A 
>> little bit of git grep on dma_fence_wait_timeout() quickly finds 
>> multiple similar mistakes in drm, at least amdgpu, etnaviv, msm, and 
>> tegra. Cc some maintainers FYI. This class of bugs could cause issues elsewhere.
> 
> I can only guess but I think all those use cases use a fixed small timeout as well. IIRC amdgpu uses a timeout in the millisecond range.
> 
>> Let's also Cc Julia and Dan in case they have ideas to improve static 
>> analysis to catch this class of bugs. Or maybe one exists already, but 
>> we're just not running them!
> 
> Yeah, agree. A script which checks if the input timeout could be >32bit and the return value is assigned to something <=32bits is probably a really good idea.
> 
> Regards,
> Christian.
> 
>>
>> Finally, for the actual change,
>>
>> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
>>
>>
>>> Signed-off-by: Aakash Deep Sarkar <aakash.deep.sarkar@intel.com>
>>> ---
>>>  drivers/gpu/drm/i915/display/intel_display.c | 3 ++-
>>>  1 file changed, 2 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c 
>>> b/drivers/gpu/drm/i915/display/intel_display.c
>>> index 456fc4b04cda..7035c1fc9033 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>>> @@ -7092,7 +7092,8 @@ static void intel_atomic_commit_fence_wait(struct intel_atomic_state *intel_stat
>>>  	struct drm_i915_private *i915 = to_i915(intel_state->base.dev);
>>>  	struct drm_plane *plane;
>>>  	struct drm_plane_state *new_plane_state;
>>> -	int ret, i;
>>> +	long ret;
>>> +	int i;
>>>  
>>>  	for_each_new_plane_in_state(&intel_state->base, plane, new_plane_state, i) {
>>>  		if (new_plane_state->fence) {
>>
> 

