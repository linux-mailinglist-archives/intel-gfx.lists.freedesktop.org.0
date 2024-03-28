Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C85A6893011
	for <lists+intel-gfx@lfdr.de>; Sun, 31 Mar 2024 10:51:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17DCA10EA35;
	Sun, 31 Mar 2024 08:51:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=zeiss.com header.i=@zeiss.com header.b="es+NbV4w";
	dkim=pass (2048-bit key) header.d=zeiss.com header.i=@zeiss.com header.b="es+NbV4w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
 (mail-db3eur04on2048.outbound.protection.outlook.com [40.107.6.48])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EB51112338
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Mar 2024 06:29:51 +0000 (UTC)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=CLkPIOZ2sNAdP+wM1kX+b4KwOvCojHkWl0q3VYWjlqnsAdVRgbmX3yQqWjyDpms5HSMBKM5FIR6IZ4npxctuMl1D9mnM2qqhyTb1TzC9XM/P5ms1p8tnd/j8bNTZFTQNd5C7b8KKS/IB5uwjaDkhwKyhz+RoamOEn2Xw+ScCsDqKsOV25At/9Ij1paOEtCIUKMF8BYojPCd61yxvzKOdywYGJw0esBnHTXWQHeRMUsPxegq8D7X2gvkzdwwtlgGD80qWW4TRbyP9ciJmbLbdSQm1dloDVtsxpUPKK6rMQcIjP8xrHH7BE/G2o+/zMmX+3e2zipqRPi80X8ybA9Pqvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Lu01/AV3y71AJnNgNnORLFJGbe9zPTd2C7xK5K1H0B8=;
 b=DB1nm498YS7Y294ACcCo3yqMJTJEYWEUCHc42JbZXOH0dFq4JIeC1eCdxgSvrFegH0sdjxML+Nu+arquHCG0zFKcodPUGt+fsvXyhelVeRvQC7cd8Bbk1nayQN4Ueot7rYXVjzEvDmIGiMeENTSnuSRDXlT8K4zQsMwT0DirUtsGvsDsLUkKb8QrnjH3basdzlJm/pTeS14ODc2VCs1IUnoaMrwOxQBvg7W2dGmTLXXwVeWAKiB+mRnqR+kVfX1lMWC32zNow8V47FnGpt3W45OZSmsq+wxTf4McVdjnk+R5SvlHMz++e+HGSW7mfa6Vv6ksEX4xxvd6RrN9mlFlQQ==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=fail (sender ip is
 18.192.202.217) smtp.rcpttodomain=lists.freedesktop.org
 smtp.mailfrom=zeiss.com; dmarc=pass (p=quarantine sp=quarantine pct=100)
 action=none header.from=zeiss.com; dkim=pass (signature was verified)
 header.d=zeiss.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=zeiss.com] dkim=[1,1,header.d=zeiss.com]
 dmarc=[1,1,header.from=zeiss.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zeiss.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Lu01/AV3y71AJnNgNnORLFJGbe9zPTd2C7xK5K1H0B8=;
 b=es+NbV4wWLoweChDhaNvDyJefu01zq6Sm9iSQMVdJMdAOtZk+Kl1SknAFkAZgKm/eO3ZGYq9UMTGWiKKGwTlaV7sCYaXgKYtdivuwWu+WmmwRRYdmU+UXBlC5TYGV5KstUhSHqBLwB5egRgY5y1hFhJWQTDMPjdCTNE7l2ygIirdeY61Rlf+gAOGXGcCuy4TFvChz8j8P9Uvk1cjeUsioXO9RxPLkskryB6AkURpCD5JO5PfNHeSLB6PUr3PlTZisJOzDDpZYKXZWE03xhSTcXFQR8qKhZRVM3XW1I0Ru1C2LfW0yP1jaNGJ/Wgl6sJroL/W7uZayP6U/+ndSbCx6w==
Received: from AM6P191CA0040.EURP191.PROD.OUTLOOK.COM (2603:10a6:209:7f::17)
 by GVXP190MB1872.EURP190.PROD.OUTLOOK.COM (2603:10a6:150:6e::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.24; Thu, 28 Mar
 2024 06:29:48 +0000
Received: from AM2PEPF0001C70F.eurprd05.prod.outlook.com
 (2603:10a6:209:7f:cafe::7c) by AM6P191CA0040.outlook.office365.com
 (2603:10a6:209:7f::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.13 via Frontend
 Transport; Thu, 28 Mar 2024 06:29:48 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 18.192.202.217)
 smtp.mailfrom=zeiss.com; dkim=pass (signature was verified)
 header.d=zeiss.com;dmarc=pass action=none header.from=zeiss.com;
Received-SPF: Fail (protection.outlook.com: domain of zeiss.com does not
 designate 18.192.202.217 as permitted sender)
 receiver=protection.outlook.com; client-ip=18.192.202.217;
 helo=jegw1.zeiss.com;
Received: from jegw1.zeiss.com (18.192.202.217) by
 AM2PEPF0001C70F.mail.protection.outlook.com (10.167.16.203) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7409.10 via Frontend Transport; Thu, 28 Mar 2024 06:29:48 +0000
Received: from ip-10-25-10-14 (localhost [127.0.0.1])
 by jegw1.zeiss.com (Postfix) with UTF8SMTP id BA5841B6F7A
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Mar 2024 07:29:47 +0100 (CET)
Received: from kag06088vm016.zeiss.com (kag06088vm016 [10.25.10.115])
 by kag06088vm011.zeiss.org (Postfix) with UTF8SMTPS id A852A1B6F73
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Mar 2024 07:29:47 +0100 (CET)
Received: from ip-10-25-10-115 (localhost [127.0.0.1])
 by kag06088vm016.zeiss.com (Postfix) with UTF8SMTP id A59F31B6602
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Mar 2024 07:29:47 +0100 (CET)
Received: from kag06088vm013.zeiss.com (kag06088vm013.zeiss.com [10.25.10.9])
 by kag06088vm016.zeiss.com (Postfix) with ESMTPS id 985F31B6118
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Mar 2024 07:29:47 +0100 (CET)
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
 (mail-ve1eur01lp2050.outbound.protection.outlook.com [104.47.1.50])
 by kag06088vm013.zeiss.com (Postfix) with ESMTPS id 8DAA9BBABD
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Mar 2024 07:29:47 +0100 (CET)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=exnXb3/6TK/EHFPxmqwtQwY0caUL6m1MatE9VmHvq+nI5OWnJdZnyqpJ7iuJoevGeXTCvK4XzQD8Y3+RlAuTVONMCmIAWfGsbVSkY606Ds2pglNPwbKr7C5eG7udS5B9pNGnUnX4IsTLwVY3WxpRZSsKa6PmydQalIyVvUX89LDQq1ihCKjmkpDfb6YIe0+0KgiD6f9zHHZileJZB0YmXmB60o9ezTHM09LXbyVd+FGfHnm8ioI68/q6RJgO0Wamo5tRt9ovdRRTk+H087TtigI4E3wcczSwJBBJbzikn4ZY5unsgEH7sGK1NbhLiGGyVLYSHl16EN3zB3h7M5EJlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Lu01/AV3y71AJnNgNnORLFJGbe9zPTd2C7xK5K1H0B8=;
 b=b0ZHrHHiBsAK2+HrFFQW7h5ftpWI4y64y4ZN2dSsaoUaOytMqeuAEWA1MFFn2avtBqwhLm062EIwPn1TGxVjt41dqljtmbl3+R/mGXnIwkI9pHpBF7AnkmFTrJQvY3dE4Y3hwdhIY5g8y543xO9mmyz5V9mlMchOc47o6TD9zMHfVNYJLOw3yflC+g2cYpdfXVuYuthk1XhCSpLquc67E4FP1DJqGI1sT33tb8kyy2SpF/ItO2cJ+sgayQb29btj2ts3IUVICcVwnAIeioLod2rqvSG/VxYQ+PcH1qJpOHcsexd3Dws8b2MOs17QSos0xxscpGzGvtL/Wo2o5uTYlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=zeiss.com; dmarc=pass action=none header.from=zeiss.com;
 dkim=pass header.d=zeiss.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zeiss.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Lu01/AV3y71AJnNgNnORLFJGbe9zPTd2C7xK5K1H0B8=;
 b=es+NbV4wWLoweChDhaNvDyJefu01zq6Sm9iSQMVdJMdAOtZk+Kl1SknAFkAZgKm/eO3ZGYq9UMTGWiKKGwTlaV7sCYaXgKYtdivuwWu+WmmwRRYdmU+UXBlC5TYGV5KstUhSHqBLwB5egRgY5y1hFhJWQTDMPjdCTNE7l2ygIirdeY61Rlf+gAOGXGcCuy4TFvChz8j8P9Uvk1cjeUsioXO9RxPLkskryB6AkURpCD5JO5PfNHeSLB6PUr3PlTZisJOzDDpZYKXZWE03xhSTcXFQR8qKhZRVM3XW1I0Ru1C2LfW0yP1jaNGJ/Wgl6sJroL/W7uZayP6U/+ndSbCx6w==
Received: from AS1P190MB1822.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:4a4::7)
 by AS8P190MB1352.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:2e9::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.24; Thu, 28 Mar
 2024 06:29:46 +0000
Received: from AS1P190MB1822.EURP190.PROD.OUTLOOK.COM
 ([fe80::eb70:f989:726d:2055]) by AS1P190MB1822.EURP190.PROD.OUTLOOK.COM
 ([fe80::eb70:f989:726d:2055%6]) with mapi id 15.20.7409.028; Thu, 28 Mar 2024
 06:29:46 +0000
From: "Suesens, Sebastian" <sebastian.suesens@zeiss.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: How to fix Linux CMA on x86 with internal graphic card i915/hda_intel
 ioremap error?
Thread-Topic: How to fix Linux CMA on x86 with internal graphic card
 i915/hda_intel ioremap error?
Thread-Index: AdqA2RkNJlVGUKf8TPmCoqX9+2TPjQ==
Date: Thu, 28 Mar 2024 06:29:46 +0000
Message-ID: <AS1P190MB1822E12B130B87D1A768637AF13B2@AS1P190MB1822.EURP190.PROD.OUTLOOK.COM>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=zeiss.com;
x-ms-traffictypediagnostic: AS1P190MB1822:EE_|AS8P190MB1352:EE_|AM2PEPF0001C70F:EE_|GVXP190MB1872:EE_
X-MS-Office365-Filtering-Correlation-Id: c4170b25-5ae9-4510-4e31-08dc4ef0775b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: /yyseYCivX8QCJUTDh+nWqVRwuhSDFPNgEg9jmbAg/bRnUkiNO8zpyoW9c9uiiXTPOngT7lH0C5BiCoJfUDHUT/Pj84s/y5E496Ch6UroZUFjDp90gNPdBqBm5GTkpjQjNfL0302C8OU+eR72Up16tl9FxoBhs7KVIvtvcqDBNbh0eXI4wmfr9JOnR2C9bHHfRld8jP/EMmSq4LMvJpZCg6SNZ0QIyeVidqHfN73UJTmITXwLChzMrcjrsZaCHbXLLWkw8ttEwCVQKlHDlsxTGXbJfP5qCWmbuxmrNRwD1rycUrT7wJct+Qwy8J1dIvpZpliivZHQINCMwOPLiAWknyPRORNBMKTqmy9iW8jiFFfB7ax4s1AWv0qMP68/b62OgstbI68YFJOqu3x5vQCAim7Yjr4SikPCyVB1EQJHA02Gh1+J0HcBPc5irCRO/WU38PKxZBW/bWHP16wJMA52ZgkYlP0AzsrISUJsKltQ6BrNV1U/T+KDS+J5CQ5IM/WCzkej/rhhOMxKgRbwJqIcVAZio1YMrVI8Kzkp/9ijKIBcpXrsjYb+TADb1Tbrw2kfX5WD+HdTwjkmrfY+kaN4BqOJvYTDdrvsZOSDrir/hxagxZMFfgogY7amL5fJ8mB2s/LbMuxkKXYK7KHg01LoJGallEmE7b0SJslDHYSuvudw54c0TbjFDmZPhvPyQLy3pzZddlfKqegeV5jAtaYc9rcYuZfJzFqC4Hu+PoU2Mk=
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:AS1P190MB1822.EURP190.PROD.OUTLOOK.COM; PTR:;
 CAT:NONE; SFS:(13230031)(1800799015)(366007)(376005)(38070700009); DIR:OUT;
 SFP:1101; 
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8P190MB1352
X-EOPAttributedMessage: 0
X-MS-Exchange-SkipListedInternetSender: ip=[18.192.202.217];
 domain=jegw1.zeiss.com
X-MS-Exchange-ExternalOriginalInternetSender: ip=[18.192.202.217];
 domain=jegw1.zeiss.com
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM2PEPF0001C70F.eurprd05.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: c2cb2177-3ead-46c8-e9f5-08dc4ef0768a
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hyqkQhjXqFM4lVI9dG73DIkYEzCqwObHAdItXALwmz0cZft6WJkEunGyJvA4xBb6GYsls0MHu7HrHIXkCT0W4Ls/sWrheU0XuobBWeQ7ghDYcOu17BVVR0E9k9qR32XOfAieYCcZNDU5Y43XmZwEzTRiQkZ6kxCZ/yxp0MDUR2LOMCYC/aTE2RhWeuaXh6u/Eon7SR3b3BX+/YS01adDHAJ6jdbdZrybj97m4qiPq0BO1OcaI3bux2UZtOUif41uabMCbj+ea3COO9OvSRbU1OwWqs9KZSyDsVl9fP+scPxfljH6nNieueMyjvQu3K+ymx3SikaZOZGBL/wbuzIZoklcySt40rq+eP9DVGty2b/TZ8oP20h1YNAHpUF6wIWOgttEhjytCk9v4LEuEVBn4Ms2NtOxtOABgA0ZqnqNtKnP5fifahwyr1Apbv56svYdmFvlDI8mQZDwVU+Jmv8NwyjdACHiTa0H0ODbmBPQMKqVBnY/C8P63+7NeekB8vdGrCC9IvmS7MQcA0BKYd2VyqDT7zTPR9XC8Y94U6LQZZdI+61m+8tZyK8pn3kvidYRlwFA5XC9e7dRBxqBmyZcaWYR3CrlQYVkqiESldeIKhDIsr0W6gxO099YLnEWfAp7Mm5KK6AhjpEUsyxNq1OU8AHG9g83d/1WgsaQZLHzGOVLRY12cGqS5apev5SeqaqXlb0n7unB7uFSAZiIBHMT8gdNBzcleVMlxSM0xAMeRL4u8SIwYAro2a2DHErvmVk6QJIctqbiU7vYkfJaw8s22eCKAdg0nyrAnZOdB4Q4NKiq5LSHmszuAuE/lJu9kXbQYsnR9tgLujPwV5rjJqsI0Q==
X-Forefront-Antispam-Report: CIP:18.192.202.217; CTRY:DE; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:jegw1.zeiss.com;
 PTR:ec2-18-192-202-217.eu-central-1.compute.amazonaws.com; CAT:NONE;
 SFS:(13230031)(36860700004)(1800799015)(376005)(82310400014); DIR:OUT;
 SFP:1101; 
X-OriginatorOrg: zeiss.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Mar 2024 06:29:48.0889 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c4170b25-5ae9-4510-4e31-08dc4ef0775b
X-MS-Exchange-CrossTenant-Id: 28042244-bb51-4cd6-8034-7776fa3703e8
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=28042244-bb51-4cd6-8034-7776fa3703e8; Ip=[18.192.202.217];
 Helo=[jegw1.zeiss.com]
X-MS-Exchange-CrossTenant-AuthSource: AM2PEPF0001C70F.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXP190MB1872
X-Mailman-Approved-At: Sun, 31 Mar 2024 08:51:26 +0000
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

Hello,

I enabled the CMA (CONFIG_CMA=3Dy) for an x86 machine on Linux kernel v5.10=
 and v5.15 When I boot the system the CMA reserved memory, but when the gra=
phic card driver i915 or hda_intel is loaded the system crashed.=20
I see that ioremap on RAM at 0x0000000000000000 - 0x00000000d0000000 get fa=
il. When I blacklist the i915 and hda_intel module the system boots fine wi=
th cma memory reserved.

I think this has something to do with the shared memory which this driver u=
se.
=20
Does anyone know if a kernel config or something else prevents this crash?=
=20

Please answer me in CC.

Regards Sebastian

