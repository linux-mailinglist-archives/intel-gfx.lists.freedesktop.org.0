Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B63661039E2
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 13:18:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17D3A6E4BA;
	Wed, 20 Nov 2019 12:18:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM04-SN1-obe.outbound.protection.outlook.com
 (mail-eopbgr700074.outbound.protection.outlook.com [40.107.70.74])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A3EF6E4BA
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2019 12:18:40 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=maZMjAN20uo/8JQPfqgpwQD6mNZG2i1sfiJB0m78SeMg7t1CRmhrfajvbJjQZBCdCcS0WGFNy6knu5LH6Fiy3mq0L2Za+L7LbuA1ZHsdVOolvkI6fKiry1nSJrHvkUCVNnglcRK7DV/ZW7xqbxvyr3FLniJUnbY1evd+ZzqtcSZuJCCF78QAYb/mosk3qKZrZ3dHMXsUAW+dmMTaM0oVbDqbX0XAWObIku8ZWoxElbv5BbXMa1PM3p6REQKsk34KbX6sxCIeF6UgUPdQv48Jm34Xb9nyqEoEyxRRx6Bv0E+53TZFSfEMZZCDlhYI0j4MJY619HfrqHyo9TNSSovGOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6tUBHQUcyeCqxnInBMZVMRCPEXLJv9REF/SwcpKaEKA=;
 b=DBVsvomq2LRhB7P8XJWrjtuHIN8UCwDkL/2ykUFxY2EokKRtITf2x1v6H6xM8ncNJp5jAiIHoO1P2gd5wp13m4s5hB1OzbxJhYuJGLKDwyTKAd7WoZPmk6QwuPwWqavKgG3OUIQmbGARs9qKopXT89Jhmu0tGoTfjfVN/i8WJWFimyOGU5C42LlDIyXZEptuLUWPeK8tJ0oTBpVFZAOyTbO89vtslb5fdn8RtTeXj6G4yV3FFjl7sSyPEFbtZThAl8OeK/imkHak2Sr7xr0MWU8xQpvMZLogbIfUzO9un+HB5MrsuJn95Z7k0pg4/IBlt/NvVgbbymiNXxSK0cAgBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from DM5PR12MB1705.namprd12.prod.outlook.com (10.175.88.22) by
 DM5PR12MB2375.namprd12.prod.outlook.com (52.132.140.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.30; Wed, 20 Nov 2019 12:18:39 +0000
Received: from DM5PR12MB1705.namprd12.prod.outlook.com
 ([fe80::e5e7:96f0:ad90:d933]) by DM5PR12MB1705.namprd12.prod.outlook.com
 ([fe80::e5e7:96f0:ad90:d933%7]) with mapi id 15.20.2451.031; Wed, 20 Nov 2019
 12:18:38 +0000
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel@ffwll.ch>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <235eafec-1a23-c354-d7a0-65cf1f60402a@amd.com>
Date: Wed, 20 Nov 2019 13:18:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
Content-Language: en-US
X-ClientProxiedBy: AM0PR01CA0004.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:69::17) To DM5PR12MB1705.namprd12.prod.outlook.com
 (2603:10b6:3:10c::22)
MIME-Version: 1.0
X-Originating-IP: [2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: c7c041ff-2e16-41cb-1d69-08d76db3c61d
X-MS-TrafficTypeDiagnostic: DM5PR12MB2375:
X-Microsoft-Antispam-PRVS: <DM5PR12MB23758A27E1C78EC8D8268FDE834F0@DM5PR12MB2375.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1728;
X-Forefront-PRVS: 02272225C5
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(376002)(39860400002)(136003)(366004)(199004)(189003)(305945005)(7736002)(14454004)(25786009)(66476007)(558084003)(31686004)(66946007)(476003)(8676002)(66556008)(230700001)(5660300002)(8936002)(50466002)(2616005)(65956001)(65806001)(47776003)(46003)(478600001)(6116002)(58126008)(23676004)(110136005)(2486003)(52116002)(36756003)(81166006)(486006)(81156014)(2906002)(14444005)(99286004)(6666004)(386003)(6506007)(31696002)(6486002)(86362001)(6436002)(186003)(316002)(6512007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR12MB2375;
 H:DM5PR12MB1705.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iATa7X94uqY6+6wnzdEurcLdOObIKaPfAOKw9bCmuGFmQtjLkPPOZLsKhpX6rEMLzkjLEte9MrH1t6HhbahlDW8PVp9I+s4TjyCESeiwMUSJkTYn3UQ9D4mgpUxUQm8kHFDKGxsOW6CxDvVclS29BD6REQmznakMLtzeat71v0ixdNpNngThMrAXSTBUWhlW78FTn+4NAArFlFZFQgAjESznXDXQnZe6y1i0J+rslzyRPe5s/EB/ljM36I5S0WvsMsnsaJbd59G4mBANwHTerpmCbm0ixE5aU9bSv3fSXB+RBWqLymY6HRy/1eUuXvZMjp4+iZ61gv2yUma/HkaeI5sBHhYmxjS8WDCT1KHv9WGFMXlwxLv6sG0h1jZXfNBlV/PENm4n58EhN4hZQPLw4a1GqxY4VorTy/SAfTQO9zychYKS144Pijrz5ZwE5Smk
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c7c041ff-2e16-41cb-1d69-08d76db3c61d
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Nov 2019 12:18:38.8654 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KzrPXB2VGHOFhg75cuONj72+/tDDwmDUCa0UhBOQ3+QBVCtkOwn6hlcWhY1HbbyU
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR12MB2375
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amdcloud.onmicrosoft.com; s=selector2-amdcloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6tUBHQUcyeCqxnInBMZVMRCPEXLJv9REF/SwcpKaEKA=;
 b=rkX/dv17iUasHYEDOsrfi38xD+AwCfh9C5VwCmA0q+tCCxpbblsy2lH259IwsxNQgu3Gex8sg/Ff/Q/1s6TkxJLdcg810693j0TJFdkIBJjHu48uYcE6bkLRrPlJ3g3ig6rPxMqtquiBJykE/MMru9yoxQp6NYF5aPId0+QOsYQ=
X-Mailman-Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Christian.Koenig@amd.com; 
Subject: [Intel-gfx] Question on how i915/GEM is handling page faults
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgRGFuaWVsLAoKaG93IGRvZXMgaTkxNS9HRU0gbG9jayBkbWFfcmVzdiBvYmplY3RzIGZvciBD
UFUgcGFnZSBmYXVsdGluZz8KCkkndmUgYmVlbiB3b25kZXJpbmcgaWYgYSBnb29kIGJ1bmNoIG9m
IHR0bV9ib192bV9yZXNlcnZlKCkgd291bGRuJ3QgYmUgCmJldHRlciBwbGFjZWQgaW4gdGhlIGNv
bW1vbiBkbWFfcmVzdi5jIGZpbGUuCgpSZWdhcmRzLApDaHJpc3RpYW4uCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
