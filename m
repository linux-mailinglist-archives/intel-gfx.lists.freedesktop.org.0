Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0235A7CA60
	for <lists+intel-gfx@lfdr.de>; Sat,  5 Apr 2025 18:57:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 241CC10E37A;
	Sat,  5 Apr 2025 16:57:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="Quj+FyOC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10on2068.outbound.protection.outlook.com [40.107.94.68])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19B7810E37A;
 Sat,  5 Apr 2025 16:57:01 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=b08xa2B7hHXBZWDz3y74SehZeJ/gJB99kMxz+U+4xwMxngsQIN2IxCN3o/K6rqtHAoSbpWmi/v5V9TVQTWyIX+/dF6vDaS9x0dNLSLXV2qg4h2p4pRixo3+KU60bvfQbTA6ctlVo4M6Xkhc+Rw0ELg3W8DrIzAtX+XfpwjSrITqi+ASSpUtVIXGzBDtTa8nbCwRVwsYKvox1j+Wy5Ah2GZJSf0N+ieV4zXsjhM4lvhmW1SDhFvtk8GqEP74wdfejMr5svUyDLUEneDt6gnQdnhzt++D+5v5PnM83I3MmT3jALvxdyc0OoFbrwNBtEryucox0lKWu2Jc5t43ynBaGVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YwhtyJUgCFAMiU/r0Fg9F7CLy1Vm1Z8Bha97g1QLbGY=;
 b=CSHLPa1nQb+srPNAQqxohSQG1SYj9lzMp1gXAyIXlWQGIyTuKwJu3f3NGO0AQeeljXTV2exGaKf2E8hvpehJZ1xzJgzGmdv2CNtpkCQ0sp5Pk5F2zvDJxzruetOBL8foJ2JYoiBKWMaWRMy7ACYb1t8TbdbbU5KFfFazm+77oEBt03r69gwErK/1u+4w0E+8Tq6uO9kWU6awd0QhzT1vPPUltcNsnFzEquK6K48U9OkssSDa5PMe3F0bzJyIGG0YvvbBN2hDKEPsBtqhyYdQBBB5mUUWb7yl+RCuRacNI4bysgK/umutaPF/Yg7z4m2Xu5n2BgZvqrCP+0F7ap9UnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YwhtyJUgCFAMiU/r0Fg9F7CLy1Vm1Z8Bha97g1QLbGY=;
 b=Quj+FyOCcI3mvxHDtynYwbAvqNoY61M1A6Zz59VUkhrcM7Jzedi/m2lHYv0knjafC3/KPibaVt2VwtlM5IK7WNJSmo3jI0QwrqFCTw0JZSNx9pvAAPh6Kn4HulbcbJUggzAdCtktJF8Ypi68Xr4EsYLbGDqcMl8l/DJkwjUPRH48dxpVhEqmNVvOjL44bAqh66pBuGrSQihCtrzpItfN1X2N7AGne9ffqqI7olwRI1hjDz5tfMtEOktREOQZ/dGEbdshCVF9/lRBVoDEybFgXKNEp6s1pIO5LXkSm3+1uYpaP+JNgk60AIDbU0F80oylv3Gxymu7NTrY120YoyiwYA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS7PR12MB9473.namprd12.prod.outlook.com (2603:10b6:8:252::5) by
 IA0PR12MB8839.namprd12.prod.outlook.com (2603:10b6:208:493::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.29; Sat, 5 Apr
 2025 16:56:55 +0000
Received: from DS7PR12MB9473.namprd12.prod.outlook.com
 ([fe80::5189:ecec:d84a:133a]) by DS7PR12MB9473.namprd12.prod.outlook.com
 ([fe80::5189:ecec:d84a:133a%5]) with mapi id 15.20.8583.041; Sat, 5 Apr 2025
 16:56:55 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Sat, 05 Apr 2025 12:56:53 -0400
Message-Id: <D8YV3V9WWFOS.1PLFY4MSHNJ7G@nvidia.com>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>,
 <linux-fsdevel@vger.kernel.org>
From: "Zi Yan" <ziy@nvidia.com>
Subject: Re: [PATCH v2 3/9] migrate: Remove call to ->writepage
Cc: <intel-gfx@lists.freedesktop.org>, <linux-mm@kvack.org>,
 <dri-devel@lists.freedesktop.org>, <owner-linux-mm@kvack.org>
X-Mailer: aerc 0.20.0
References: <20250402150005.2309458-1-willy@infradead.org>
 <20250402150005.2309458-4-willy@infradead.org>
In-Reply-To: <20250402150005.2309458-4-willy@infradead.org>
X-ClientProxiedBy: BL0PR0102CA0003.prod.exchangelabs.com
 (2603:10b6:207:18::16) To DS7PR12MB9473.namprd12.prod.outlook.com
 (2603:10b6:8:252::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR12MB9473:EE_|IA0PR12MB8839:EE_
X-MS-Office365-Filtering-Correlation-Id: 4a48ca8c-e126-4de0-e3cd-08dd7462dec7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?czF5T1RZa1EyelF6UUpOdEZCVWp4T0VkM1NKek5JOUg5bWlhQjNGbTYwVE9r?=
 =?utf-8?B?SGhuTzdJRmV0aEdIMmd0Njk3TGhuQ05kalNRdkgxYldwZWNYaGtSUE1XQlNB?=
 =?utf-8?B?U3QzTjdoY3p6eThxOEx3dE5uZ091SUhKZTRsWHJ6Q1ZscXNreWxiMTd0ZW9z?=
 =?utf-8?B?dTF5bXFzczl1YnhyN2tzN0V4Z1NuWGlFRWlDZkkwREdFb2VmbWJlYUZYQVFL?=
 =?utf-8?B?ZkgzaFMwZ2o0ODVsRFladEdGT2FuMEcxMXg3ZnlPbWpzRG5tQ0M3SnlKemVq?=
 =?utf-8?B?N0NWcWdUNTFCVEZ2RWltOGJZTUF1czBlRU04Yml1RjFYN2N0LzdxM3BXa0Zi?=
 =?utf-8?B?UXphamVzTnJ6TUJvNVBGUGJpb2pCZldKZHpxSTBIS2U1ZEwxOTNHclJaYWJT?=
 =?utf-8?B?dFdXTksybGZJdHA0cG1rQTQrVDZZM0ZsMGFyU2t4cFlTKzYwMTJDNnA0WWsw?=
 =?utf-8?B?Q1JaS1hJclRmakgzRmYyY25NS3ZMUzJVemc4UEZOQ0JYWitZS0Nyc3IxdkRM?=
 =?utf-8?B?YitoZVJMa3RuL1BYanBnbm56dC8xZmFjcFVxQjk3MXBqNXR2Q01HYmMzYnI4?=
 =?utf-8?B?SE9LanlUMGdoZGxiVWpXcGR6M0o2Yjd1ZTUwZzBlSHB5a3BiNWI0a1E0YnVY?=
 =?utf-8?B?UjFWSktTR2toNkJmbjNUVmUyQ2ZxMHlCdzNuMTduWjNvZjR2TlI1NUs4Uk1h?=
 =?utf-8?B?amVjVU1uVW9XcXV2V3F2dC9wRTRxcTZmeVdiOW5XaVVnSGtrb1BobFNMNld5?=
 =?utf-8?B?MUFIZ3FqcEZBdHEwTVlKNWk3TWZFMFVOeU54alhEK091L3ptNjhDRDgwTWJI?=
 =?utf-8?B?MEVXMkUzTEEwNDF4SmxnbUh0cU5KY0FEblF4MnczUFVQMXB5dGxyWHJVTjAz?=
 =?utf-8?B?Smtuc1YrYk5FREhVQ3V6WXd6WmNnZGRUUk5RWUhGNGR3K2ZVY3dqVDNFNStG?=
 =?utf-8?B?ZGFnL1ZNWWdtcGppejJkNVpTMkVJVEl2T1R6ME1QS2pMNnBZWGhxT3FkUmVX?=
 =?utf-8?B?Z1dQNWNmaFI3dFJrL2Q4Y2hLWkRsaEcwOEtwaDNsR2llMnBkaWJSQXBEZi9m?=
 =?utf-8?B?YU1SQnRZeDl5T1BJRjhHakJPU3BtZHlpKzFaSzlYS2h2dDBreVRoSlh3K0R0?=
 =?utf-8?B?a3ZISDhid0FZcXBUVXloRDFnMWlTbkcyc3ErWTd5Qmg4TmlaQm5PYk9Namw3?=
 =?utf-8?B?MDVYZXg0Zzdla2k5VUY3blQ0eWpWWG1NazI2SFdBWUhiZTBscWcwdVR3c3Ey?=
 =?utf-8?B?MGJXT1pKK1A0Tko4RWRmVHBTNm1qUDVrOEdOOS9haU5VbnpBZEtEWUZjMlJ3?=
 =?utf-8?B?M0daU0hOS09SckJVbHNkQndFNmpRc3VuU1ZGd3hZcktkTXgwT1RDa0NsSVlJ?=
 =?utf-8?B?a2RYS3BCVk9qK2hqeGEwUDBnYW5RdjVXUFRMcFBZVnhqSmdDMGRCVkJWSmhD?=
 =?utf-8?B?ektrVytXTHJOMjVERVZRZVN1c2JLVGgxSW9Zd0UzWExTZVZ0STRsM1N5Mytr?=
 =?utf-8?B?eFBaTTc3UjZjWnJTOHRnUXdVVTBzTENnKzM1VkF4VGt6TEwrUjBld1NvUHFk?=
 =?utf-8?B?M2lyMkdKbHRZNnpqVVUzUy9DcU52VDFURzRCR003ZjFRTGc1OUVPOTgwd1Qy?=
 =?utf-8?B?Y3E1L1p4dk02elloZ2NycXJxR2FKUVBNb3VpdkRSOUVOUWRCMlhOVkt4dUFC?=
 =?utf-8?B?VnZEbCt5NDFEWnpsNUtWUnRCa0Vhb2R6MXlyUk1JNUM3ek1uV09OaE1SYUJt?=
 =?utf-8?B?UW82c29XNkZaK3RwUzAvTnRQMjdNYmlWdDZGZW5HL1RlVlJ0NjRjZUxHUkM0?=
 =?utf-8?B?aUZ0Z1dQSG9Gdy9IN0E3UUJWa0RxSmtJZ2NCU3pITG5nV0tSZkdVTmVlcHBL?=
 =?utf-8?Q?GvY1jSXnvCQnc?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR12MB9473.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bU80OGk4Z242c3BHL3duR1pocGNWZVI4Q3dteUtwbk9Wb2lQL0dmSXRIcGkw?=
 =?utf-8?B?VGRuUDY3S3B0cEZJcVlYQkZNTTcyc0lNdW1aYUY5aGtacGlvalNiR1BJZTZl?=
 =?utf-8?B?TXhTMFBZMGlWTHZ6dHlxUXpIVkNhSmhSZllKdnRZemZ5VmpLT0hRbmlVTyta?=
 =?utf-8?B?citvOWRDM3ZZSTlmRnJUNzNHV0UrUDZOV0FnalRsUmZOWGduNUZDMGVaM2pn?=
 =?utf-8?B?Z2pFRG1walFzSGcweE5VbEplalZNV0MycmNKd1hIZE9tYmlqTnpoRmFmdkEr?=
 =?utf-8?B?b21KWUl1M0pSMU55MG9NeGxHeHZkZ0ZybzB2cms4Y1FuZk9JaThqNGlhb1Bu?=
 =?utf-8?B?K01pMGdMTnJDM1BNOS9wSDQ4M2g1anNWcnBaUG5JdW9pZzBiclVqM1ZOZ0RS?=
 =?utf-8?B?THBGeVljSERaVGlSVERWb3kyR3p5OGdVdDVLMk9nUUJrU3pDbmJ4YlAwc1Nn?=
 =?utf-8?B?YnRzcVFWR3VNNXpBalZtbitLbDVkdGVvTmhPR0IyNWd2SGJYM2J6T1Vxekth?=
 =?utf-8?B?cTRKTDJYYlJSUEg4VVhsY1VubWp4ckFaelhxY0l3ZE9XMjNISmFXWVZCclgw?=
 =?utf-8?B?ODkxNk9OK3RZcmtka3dBaDNJQ3FvWHMzQUs5RGRPLzMyaGdFc2k3ZWlIZDJL?=
 =?utf-8?B?eTVkbWdJd0V5NklUSjRnZ3NuSXZFaUpNSy9WczVrMkxaK3hTeGtGOWpBdGZF?=
 =?utf-8?B?aDg5RW8xUWp6aE5qbE1KT3FuTEczOWJKZWgreTYrbks2UG9oSzhiaUpNMnF6?=
 =?utf-8?B?UjZiL29HOTFHMXdBU1ZlUmVvUHRFZFNFWDBBcDhTbmFUOU93TW1CeUt4VnJC?=
 =?utf-8?B?eXM1MTNkYVdacTJKRzdSK2lYY012RWtqTm5ISStMMDh5ZDFsbWdvd1h5OWVh?=
 =?utf-8?B?Q2piUUN1ZFllNHc5T2JlbG53VWVKZUQ2d0xML3d6dEJLYmRnbHVrNEhCdkw3?=
 =?utf-8?B?RXBwSmhQMlR6MUxzZ1RPOGlKNjlPQm1yYUpJQUQ4WTloMm9QeUpMam1FS1FD?=
 =?utf-8?B?Vy9LMUhTNTNUWlRHZXc0VWV2SFkwc1h5ZzhHbitHM3gzMEpJcWJRSTJSVHpp?=
 =?utf-8?B?NzZRN2dQVjk1MW8yVU81UTJBZFIvVWU3VmUrakVTbGcxZDdGcHNuOSt3NDBn?=
 =?utf-8?B?Z0VvbmNXbmphemdidXpWeFlkLzFZSnhLc0I2TzV6RDhsU0o4TXk5MlFob0Ri?=
 =?utf-8?B?NUNCWTJNY05SbXlOb0RYZ0ZsT1pNUnM1WUhKbDhiNHZtM0dFS1Y1Y3U1YTU5?=
 =?utf-8?B?d2JhN0dkWFdXN0FvSzlCMldFbm1vN1h0bzY3YmlES2tzR2RuakhINmVhTVBr?=
 =?utf-8?B?cllKbXJKVmVqZ2cwL3VuTEhQVFFSTlJxWEF5MVJlL1IzY3NaZUtMdWFMWEZi?=
 =?utf-8?B?d0NnbWNlVU9VTG9neW9lVzkrdWg0UFZwZVU4Q3V4RFpZa0NJWHhnQzFMbEVa?=
 =?utf-8?B?Z1FlRzUvWGI2RkRaZ0Q1YmxHNXFPQ2Y4QzNiZnp2eFpuK0tpeTNTRVc4bnF5?=
 =?utf-8?B?dHQ4cmI4WU1IT2F3Z3dMdlBXNmJOT0hCZThjbjRFMnIwblJrazhpRE1oNU14?=
 =?utf-8?B?Q0Q2bC9lM01tRUd4MDZPL2tYZFJXbXJpcUNNWi9FT3d4bFhCZ01vVUc0L0Rt?=
 =?utf-8?B?bTIyOTVON2NiOEZmR2FVSjczK2Rsdnd4M0lXYWpoKytmaGJFQUxQeWFGRTRN?=
 =?utf-8?B?TVFrQ2JzMU1wY3dKNEpnVGU0UjlvWVBvVlFBUXlMZlJNYitTajJCL3c5SkRP?=
 =?utf-8?B?aXlraUNqcjBGZWYxR0Z1L3B2akozTE83ajJ3QkxxNTZsVGRpYVRNeVJjY1NT?=
 =?utf-8?B?Z0Zub2RYci9tZHA2T2VyOGVuOHR0ZFJQWUNUbGgvcEJvUWJOUGt4YWxVbFhE?=
 =?utf-8?B?YXBoUUltRVVWd2hXSStvR3d2TmE0TDB0NkM2d28vazlYbW5RVUVZblFvUkFD?=
 =?utf-8?B?clZ1dmhHQ1lsUTRDKytnclBlcmxOUHJpd1Q1emg5Rjg5MlN6bWw2K3FBTHlJ?=
 =?utf-8?B?a1hBbENIdWtkWGRtazgrTEt0YldJblFWcTNsejdUUHFVaHdKUjFlRlg1QXpN?=
 =?utf-8?B?bmtXcC83UW53YVk0cGQrbEE5bVczWnQ5WUJ3bWU5LzNQZ2VoMjhaSjdjM055?=
 =?utf-8?Q?pdiCSRjfIBL6iMd2+wjBYXDUn?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a48ca8c-e126-4de0-e3cd-08dd7462dec7
X-MS-Exchange-CrossTenant-AuthSource: DS7PR12MB9473.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Apr 2025 16:56:55.0825 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SuvS+UEMaRnMvk30P92n48FOzbybcb04bhovw669mLtsRTmIAbzf4IcAN+v9Kv1U
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR12MB8839
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

On Wed Apr 2, 2025 at 10:59 AM EDT, Matthew Wilcox (Oracle) wrote:
> The writepage callback is going away; filesystems must implement
> migrate_folio or else dirty folios will not be migratable.
>
> Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
> ---
>  mm/migrate.c | 60 ++++++----------------------------------------------
>  1 file changed, 7 insertions(+), 53 deletions(-)
>

LGTM. Reviewed-by: Zi Yan <ziy@nvidia.com>

--=20
Best Regards,
Yan, Zi

