Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F9D636DCF6
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Apr 2021 18:26:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2D8089A57;
	Wed, 28 Apr 2021 16:26:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10on2051.outbound.protection.outlook.com [40.107.94.51])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E7B989A57;
 Wed, 28 Apr 2021 16:26:01 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JyP1lf9UZ4zTQ/GybZrCeUsbQJ5cxfE6DXMmenw6yq2jaUiqMAnba0ds8hIkzGuzc7VJiqDVWVcKDLLSxc27goJdK+tkN++NRBse8h/i47aNN2hqFWSDYfSOC6LO79R0tsQJlMrXsDdyRB9A7PBHl/pEmX266RI/CLAjMZCOONa05AdGmm/QDiEICZTHRp7JqsHYgQk7QiQHbRvzMegAAyZZTONj97/DzWQMk/Ev88/x4/kC5w2oWFPIN22lEROKouZrOyderC2pVu+HMPqEwS7ds5D18bFUPBdagnD/WBRIA0gKku3BaN5DZc7XXEpsFtM5hvdE6Gl0Z+TwQl6s9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qZRvvln5+mOmWLCf1qQJGudtkeuGo7fxeKQz53Hiq9Q=;
 b=jKyrw/0UmP0a9vC5T7t786Ivad1kkqUv66dTHJupSAvna6dYnJb9OWEpTcJLpkfxwSmlSmJjQfH7txSJ3ilr7YjAc1QhTfzICJyGEHuI6F4jT5HNDm505PeaXve778qDqZ7qL0OVB4QUArPuaw0K7NQA2z6iQGCDuf4E3zl1XbY5HhGhRs2qOwLZ6A6JXW/zTj6YsveNS3oyPTE0iJynUwML++PpN/sGEWV4qKLixA5y+m9nBszlvMGu+9qeLlpqbySwZELn8u4f8GPWI7XdXFU27GsI3WLztCIdnczqG6hK/UAjK3Ag5GwzZwoAr6GVWdISOlZi9xhfHqVMt6QXdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qZRvvln5+mOmWLCf1qQJGudtkeuGo7fxeKQz53Hiq9Q=;
 b=Ll/33Hnd83Inouc9M+fB+onTuZcZ+tEx3Ffo0ul7HP2JB0rzclB6V2axcDa4YPp11rIVK2w+20ErVJjfAIk4KTba26tYgEATYviRgR2KdVv79kRZOfuPgf6uOWcGBEcekBa+062SO4JABp+K8+219GU73m6qFxGaGSkT1jOARUc=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=amd.com;
Received: from DM5PR12MB4679.namprd12.prod.outlook.com (2603:10b6:4:a2::37) by
 DM5PR12MB1451.namprd12.prod.outlook.com (2603:10b6:4:d::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4065.21; Wed, 28 Apr 2021 16:26:00 +0000
Received: from DM5PR12MB4679.namprd12.prod.outlook.com
 ([fe80::595e:20a2:f658:a7a5]) by DM5PR12MB4679.namprd12.prod.outlook.com
 ([fe80::595e:20a2:f658:a7a5%5]) with mapi id 15.20.4065.026; Wed, 28 Apr 2021
 16:26:00 +0000
From: Nikola Cornij <nikola.cornij@amd.com>
To: amd-gfx@lists.freedesktop.org
Date: Wed, 28 Apr 2021 12:25:44 -0400
Message-Id: <20210428162545.530854-1-nikola.cornij@amd.com>
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [165.204.55.250]
X-ClientProxiedBy: YT1PR01CA0063.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:2e::32) To DM5PR12MB4679.namprd12.prod.outlook.com
 (2603:10b6:4:a2::37)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from ubuntu.localdomain (165.204.55.250) by
 YT1PR01CA0063.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b01:2e::32) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4065.25 via Frontend Transport; Wed, 28 Apr 2021 16:25:59 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 01dc3667-202e-43b5-eae3-08d90a624f10
X-MS-TrafficTypeDiagnostic: DM5PR12MB1451:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM5PR12MB14515A71E696B4280994D39BEE409@DM5PR12MB1451.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4303;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZAXCZH5avh2LGqqu6lnJkgTN+z9ZumzQeOYM2M7wC0sJfcAPc/bMeG7T87bDb7zEo0jB808tgAS3CNBzlvPsfQL8eJn4f1kpECQH16oD6K5LezRibMkeolwsSM8ymgRjIFGvuYHfB/MO5LdaTbUl4pW93jf2FxLvO+H/eKRhssXJZgVR/FogOlfKbNaAJuuIzZA9Xv1F2Yims+SxkGbPeSSR3YhO+tRTWaXRP5I5nl+pl1pQ5GgPy+73kowSWiz3kMydalctaXvdnoGqg9o0Y9jDM7QKm7SX49Zwrq8X6IltCOE+AQbg/QYAYViUvZnJxg+iATqRioofoMBILl78JjmRLOpVmuF8kSUcYJLtlM9wbWpIyHA7NRQACcRqlqtPYs3WeaLIKpm/p0P7xCze0H+vXkUwGG7x39ONbNWxHS7ncXPbc2OqlZ6GRu393hwwCzEMpZQcGfNsbzayiihDCSW3iBsAlNolbPoDOaYg1QkOXre/0q+R6M0+etXeOzlIQOl2DEH7OD7BVEnZGkR3QwqQ24sUsH625uv4jR47MsozzZckMS/G2gY87CVxIpK/wXO3di5i45WegIMHq2JzZQhekoELQSiM5K9dgG/HZHiXkwyFoVl1K7EP5+Eo15uDd/fpNCtL6oImxbRAg+QyIA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR12MB4679.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(396003)(366004)(39860400002)(346002)(136003)(8936002)(86362001)(4744005)(66946007)(44832011)(36756003)(6486002)(1076003)(956004)(83380400001)(186003)(26005)(4326008)(2906002)(6666004)(52116002)(316002)(16526019)(6506007)(478600001)(8676002)(6512007)(5660300002)(66476007)(38100700002)(6916009)(66556008)(38350700002)(2616005);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?LwlmSuPq9JgFBoEwdNOgQyxov49pLMbwmAZsWVWkJYeiOOcNG4zZRRxwVVhm?=
 =?us-ascii?Q?+oLXG9nAmLum+MifIpRLWP1YpnLWRkOv5d/tj5eOw2lrbR/f4T8D3IsR6M7I?=
 =?us-ascii?Q?d0iR5aMCMzasnb7GtWKrDLzsN05d4hlAgiVjPuIZveDRtpCwTIFRDaxIYTcl?=
 =?us-ascii?Q?53nFmXOcrFR+xId3HaRFyfDrN9y2rStd6hv3CIEIaMxfUNrE54ZAGTeC4Z+E?=
 =?us-ascii?Q?d2DwhRNexEYnDMDx4CX943Us1mKgvR6GK0edFBSecX530K0qQd2Kj4qwprhY?=
 =?us-ascii?Q?sbJ9YWx6J0O8l06PnOXY8ak0Bmk8faDjV0KFnNX7UxWmIhUXNVxY6kHdvR8Y?=
 =?us-ascii?Q?Un8yq+E/Po73FGxN0BsRefkkXVigoQC8VsngTtX/dckORsmMpf9NBElupRi9?=
 =?us-ascii?Q?Coi2/Dt3Vhtp6JWuKaOXe6N7O4mTh2hho53tSqbSNf3O9IaAPD4gaAO40GB9?=
 =?us-ascii?Q?eKBgmU6zLJlyH/rIovCgcNG/IcwtJm2DXzhWUP/W/JNh0btQNQ8AMNN1LLJC?=
 =?us-ascii?Q?JY4UZv8l7hhCXcgQjrM7agnHn6DU1g7HqwrBsN1KlwVsF+pKgRgAR0WmgqW4?=
 =?us-ascii?Q?mUOq5GZWjPcHjWKpruDHZ4g5r9tG9z+04Da2helfKNXrjA7JSXD5VGBCStyt?=
 =?us-ascii?Q?Uov8VPVyZnyPNQwRd7YDJnEOrFJKfeHdKftPJWA1KaTLuFJMm1jdlXSsj51a?=
 =?us-ascii?Q?GGETTtOjmnn2GJKmDoKoJYg5rSSNPeHkGiRL5Mv03TG0edZfDBeSHFTe4+EO?=
 =?us-ascii?Q?6ACycXOaJWXXaIqCSoFG+ZJoffbnroemLjxpyXEA9JT9fb+RPvpZ0aWPqx2O?=
 =?us-ascii?Q?8EYYKxYuB8lSsPpsu6ewzucvkJkgWMWupqdmK4wWNd+BX/CHKFeOOPNm2jL8?=
 =?us-ascii?Q?J8rw2U0BZjRAsFusoKzUdtSej66sZi3WPrpLAlC5VmmXe9HD/0QOG+ORxPDi?=
 =?us-ascii?Q?E6HH0d9Ye4nSoWWnK5hF7iw7ayYV1UMab1nBmsttRfFqnJrdLeZVtGHL2e9z?=
 =?us-ascii?Q?SKm+OHWSSio4CRfU42gQ7guMwUmqAfs+71XSf2XNpNOps0WYKbJS4ri3+zih?=
 =?us-ascii?Q?3nj9pQqlcQu8SUjMqFWx6euvzEeW/ZR2Jw/FIjC11Gp1j/4pgCk9ZX9y47HQ?=
 =?us-ascii?Q?ZLmY9PP0jeS/Au2SVNplGgvusvOOqSNVIUq3q3SxjUbeXHnZSgqJaacJ39vL?=
 =?us-ascii?Q?ZRl0Y4wDmThps1sB54/ZV2HSAe4IIkAGqU4NEFmfpZmAAsbH4HYU32OBnq3F?=
 =?us-ascii?Q?+DZNfJ6sWdfizn+VGd3wFR/MkZIFeZIIYU6kIRR9YDEkqnoUkp+i5rPMyO1w?=
 =?us-ascii?Q?5bxNu4AU5vnL/jC1zEBnQ2hS?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 01dc3667-202e-43b5-eae3-08d90a624f10
X-MS-Exchange-CrossTenant-AuthSource: DM5PR12MB4679.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2021 16:26:00.1286 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ukQf8LaOoy5INtE2Fj1hK/MHrSn8fElWYTiny6IxDDmlPfbnp6HNdhaVJNGYkQ2TD53Bq11CK8yXv7+6tLkpbg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR12MB1451
Subject: [Intel-gfx] [PATCH v5 0/1] drm/drm_mst: Use Extended Base Receiver
 Capability
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
Cc: intel-gfx@lists.freedesktop.org, Nikola Cornij <nikola.cornij@amd.com>,
 koba.ko@canonical.com, aurabindo.pillai@amd.com, mikita.lipski@amd.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

As of patch v4, patch was supposed to be complete, however there was a
build problem introduced in v3 when fixing check-patch errors.

Change history:
v5:
 - Fixed min_t() macro arguments

v4:
 - Fixed drm/radeon/ lane count and rate

v3:
 - Fixed check-patch errors

v2:
 - No changes, this was my mistaken reply to my patch

v1:
 - Initial revision

Nikola Cornij (1):
  drm/drm_mst: Use Extended Base Receiver Capability DPCD space

 .../display/amdgpu_dm/amdgpu_dm_mst_types.c   |  5 +++
 .../gpu/drm/amd/display/dc/core/dc_link_dp.c  | 18 ++++++++++
 drivers/gpu/drm/amd/display/dc/dc_link.h      |  2 ++
 drivers/gpu/drm/drm_dp_mst_topology.c         | 33 ++++++++++++-------
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  6 +++-
 drivers/gpu/drm/nouveau/dispnv50/disp.c       |  3 +-
 drivers/gpu/drm/radeon/radeon_dp_mst.c        |  8 +++++
 include/drm/drm_dp_mst_helper.h               | 12 ++++++-
 8 files changed, 72 insertions(+), 15 deletions(-)

-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
