Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8659835F2E8
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 13:52:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51AE96E86B;
	Wed, 14 Apr 2021 11:52:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2084.outbound.protection.outlook.com [40.107.92.84])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D1F26E422
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 01:47:02 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ezIoDcB85Nbog6+TgJ4AgrAhRTkR1hEyVTtxz3TDoXbjGS3V/iD95kcine7OIQosMz/IeXjLBSXOxWOqhvXlveZhb2QuFR3IqAjE/BBxbpto3QVavhR4vDnTFnpQCg4J0TTT8tC/SQV6ccCo/w/4bnJpiNmM/7WL0oTSqeh7QuErVf4C026s12voJIsRsFzMYj3AThWHf4oukNVErhuePNIh/sAuRAmrVsczP1FsoojVkdWVt4r8k/sp0IDTewCGiadKNNLAvTctrQuGv7CxVMhBThj3UVRjMdPLtNdRBmjoWQtCLDtDx6qIEceq+WXoHTfjiggCgyUfOF08PBm49g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Bom6wj1T+7mXVv65yQkm7xi/67iYUyPoexbbC2nF3L8=;
 b=C7aVcCaAjYFUqvNn8vDSj+praTmlfjCM2tW7Lz0nBxwLMAl+EdoQDlFku9bCPC+aCya9GjzOUHa8CpxZ54N4wQ0VhZpuMfktIELqk8L36EGa294k6vjTv4Kd4Hoo337aUucxkA/nRinikHm/e54sAOHz6sL+liPgKTHk0cb299mLOki8pf/cUBEEGc0ZXx/0izbggNJfTiLZ+IbZKuQi5hFegOKHPJdFemuRkcW95anVMDAYMCk99q3smjtmfcF8EdCNa/FMOAdZdgq2wgAW5c/sL4es8pTwx5Aq75jjPRiX54qIMP388QFzWL3h1ce0IBwdVgBDKECKGo9nqg9mmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Bom6wj1T+7mXVv65yQkm7xi/67iYUyPoexbbC2nF3L8=;
 b=L78F75HNSijbvMFoz0H9EaiAMpfVv8dzpO7y2aQpNYgMiqR9QbFtNgmcvt6V/qArS1Et56hxvLJxqvCjWIbG20GfDHGNiZ7wDC8KFWSireX9BjI86YYo8PJqqfbOo+0R5lYPub9S9oh98WAYg2etlC1h9uU+XiFX4xxGhKRXwy4=
Authentication-Results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none
 header.from=windriver.com;
Received: from SN6PR11MB2592.namprd11.prod.outlook.com (2603:10b6:805:57::25)
 by SN6PR11MB3134.namprd11.prod.outlook.com (2603:10b6:805:d9::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4020.22; Wed, 14 Apr
 2021 01:46:57 +0000
Received: from SN6PR11MB2592.namprd11.prod.outlook.com
 ([fe80::a135:6ae7:1d9f:b4db]) by SN6PR11MB2592.namprd11.prod.outlook.com
 ([fe80::a135:6ae7:1d9f:b4db%7]) with mapi id 15.20.4020.022; Wed, 14 Apr 2021
 01:46:57 +0000
From: Jun Miao <jun.miao@windriver.com>
To: jani.nikula@linux.intel.com,
	joonas.lahtinen@linux.intel.com
Date: Wed, 14 Apr 2021 09:46:31 +0800
Message-Id: <20210414014632.5255-1-jun.miao@windriver.com>
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR03CA0053.apcprd03.prod.outlook.com
 (2603:1096:202:17::23) To SN6PR11MB2592.namprd11.prod.outlook.com
 (2603:10b6:805:57::25)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-lpggp3.wrs.com (60.247.85.82) by
 HK2PR03CA0053.apcprd03.prod.outlook.com (2603:1096:202:17::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4042.6 via Frontend Transport; Wed, 14 Apr 2021 01:46:55 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 791ff754-c67c-46b6-b4e4-08d8fee73011
X-MS-TrafficTypeDiagnostic: SN6PR11MB3134:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SN6PR11MB3134115E9675494A591DB0ED8E4E9@SN6PR11MB3134.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:353;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: aIb5pORjHckU+B3GAhJwJdLmF0TS+24NnQOHxLjrvDYgl7D/P2A6LzuNOZeV7psNFg9tGPU9pk7s/lte3KdHWKi1Rb+yyuTsN58SOD6fjnuzcxv4Dtw7o1h9uDxuKJHJsYPUtfhjFP/y/d9Mb0YQYu4jHQytENTERskS/fH9askmByphKhol7fdVoH36VVL1SS+EuNTG1AXg79FuD6jHrQsHtBr6sPG3WQ8RcVxH+tJB3SHkRjg0D+7zIPMFedXwQ2SNdIayhX0L+iI14XHEPcf5lZSDOkg/hW1KqM3eR119i0gPLOSNNiTZJknidlghchx4X3eGvWWIHtorhuS9OcPno6dp1nuGmEdCrte3/S+3A1einm4wmbbHcQQ4nuAePEZWwZS14Stt5fdYoe1sHfjBhjUhsvqQqJ5OnBTFsnS3zKydfPXKDZk7JzcZgd58rSG4YFj2EUl/aMZOsQBQys2+PuhFNw+nqQRVcfJ/Z8O5QtWZy3JheX1Rr1K1Z11MMhaHXrelVPmUBpuD80xcmIy0xZZ36sCM0q/jLVy182xrATxRgzR7f9H62twca6eiKpvmE68ijoF8ihwHxUZQ3hHXYP49cAryU/tpdv1Ozz+Dj9d6vS2wYr2dHd8Z5RL/cI4EgNWHJvV5g+XQnnCIGlYHz1fsv1johD3mlHF2t1u+0SafaHKUBN65YOY9n+56gL1HLdMuhQSyFAMvmwCfcjRU5oV4eG+hLHc3zSFEr1I=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2592.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39850400004)(366004)(396003)(346002)(136003)(376002)(26005)(186003)(83380400001)(16526019)(5660300002)(52116002)(2616005)(66556008)(66476007)(44832011)(1076003)(316002)(38350700002)(956004)(6666004)(2906002)(478600001)(8936002)(66946007)(6486002)(8676002)(38100700002)(6506007)(36756003)(4744005)(86362001)(6512007)(107886003)(4326008);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: aEWq+UmVPM6sI96fN135D4TnEUXT+blMQhzMKB7tJbDMDscfknGqegvFinqp7KWk5IXz/up4Mt76bRoXAuSfEa+QOMKHwLVikTON2kT6kWjopy8a7cmxPS/9frlDeZlA2QSqbyx0+ZTbtyclZFSnheps7WMw0yfgCSd59Txaopo05gwlpArZJi/18/R9C8BkrhlqISilW+VJ7Q/uwEOWEfsxhuG/I5FZNe3GGaBYGuCHRfQEcNycaWmtRLxFc5r+XX67ix+LiC6ylkzInMNRLLRBku4W3pyVSdANftDfP953lCPITdJ3Dc0llt6I6NRZ9qHBTfCXnQYia6bDymLhyE3kvzD+z9k93FuRz3Gyr+Ao3OuEEK3M4ZmAizqIINn9mKJ/M8sghoEZEbm/CcrgM8JAHAjBfTU5dK8jq8Zca898khuzCeAL++qmFP7m0XY82977AMX/zv94KvK8k3jZD3YvzVg8eiDYiw1mE/nwCarm0DkV5b2CjIe9MS3ylNO1NmkT1CFPIeJAK2KwG/IAbct5ICCawe7kW186vvFSvZCYUZHBho1TDlZra+5NKg8imCD0ApnZVDkqE3k5EROe0F/cj+9LncRkyCQv6elfsqtAAxxlTTJ2YSCMVzLcYDxwD5hCMpVq0T2WAYpS3qdDMhMQn18T7AxzI1iyK/53ikE6yWM8AbPihOl89TfO3QZfm0y/XY5c7MCyvdFk8dVVoMMUiDl/hxQBlmQeIfZxlcHjkk72RJtzduu9vQYPp7Sm
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 791ff754-c67c-46b6-b4e4-08d8fee73011
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2592.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2021 01:46:57.3730 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Of87MREWFVv7IO4LiJvux3nIE0QQzAxB6YSOGSiYwfd5eqolVW26T3vOgCAIEbAL7XwYguQ+HIlVnVTqihFBmw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3134
X-Mailman-Approved-At: Wed, 14 Apr 2021 11:52:48 +0000
Subject: [Intel-gfx] [PATCH 0/1] drm/i915/gt: Fix a lockdep warnning on RT
 kernel
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
Cc: intel-gfx@lists.freedesktop.org, chris@chris-wilson.co.uk,
 jun.miao@windriver.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,all 
	This lockdep warning is only in the RT kernel.
	Which is introduced by this path:https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c?h=v5.12-rc7&id=9d5612ca165a58aacc160465532e7998b9aab270
	Fix it. 

Jun Miao (1):
  drm/i915/gt: Fix a lockdep warnning on RT kernel

 drivers/gpu/drm/i915/gt/intel_breadcrumbs.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
