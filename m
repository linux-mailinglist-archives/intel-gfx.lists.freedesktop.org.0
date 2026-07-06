Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id nYkxFsdqS2pARAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 10:43:51 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0606B70E3D6
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 10:43:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amd.com header.s=selector1 header.b=WZUZydKu;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 976A510E830;
	Mon,  6 Jul 2026 08:43:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CO1PR03CU002.outbound.protection.outlook.com
 (mail-westus2azon11010044.outbound.protection.outlook.com [52.101.46.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5B5A10E827;
 Mon,  6 Jul 2026 08:43:45 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IoxtQVu9EpOX2kkt0lYdHySa6lSKnoyf+zhtF9nWhMWN+fRAvoXRTgAE7MlpWzQYSoJIxVAkQpm2rIbWnFNBn9iBRlNG6h8RZbVhYFq/6gDd/rlfzd4Ev1cXD6MhM2TwglQ/lCi6SqrJqDn9p+hmL6f6NWpN6RVJfinShrge/lvFa5ceTwtf2BccWrwS1R5F8X6oheXUanKf8m9xV/OymVfJEJTFgF0mumrmGgdicLtEX3zLGDUlu/Us5y5iWKBvHd4Y4a2xWI83RU52UKZSYDAvvFcGPbM24PwJN/oHY1W9OPL3So/zEBB8KtB5ptAIb6UmblWt+AZT+halvaCgXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rduim58xNR9xaovaeUrX+Z3fnbrBJg8nBV11gj9AODQ=;
 b=sCZOFXCTrY1S3Ee5RYNsSPaKEBFMI75Sv/Squx3vgJnBLRPQ/Thf2xRHjOfxNdtEgxyacxIq/Oql3zTrEnCEpFTfoN8zUS/U9vIQMbBu40rnM2kaWAGBH916quD5LJ0L4GU30yutzInR2Iq38ix+4elw7FVHFpGdOl4QkGr8tmrimhMpOzZMkF5UojNoAs7hfuI1XK7TTDhYZ61Ooh++uIwYs9tZoUiII+ABu0e0vfwrSK9f7W6GweQGQI0XY4DNQ3axu/WiR/4TTx5xhgxT0fJNzUcpCVcFavNIFAdgxIykMgAdysDJ+XvHR2RIFFqPe47No9x8lY0UWUIrtz0AiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rduim58xNR9xaovaeUrX+Z3fnbrBJg8nBV11gj9AODQ=;
 b=WZUZydKuTQEAY9VQBo+SSiOQDgjaHWWfO5ygYvpWSxDu3ueyaaj9xrgugVaEy8JzvfRnmywtTXxciTdMwfNGd+JwMaXtnARTPwyEBoaeE2Svp9TcA+tAuA/TQvczC6QSE0Q3v1zef/Ol0sHPMAKt+RISvwOFjRNSTOVUavfRH6U=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by CY8PR12MB8361.namprd12.prod.outlook.com (2603:10b6:930:7b::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.10; Mon, 6 Jul
 2026 08:43:42 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0181.008; Mon, 6 Jul 2026
 08:43:41 +0000
Message-ID: <84fe315a-bbf2-4dc8-bc75-89e5743d0ea8@amd.com>
Date: Mon, 6 Jul 2026 10:43:34 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/10] drm/exec: Add helper to bypass IGNORE_DUPLICATES
 flag
To: Natalie Vock <natalie.vock@gmx.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, Huang Rui <ray.huang@amd.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Matthew Brost <matthew.brost@intel.com>,
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Alex Deucher <alexander.deucher@amd.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org
References: <20260703-ttm_2_drm_exec-v1-0-43685ac1286b@gmx.de>
 <20260703-ttm_2_drm_exec-v1-1-43685ac1286b@gmx.de>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260703-ttm_2_drm_exec-v1-1-43685ac1286b@gmx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: YT4PR01CA0061.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:111::7) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|CY8PR12MB8361:EE_
X-MS-Office365-Filtering-Correlation-Id: 345c064d-6df2-447e-83fe-08dedb3aae74
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|23010399003|7416014|1800799024|366016|921020|22082099003|4143699003|56012099006|18002099003|11063799006;
X-Microsoft-Antispam-Message-Info: QqQ80lAojKsEAR0lnEl9DZDGXJoj5PThOLypXSDJkEtAY5XJyM6+x1dyjgfCHI+9tO1Ld2VvwIMmppBM7seucmSwbFXrRwX0CBV2nJ86+a8bHoOB0ZOSkweDRfEypRsPj9XoXafX80x45qOcK86e+EPWSYDKW1GdTzx7V5sj9mwy/d8DkDqdJw6QvJ1rZkmJEu193wHIs5D36e7oEFajT6nojdeNLR9p3CHDssCxHYLs9mIdHmVTArOvhmN7C/HGn6AgokVU6uJU99P3WLsQnaBJf3x8M+enyo15oLZ74GklXqE8oLN2xCKpZggnSFfL9UPkU2sDN5zeVwKoYC7cjLd6KljGEZq722zdqCd3Lwg4w+e8I3dcdZXONnV3HHX7bOimkKZsaSlN2RJYZAEoHRQwhFNUMKPbhbtuTr/OlQ+I9t0rl4MqpmB4FzB0ue8VZRplFe6D6DXncbMviHpsvQQnWLB8fM4JYKDFHwzGxGS0everNsbS/+6pA0i7t4ngZJ382tp11pWCotJQT+NzPmVqMl5zfcgQ0PXKjBDpIdESPa0VkUfX9ENUa2X0yoaaqpRqg6+nt43TtdzaeSVKf7y2+2JRNonbkF+e7Q1QuQlOAc4TXRDFpKDxV6l2rlF8R9Gkwvl/26p9GOTTxZ1P7CGEHzareH2akx5e3nXFAIc206lsVEPTaJd+ms4+9pjbxKEc3Llwtt9Q56LQy8XCEw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR12MB5685.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(23010399003)(7416014)(1800799024)(366016)(921020)(22082099003)(4143699003)(56012099006)(18002099003)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bmxaUGR5aHhNZGhxNy9RZnNQUjZSTVNjbWZ0b2dFUzNGMGJHODM0L0kraHAv?=
 =?utf-8?B?Z0xkYXRmbHQ5QjRyV3dxWXlWZGRCblZzcjNoc1IzVWJZSzR0N2NsM21xWVdO?=
 =?utf-8?B?Y3ZXUlNPOGx4SmlNeWJVb0djYWdmSFBUeFJYUm9RbU1zWHJRS3JZTWhveVhj?=
 =?utf-8?B?bnVJMytiTjZRUnZmdHVlOTFyZlhXYy9sc1N3R0NkaVFNd1hTMWgxcDBQM2lm?=
 =?utf-8?B?bXgrVzlHK1NOVTVFVGZGYWJLTDZCOUFrcWw3NkRick1IQ3VheDNmUkNpZFo2?=
 =?utf-8?B?OGtPWTh2VXh0c0FtVzlQekt3cFhCcWkvYURoa29STVUrUjMwNGlPbXE0TEhZ?=
 =?utf-8?B?V2RqSGtQbGpFam5SQ1Q2bmx3ZWpDQi93cEFndWtRNVYveFk1MUZDdzBzaWJs?=
 =?utf-8?B?RmJOdjNXZi9oRDVaZ0p3N1lPU1Y4d01CRS9tWlUvT0xSNzA3Y1hHMExCdDNr?=
 =?utf-8?B?c1phNFU4a0xVaWdnU0NiRk5pR2pVY1dPZ1BpbkM0bCt4WkNVVGVkaXBpRVRB?=
 =?utf-8?B?Z0NEMm9LUzZaS2hUQlpqVjhKV1N1YmpSM1A5Y2hpaUoyMzM5UU94N1BBeE1r?=
 =?utf-8?B?dXFWYTAwcnZIT1NDc3N0OE5LRkJuTng2M3FUajN3T3pvL0J2NmgrTHh4RUZl?=
 =?utf-8?B?cDdTZzZjb2Y5SjJTUll6V3lFMFd4OTlWTVVyWFdqMlFTK0VtS2ExWEoxL0Vm?=
 =?utf-8?B?b1g2M0FhSkFoVlNtYXFHUFFudHd0MC9wTlp3Y2ZJdWVRanE4Y3VrWmwwWGJQ?=
 =?utf-8?B?dnRrY2k0dHVYZ3hhZkJzemd6THZrZnZTK1lQNC92dSthSDF1aXFPdzdaL2JY?=
 =?utf-8?B?dTgzeVJMUjdIMXpjZk5nWGZXWFp1MEhGM3VNNkNQRXB0K0hvSmlmZVp2WGlI?=
 =?utf-8?B?dlEwS0xkRHl2QkN2dWxubzBzS0t5RHVFRWZ2eE1Jb25aV1FyUTJKQ1ZJUzk2?=
 =?utf-8?B?cjNXUGZ5NWFzbTNOSVFqOGh3T0FkT1FoZ01TOTdmTzZDZGlHTGFiY0NMOHpF?=
 =?utf-8?B?dVRWc0p3RG5UdVd5eFhESUZBamlORXVQdGFGekhINU11cDRSTTJIYXhtRGdR?=
 =?utf-8?B?UXV2TGxndkV6TTBvLzZiVEJPNm5vbnN5M2FPd2s4SnJNaDVrTFpUZklONjY5?=
 =?utf-8?B?MFZnMXYxUUVBSU1LZnZOR3QzdC9VamR4K3ZSb244U2RQczlQY2FmR3BsNWlL?=
 =?utf-8?B?MmkwZjNNTDRJNVdpWVk0LzhUaUFJTkkrclM3Yy90SUJiRnoyQ0VETktjclJX?=
 =?utf-8?B?enYwR0JzbS9raGJ0S04vY3RhZ1pITFZUMTFJaGFDNmRIdTFoMU9mMjVyeCtR?=
 =?utf-8?B?dTFRN1BUWlE2a2ZLRGRTSXdKTFVScmJoNW5MSFRXcGNTK3V6ZEkvdkk3TkFG?=
 =?utf-8?B?NzJvbEp4UXdpbXJSUTVqazltZngwOStOL3pzWG8wSnlZZHo5bmtnd1dMbENL?=
 =?utf-8?B?SWlhUjlQTnJReHRTaVBhYm5oTFFCQkptZExqSklTVjRjMGFuZDh3QVBJTk9W?=
 =?utf-8?B?T0d5bjgweUtnaExuekdFSjByTVhpemgvZXpock1yZTlyNnd0TCtJbkpYRVdk?=
 =?utf-8?B?UHdHOHdDbnpzSDY5eTdlY21qVFc1cURvWWN5UVIzVDJncWpQLzlSWWtURVVI?=
 =?utf-8?B?OHRxaFFxYlhyUDgzUUR6ZjYxeG9lcDFkYkdzanFrZXlrZ3Z3VXlxWEpPMGlx?=
 =?utf-8?B?eE1VVmU3WElUT2dVWm4wWURXVmJZcjdlMlJ2cUlRaXREVnVXYnc2ZGdMbmxS?=
 =?utf-8?B?R0xuSHc2VXRvWG1CNFpFUDJmZUErdTZSQ2FHOGlpdFRIa1lTL1BScUtoZmpC?=
 =?utf-8?B?Ymx1UDNFbEsxMWpnME5OeWVIdVo3cXRrbUdhVHd6VXliSDNXaVlzamVyYWo4?=
 =?utf-8?B?eiswaERSa0ppWGNnSkllSm5SMzIrUmM0MjBIQkpyRUdtK25WWnduSjduRklS?=
 =?utf-8?B?bjNJRnprK25la1Q2alAzZ1RwR1hNV2RRaWhYUWhkUEEwTU9EZVQxQW15N2Nl?=
 =?utf-8?B?SlVYTVMwY1hQdUE4NTJMc1M5dk02aUtUWUdZM1ptUENicTFkbzZ1L2pQSStR?=
 =?utf-8?B?b2ZNWHByMU4rNWNIMFlNNE05Q24wT1N0Rk45dmJVaEpqRkUySXdIS0dBcm1r?=
 =?utf-8?B?cFdDQkhLRnFZVGpxNEtYZlM4MlV4enNJZXlTMExWcDdWdDlMcEdvd1k0VlZO?=
 =?utf-8?B?N1Irb2o0OG1JUGsyZnJNTExHM05kdkZYaE84d0lNU2ZlZldwWk9xT0dRczJq?=
 =?utf-8?B?Z1QzblFuSkhESmFTQUR3cE5aWHBVWDY1Y2J6ZGU3ODZWRElGK09HNkluNk9p?=
 =?utf-8?B?L2xBNVRtYjI3cFpCNUZwNk5pVmhYcjlNWjE3bHVUK1V2UFBMWTlFZz09?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 345c064d-6df2-447e-83fe-08dedb3aae74
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jul 2026 08:43:41.7024 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ox2Vx7TvMeXcltIBq2PpsLqag+PiGnhcL7+FiwM8t/OlinejHfzHTpo9ntNUJZTE
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR12MB8361
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
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmx.de,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,ursulin.net,amd.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[amd.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:from_mime,amd.com:dkim,amd.com:mid,gmx.de:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0606B70E3D6

On 7/3/26 18:31, Natalie Vock wrote:
> TTM is about to switch to drm_exec for locking objects
> in the LRU list. When we're done processing the object, we want to
> unlock it only if the caller doesn't already hold that lock. If
> DRM_EXEC_IGNORE_DUPLICATES is set on the exec object (which callers may
> require for unrelated reasons), we have no way of knowing whether the
> lock is already held.
> 
> To remedy this, add a separate helper that forcefully bypasses the
> IGNORE_DUPLICATES flag for only a single locking operation.
> 
> Signed-off-by: Natalie Vock <natalie.vock@gmx.de>
> ---
>  drivers/gpu/drm/drm_exec.c | 52 ++++++++++++++++++++++++++++++++++------------
>  include/drm/drm_exec.h     |  2 ++
>  2 files changed, 41 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_exec.c b/drivers/gpu/drm/drm_exec.c
> index 7988f5e7d56a3..91de6b4d29df8 100644
> --- a/drivers/gpu/drm/drm_exec.c
> +++ b/drivers/gpu/drm/drm_exec.c
> @@ -190,18 +190,9 @@ static int drm_exec_lock_contended(struct drm_exec *exec)
>  	return ret;
>  }
>  
> -/**
> - * drm_exec_lock_obj - lock a GEM object for use
> - * @exec: the drm_exec object with the state
> - * @obj: the GEM object to lock
> - *
> - * Lock a GEM object for use and grab a reference to it.
> - *
> - * Returns: -EDEADLK if a contention is detected, -EALREADY when object is
> - * already locked (can be suppressed by setting the DRM_EXEC_IGNORE_DUPLICATES
> - * flag), -ENOMEM when memory allocation failed and zero for success.
> - */
> -int drm_exec_lock_obj(struct drm_exec *exec, struct drm_gem_object *obj)
> +static int __drm_exec_lock_obj(struct drm_exec *exec,
> +			       struct drm_gem_object *obj,
> +			       bool always_report_duplicates)

Rename the new parameter to ignore_duplicates.

>  {
>  	int ret;
>  
> @@ -226,7 +217,7 @@ int drm_exec_lock_obj(struct drm_exec *exec, struct drm_gem_object *obj)
>  		return -EDEADLK;
>  	}
>  
> -	if (unlikely(ret == -EALREADY) &&
> +	if (unlikely(ret == -EALREADY) && !always_report_duplicates &&
>  	    exec->flags & DRM_EXEC_IGNORE_DUPLICATES)
>  		return 0;
>  
> @@ -243,8 +234,43 @@ int drm_exec_lock_obj(struct drm_exec *exec, struct drm_gem_object *obj)
>  	dma_resv_unlock(obj->resv);
>  	return ret;
>  }
> +
> +/**
> + * drm_exec_lock_obj - lock a GEM object for use
> + * @exec: the drm_exec object with the state
> + * @obj: the GEM object to lock
> + *
> + * Lock a GEM object for use and grab a reference to it.
> + *
> + * Returns: -EDEADLK if a contention is detected, -EALREADY when object is
> + * already locked (can be suppressed by setting the DRM_EXEC_IGNORE_DUPLICATES
> + * flag), -ENOMEM when memory allocation failed and zero for success.
> + */
> +int drm_exec_lock_obj(struct drm_exec *exec, struct drm_gem_object *obj)
> +{
> +	return __drm_exec_lock_obj(exec, obj, false);

And then use "exec->flags & DRM_EXEC_IGNORE_DUPLICATES" here.

> +}
>  EXPORT_SYMBOL(drm_exec_lock_obj);
>  
> +/**
> + * drm_exec_lock_obj_report_dup - lock a GEM object for use, but always report duplicates
> + * @exec: the drm_exec object with the state
> + * @obj: the GEM object to lock
> + *
> + * Like drm_exec_lock_obj, lock a GEM object for use and grab a reference to it.
> + * Unlike drm_exec_lock_obj, DRM_EXEC_IGNORE_DUPLICATES is ignored and duplicates are
> + * always reported.
> + *
> + * Returns: -EDEADLK if a contention is detected, -EALREADY when object is
> + * already locked, -ENOMEM when memory allocation failed and zero for success.
> + */
> +int drm_exec_lock_obj_report_dup(struct drm_exec *exec,
> +				 struct drm_gem_object *obj)
> +{
> +	return __drm_exec_lock_obj(exec, obj, false);

BTW That here is buggy, it should have been true.

Apart from that looks good to me,
Christian.

> +}
> +EXPORT_SYMBOL(drm_exec_lock_obj_report_dup);
> +
>  /**
>   * drm_exec_unlock_obj - unlock a GEM object in this exec context
>   * @exec: the drm_exec object with the state
> diff --git a/include/drm/drm_exec.h b/include/drm/drm_exec.h
> index 8725ba92ff916..ff80dd2b72240 100644
> --- a/include/drm/drm_exec.h
> +++ b/include/drm/drm_exec.h
> @@ -176,6 +176,8 @@ void drm_exec_init(struct drm_exec *exec, u32 flags, unsigned nr);
>  void drm_exec_fini(struct drm_exec *exec);
>  bool drm_exec_cleanup(struct drm_exec *exec);
>  int drm_exec_lock_obj(struct drm_exec *exec, struct drm_gem_object *obj);
> +int drm_exec_lock_obj_report_dup(struct drm_exec *exec,
> +				 struct drm_gem_object *obj);
>  void drm_exec_unlock_obj(struct drm_exec *exec, struct drm_gem_object *obj);
>  int drm_exec_prepare_obj(struct drm_exec *exec, struct drm_gem_object *obj,
>  			 unsigned int num_fences);
> 

