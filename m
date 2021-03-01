Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8956932830A
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Mar 2021 17:07:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2579A89E50;
	Mon,  1 Mar 2021 16:07:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2075.outbound.protection.outlook.com [40.107.223.75])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DC5B89E8C
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Mar 2021 16:07:13 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Oy2PNJ3ihKt2Dx//TJNWnQtDWol/SSMUIbDPHk3Jq5bV5N4VlTfLLoe36D0IoigitCaK/84ZEPwsgYgzcbHH0oSoZtSjzdyBJyb9NycXtviVZNlAyv/KNLtEMHx4W1ARzN08BfwDRRJ+GcQUhnyyF+0Yu5bBPV8crKr7vlARrA3I+mBfhoJvpZ3MJSr7WsgJeDQhVZUS57E6obByGdG0dwro4WxDVvBtj6HJYegxL+1+/LSB3ENP+YUykjkt1paDirrDNeE+iEBvJ3549gdTX4awcVkOu+OrAs3o9jwAl3lbEaxchpGTVHTdDXa3K04zu3GWusk8dyFPhoAk/NxkOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iF55qSoxQOGEbayxURNGwezG4c4OAtOW6PCmn2k3o3M=;
 b=JGpZrV6bLzw8gvaiTgLOR9aP5iWj+1bcYj0OaxNKuMqWa4WN+mbhHWrShLYPpWmxAlyPPnYITX1kMayeMXm1MRpZCTdQSmMf0AvXb+wLz2e56NhaVEmqYh3sLtFzdTEE/drfEB2XgFU9t3ZkcyPBAR5bRrAF5oHK4LNKcYF+9P9z7rvr+um3GXHZ3w6BcyDj/6h/yc2jSimgOlDGHhD1ABpCSp3utx62t6z673vcvFabgXGPQ0oD4wvGpWSCajG+TNvctDsoZhsmDRm7nAxCzt90ct9iaOTg3hnQY+7sYe27lBZn7FO4mhAk2iXm055GUMqPojYOZzk/NSe+E10eyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iF55qSoxQOGEbayxURNGwezG4c4OAtOW6PCmn2k3o3M=;
 b=jSEGk8HJraVhFfRil4XiBIK8LjC9YfTwv5wGIvhQu1yRXJ9PFRbaFmwFFr4Qeoz8JzxjB8MbjWa8jYSNM4ub2Ggdjgns9kTrxMNJdWHwZmkmeXUzv9ehIInoT2kcSSKfA/8+acu3MaGyMTHikXj9pGS6FBKsjF8KAnYT36NKGCA=
Authentication-Results: x.org; dkim=none (message not signed)
 header.d=none;x.org; dmarc=none action=none header.from=amd.com;
Received: from MW3PR12MB4379.namprd12.prod.outlook.com (2603:10b6:303:5e::11)
 by MW3PR12MB4553.namprd12.prod.outlook.com (2603:10b6:303:2c::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.23; Mon, 1 Mar
 2021 16:07:12 +0000
Received: from MW3PR12MB4379.namprd12.prod.outlook.com
 ([fe80::8c0c:5b9b:fec6:e12b]) by MW3PR12MB4379.namprd12.prod.outlook.com
 ([fe80::8c0c:5b9b:fec6:e12b%3]) with mapi id 15.20.3890.028; Mon, 1 Mar 2021
 16:07:12 +0000
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
From: Harry Wentland <harry.wentland@amd.com>
Message-ID: <6f7537ff-d8a0-5a8a-fd45-e471fae3f70a@amd.com>
Date: Mon, 1 Mar 2021 11:06:52 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
Content-Language: en-US
X-Originating-IP: [198.200.67.155]
X-ClientProxiedBy: YT1PR01CA0002.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b01::15)
 To MW3PR12MB4379.namprd12.prod.outlook.com
 (2603:10b6:303:5e::11)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.193] (198.200.67.155) by
 YT1PR01CA0002.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b01::15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3890.23 via Frontend Transport; Mon, 1 Mar 2021 16:07:06 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: e8eee65a-0259-4976-1a63-08d8dccc1290
X-MS-TrafficTypeDiagnostic: MW3PR12MB4553:
X-Microsoft-Antispam-PRVS: <MW3PR12MB4553EA40782B7E661A4520628C9A9@MW3PR12MB4553.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rV36F9k7Y97jXzqU8E3ifHZp9L9A3pt4nmD8C+kCo9NME13PcMw9E3PtkTI4Bj8V7+1TyTvhOK0MkRqRCUfLP+RD49P2OAfULbG28riYSQeNewSghpuPzsE/FhmNwoQfTszYiT9u5sEM4cheyDKSloxHybP3wHD1Cqy/LE+GtrkLr9U61Qp/OQQL584MwbtayIA4TXnsb/0yCcVXqBAXeP6lnhl8jhXA0SjWDym+88Csk3wDOm8U3h9ultP3xu65eC0trGDpcGIpfhP0URVtgBZ8pN5bAFWRlUa99dYxfg7/kEwoPxGx6ZbnufFYrLPeUveycp0p+9ndGN+49o+cYo3gEaWw2rwJn5EPDlfXPUlr2xwq5ULuYKHoiJgOzxYUu0XsnKa3JSPAeIFSVwzT63TJka4f8aCDkKcZaU+1WtoThat0rPpgyOCHCfVs+AM5KAqEKE0tTyo5Hz9+5jkIQcLM+Z3/z8Sfy2JQlHZaH4/bzdw5rsyFbNA6/oX6zPHOrqQ/jveqTCCVkEazQecsqrNUTIn6d8YPwNEeteH9+yGHTDv+KPxEsCejtN1HNTWH1L2IgUCz67jlpN7GypqKAfyu2xExJEQKjwylxfohO3Q=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR12MB4379.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(376002)(366004)(396003)(39860400002)(346002)(86362001)(316002)(186003)(478600001)(6486002)(36756003)(26005)(16576012)(16526019)(52116002)(31686004)(6666004)(31696002)(66476007)(66556008)(5660300002)(956004)(2906002)(2616005)(4326008)(4744005)(44832011)(6916009)(8676002)(66946007)(8936002)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?bkNzSFZsWFVvQno3TlZtVVpiMm9iOTU0VGJReUQ5RXJCQ3EzSVpSWGd3WjVw?=
 =?utf-8?B?T3RuMHlzbURZREdXS2RNZldhd0JuSUtrV0t4S0hFbUpMemJ5NkZxOW12Tnc2?=
 =?utf-8?B?dWZiRG04SUdLaVcvNXNVKzdmSUgwVFgwMU9nVjRVbklPaTRvdXFqQkFqZGZt?=
 =?utf-8?B?MHlqRzdHWEZCL0tXSXd6RlAycWJnNGJPYXUralEvV3BzbFJhd3l5V0UybDVF?=
 =?utf-8?B?TEh2dGRnK2hzRHptdG1LVWNERlZhbmd3dzBKNHZjbUtIZ040bUowYXM0Wlhm?=
 =?utf-8?B?aUlxd0g5bjFzYzF6VWdGQkVmVXNWQlZSUWhLRDcvVEpWUDFwTXZDTTh4VVlG?=
 =?utf-8?B?T0pZNzFISmJ1UituUjl6QzVKSFB3R3MzdnFNeHZibzdFZmpDb3JET09ET2VN?=
 =?utf-8?B?SmxoUmFMbmI0WFdZenZIWlIwcGFrTmc3TlBQYzNaSWtuOW9FNDF1SUplWUUw?=
 =?utf-8?B?MEZtdXBBSmUzOHllSTdGS3pUVGhyRDJpaTFLQ0loU0FRMGRFd2drelFhZ3Aw?=
 =?utf-8?B?WW9jVTBEd3dPU2xyellSTEYxSDZKM2VxTHRXZm9heDlpd3FCK3dmS3JTV2hr?=
 =?utf-8?B?NTlyUnA3c1VvNnZqRmZIZ0VnMXVEdFMweW5LWlZuZkZQREtMRjc4YVFNWGRD?=
 =?utf-8?B?K3ZIT2YzeWNLT0RDZytGc1JtSnp4VTNucm5wZHdiQ3FqTG5XajBOOHZvUUIr?=
 =?utf-8?B?NHhEaVFRaDJyL1U3Y3FVb2pGQldIa1NheGdJVHlFU3RPL0p5ZGo1SS93aDY4?=
 =?utf-8?B?cXVUZUN5MC9YZHE1OVFDWUxKWjdKRWI3MUcwSm05bXUvbmdia2k4dy85TW9o?=
 =?utf-8?B?WEVaMHlZaHlOZ3hUQnlWejFSVkEwSUZhcUtFaUtHRHZ0NkVYclZBSmJtcmlJ?=
 =?utf-8?B?dVIyYmV6aE1OQkxMWklRVWJtaldkcUlIeUJ6VFlCeVVhWm5NRWFJdnlnR0Y5?=
 =?utf-8?B?ay9aQmxBWlJsRVhjdlJ1K0JHN2JMbWFWUFlpWWVEcS9oY2EwcVArTmcrUjQr?=
 =?utf-8?B?RmtoTytFQWRPeE5BTmNVMVViaG1Ec1U1SWNYOFU0VXNZTjhXS21JK3BtN2hG?=
 =?utf-8?B?cjViMWlmRGNXdEttWDhBWk5QZ29Sd3l6VUtjUWhUaS9pcmJJRk1OWjdCUU1l?=
 =?utf-8?B?MWlJYWVpYUVQaDJHdGxlRm5iUE56NnVqeHBMQ1J2dDdjNm8xcnlqUUtLWHFj?=
 =?utf-8?B?eUtyUXJXVTdPY0hLY0FDV0VCMmVsbmpwckxPNkdxTG51NGJEVTFUNjVHU1hO?=
 =?utf-8?B?QUdJTGVQdGM1SC9JTnVjOGVtYUFvRGJnNWw2cjRsaWhFYktrUFhmcWZQcVFu?=
 =?utf-8?B?b2V3ZytkeWtveDhTeUlwNDVibUJhSzBjV2tta09oN1U4enE0ZkxlVkpmeHBh?=
 =?utf-8?B?bGJFdEtBWWYybWRpRUprNjFZaVlJcmxrUVFRSGhiRngvejRaeFVBcjg2MTg3?=
 =?utf-8?B?ZmpaY2RyQ1VrMXlRRThVUXIrVWd5T2ZJbEI4R0FlN29KOG1QY3JtNm1zZitT?=
 =?utf-8?B?enpuTENEdmZvRU5nRTduSDlxR2VCb0lkcU55SitvYm1Sd2xJVzh2TDZyTkF6?=
 =?utf-8?B?aEhOdGN4eUduR2RSaGp0N3UxWmtQTHhvWUloMWViR0N6SGlieWdueWlka3dL?=
 =?utf-8?B?eWdHQ3NsMG43UFpsQlJDWUtPeDJSUGo0dnJ6NHk0ck1PUSsxd3NrMWJRUUhw?=
 =?utf-8?B?cVNaWU1YRThZT3N6YWJNaHI0U2dkVnhCRVlUT1hobkkzc0ZHYlY4cVpId0F6?=
 =?utf-8?Q?UwrZLKQmODjzZBF0j+MBFWSwAPT+EGa/GfHaMI5?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e8eee65a-0259-4976-1a63-08d8dccc1290
X-MS-Exchange-CrossTenant-AuthSource: MW3PR12MB4379.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Mar 2021 16:07:12.3195 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zICMKLIp73IjSg4ZwX7O5B/WIR9HDO711Y90Qh9+xbsbl2yjMN4R2v4v83VUXpKrqhZGjrI3D/HPMO9hi/qSPg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR12MB4553
Subject: [Intel-gfx] 2021 X.Org Board of Directions Nomination period ends
 next Sunday
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
Cc: elections <elections@x.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Unfortunately my previous email seems to not have been received by many 
people. I will send this email separately to each mailing list to 
hopefully get better coverage.

The nomination period is currently ongoing. So far we have received 3 
nominations and will need at least 4 to fill the vacant spots on the 
board. We hope you will consider putting your nomination forward.

To nominate yourself or someone else please send the nomination, along 
with a personal statement to elections at x dot org.

** Election Schedule **

Nomination period Start: Mon 22nd February
Nomination period End: Sun 7th March
Deadline of X.Org membership application or renewal: Thu 11th March
Publication of Candidates & start of Candidate QA: Mon 15th March
Election Planned Start: Mon 22nd March anywhere on earth
Election Planned End: Sun 4th April anywhere on earth

** Election Committee **

* Eric Anholt
* Mark Filion
* Keith Packard
* Harry Wentland

Cheers,
Harry Wentland,
on behalf of the X.Org elections committee
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
