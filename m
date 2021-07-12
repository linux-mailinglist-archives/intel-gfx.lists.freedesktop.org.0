Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1E683C5B3B
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Jul 2021 13:29:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 090EE89A92;
	Mon, 12 Jul 2021 11:29:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2070.outbound.protection.outlook.com [40.107.236.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A28989A92;
 Mon, 12 Jul 2021 11:29:23 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K9o2ZfiDLsa7l6mIk28Wq9z11YA5EEoAO9mBvq+I7RuBQZRGDfdWstbxBM8uix2iVDdE0HU0MoQOgE5/5aLDNPJRW5PFvvlWNn1MQOJ8s//7KJyWgngGMSANPoEYg2GBZSHRRtakHR2CNrb/pJtdI/WVoyipaxrCAUkfSJ8MJORmJrq/al/315q3eZy3Vp/90gpHr8hwzuevo2iON5/6l04wRGCcwLk4Z/v0kblF5b+rCa2M8Coknmd273QQo/PjMwunZrZb9Lqm4cCmlCBmHFLTlXhKvdDiAwwirVe5wIo0m/DU4WNHL6yeb4Sa1VQnf1gN/WOb2uB6xmBjYAeWQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5E1edyzgIWY017S78yKWDMsRTGP0uSgfcgYwDjmYTxM=;
 b=E04bKjp/4rGpnFqA1k4sU8j14Q2ztu7euC/dsfbdkpp1Ol7wFdopnXLOSuPRPiSeEHzTPL8sQMguWRFraOQ+EopVSVmfgz0XQcv6/TRW/XiCLTGFMHSMpv0HgAAJNhFvkryA5kma6NueOnof6zCRnOznpc/AkM20xn5UgUOuv6zHrj3TdlrkSqM0sahk13kYO9jrQIF9MwuJRloWD1/66Foq09T0kSk4PioscWZOaGp+uSTVMzQJxCO/Ocwo9ekO1PRVGUVhfw+uQ+4ZWGoQSD1ZEswyp3X5MEiCKDv9rXTAyhjOH5X0xN02tybNfP0u2Qr4kPdv/kpiJIfKWUZt3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5E1edyzgIWY017S78yKWDMsRTGP0uSgfcgYwDjmYTxM=;
 b=3zrnDXgAnFj/u6kLrX42yi///W972LvZoSkjInY0Gk8lGxYWliwdUiTtN477uuWffBGV0p+71r7oyYA0/+F/xIqi3SmYbx2K742POUKsMceZov99ZvmNNkn7DzfdG1eu7BZY/YnABCQ1M7bI78ZUV4M/sLpKy5fx4IaVZMM+ShM=
Authentication-Results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by BL0PR12MB4932.namprd12.prod.outlook.com (2603:10b6:208:1c2::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4308.20; Mon, 12 Jul
 2021 11:29:18 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6c9e:1e08:7617:f756]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6c9e:1e08:7617:f756%5]) with mapi id 15.20.4308.026; Mon, 12 Jul 2021
 11:29:18 +0000
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20210624193045.5087-1-thomas.hellstrom@linux.intel.com>
 <20210624193045.5087-3-thomas.hellstrom@linux.intel.com>
 <ce389058-2ec8-3aa8-b332-ff34705e8b2c@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <71bd5bb4-1ed6-7869-9684-05099643a259@amd.com>
Date: Mon, 12 Jul 2021 13:29:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <ce389058-2ec8-3aa8-b332-ff34705e8b2c@linux.intel.com>
Content-Language: en-US
X-ClientProxiedBy: AM3PR07CA0147.eurprd07.prod.outlook.com
 (2603:10a6:207:8::33) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:e521:a414:2ae6:6045]
 (2a02:908:1252:fb60:e521:a414:2ae6:6045) by
 AM3PR07CA0147.eurprd07.prod.outlook.com (2603:10a6:207:8::33) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4331.11 via Frontend Transport; Mon, 12 Jul 2021 11:29:14 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: add1f544-f62c-403a-22dd-08d9452847d7
X-MS-TrafficTypeDiagnostic: BL0PR12MB4932:
X-Microsoft-Antispam-PRVS: <BL0PR12MB49322C21AF183698C178F48D83159@BL0PR12MB4932.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2TrKkIXxVfKom21zwuWavebOdMntF73u37KdKpG2FZbokhq4HucJr+sRXLugWNTXydrdjiRY+2FzDvFSabvvM5UKFflkV7EIDC5RdTPYJrxX2LJW0PHGEsxrr4vtvRhot5jmpsDcriCzLYGWPJE9NE62gUpBB2D+Zfz5ZxSCs0FEGBEL+js9yULBqlVYFPPDhIDz+rjMebcvwCWUU6rEUNjeWbfGJIxib19OT72lQB5+yQqCOBwPuX/24cpT6fJPGXIdZCgzjNMMxAb35Ybu4a8Hp1Izf0PWWK661Y6Hbwe9Dt+a5b5uKZWLPSeY6vX6EfJakIM4G6VYyhCm2ufELU8JbweI4H+M4rYfCc/hy1XBC4j3W0lybWk+5PLC/SAqnF6p/dfFw6+E/S37mLqL37peH1ulO07+M8ZdDbBrS90/PFYs3aJBg0XdS+HjnoBOCWgwYozCEvFHuuz+LZB2dVYquPwLbfdJlJL4Y15s4upbbcd3BxWIgZp0dz/Zqy7KJsL0QBfu0r8X3PFkEbKhruMbNN+KPx5+ynU2+Nq5JqC42lQqYKW+c2jLySeaJ70D/X/A4Ym7fH4dDQfnbT43E8mEWlVZFFL4NUhgf7e+pE6YUWV5qLcImqQxYLGfb390K2FYuolieyojtlzV2zAE8VyrhR+JHxP+RiGl39PArMDJkAQEoc5VzkiIAuE2d+LsDbyM7wyG/GuazmSSAgZ21RCoGs0hMpvfEFiql9wW7afGaXxhS+evgFQwYeHq/P2f
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(376002)(136003)(366004)(39860400002)(396003)(66556008)(66476007)(66946007)(38100700002)(5660300002)(478600001)(8676002)(31686004)(316002)(186003)(36756003)(83380400001)(53546011)(6486002)(2616005)(6666004)(86362001)(15650500001)(4326008)(66574015)(31696002)(2906002)(8936002)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VHdvcURKUE1oWGVFdUVSY3o1dm5kaStjV0xrUVpreFFQelJFMEtGb0xzY0ZH?=
 =?utf-8?B?T2FwYURsenJmQnh5K3k1VThkVjlvajRBZ2F2cFJyWHZnVElYazdSZmg2cEkv?=
 =?utf-8?B?b3gwa1NPUk1hUGdYMjFHYXpXcWlXVEp1TndzaVVpeTcxUWF2R1hFM0RwdWpI?=
 =?utf-8?B?SVd5K1psQkxQM3Z0bE45alBnUFA5N3haRDE4QWF1eHYzbllOQlluRDhkRjVL?=
 =?utf-8?B?dm1uTlo1aTlxYUVqVDNSYS9nNjRUVSs2dDZPSDJ3RTY5cVN0OEVoZzVWRThH?=
 =?utf-8?B?V2RoTE4yN3pXdEszYnlaUWxEd0M1MDloOG5XUFFJNUV5dE9pckpEdVVIb1Z4?=
 =?utf-8?B?d0lRWXNDRHZEZERXYWVxOWFvQnd1UkVqeFRuYXJMV3hHYm1aZFprb1Uzalo1?=
 =?utf-8?B?ZTQ0cmszZ2xMRnc2c2ZWSnFwZWxHNGVKVCtrYnVWSElqTEpQRDlLMFJoc1pO?=
 =?utf-8?B?TFFIeUc5RmxQaFFkS2JhSzVtajd4cjkyUk5kY3kzUURxZUhSQlRFMXk1UWh4?=
 =?utf-8?B?d0d5enFPSHVVeG5FdnVsaWxKOVg5RGtQdXdnSHRKdldGUGExRkcxTkhhQzZs?=
 =?utf-8?B?ZnArWDlNUXowKy9ERW9sNkdGKy8zREFsK01GMUZLekhHaVVOaFhlbFFGeTBB?=
 =?utf-8?B?VGFNdlhNcmhRNFVOVitHdGZWYklHcDc4SmMrNTVNcEkxWndOZXpyaWpzTmpU?=
 =?utf-8?B?cDNPdDZ5Q0ZESGJsdzZXdUorTGFxRm44alBRd01rVE45SGEzN2szM0w3UHcr?=
 =?utf-8?B?OGwreVZsWm13SUd5RWdrMkVCVCtsYnJJMFV6NVU5cnhMcjR1Y2VsMjJ5TXl4?=
 =?utf-8?B?Z1p3N3dvVlF0NmdZUU9qdHlnUkVzbXJVSzFDN3BiUW5SaUs4OHQ1Y0ZSTGFa?=
 =?utf-8?B?RzY2U0JNeEh4dmoyR3czL0hNUWsyU1MzTFlQb2l0bXVnUUx6ZjVIT0JMVG5K?=
 =?utf-8?B?a3VnU2tlMVM5cUF3d2czNHNnRjhYZFI4UDB3Y1NPb1h4OHpPcy9lSjdRWUhv?=
 =?utf-8?B?RThrUVNJWEprNmpUaFd0WjJzbzlDR1JUWmtHbUhIRFhDOXdHbUJPYVVlOE9x?=
 =?utf-8?B?Z0dwV1lLc3VhNDRQNTNWZWEwUThhK0loZzRqalozTlh5VXg5MGVIZUpWM2E5?=
 =?utf-8?B?NnFkV0dUbVd0YytCZDRpNURpZW9uRkJMTkZOYjl3NEVWZzhtQ1V0dGt6NnBh?=
 =?utf-8?B?Z00vK21tYmFxbk9LdHBReDBCb2JULytROUNBQTJTcnRLazNzd3lFaldmblRL?=
 =?utf-8?B?SEk2WU1JbW1QRUY4dWg1QmVTQVVTbXVxd2IvOVFMQUs2OWo3SjJFVnMySFpC?=
 =?utf-8?B?TnRrYkxvSUI5bncrUnpQdUkvVXd5NlZCZ25tWVVaUkY2NHIxZnVKaGgyUmp2?=
 =?utf-8?B?eXBaSFVuWGpEVGsyMHlIQ1Vvb1orczlTd3lDY2VsakhoYjc3ZSt5bUk3OEpD?=
 =?utf-8?B?U2xzTTF6cU85ei9ROFRURFBSOUw3MXFnZ0p1cVRQcUV0TXRCNDlsS2xrTDdl?=
 =?utf-8?B?ZDF5ejk4OTVmMFJubDNEK3VoZ3BZVXVaREkrTjczcWdFUk9zVVUzL3NEWEhT?=
 =?utf-8?B?d0Y1MGRuUURvVWNsZHorNExmZXpSWmU1SXdieWcwTENTU2ZzZWplU2pLSXZH?=
 =?utf-8?B?cEhCeTB4cTdsS0VQNmIxa2o4QVBKekNnQ0dENENBeEZpN1pndlYwZ0pVU3kw?=
 =?utf-8?B?T0cvMXhUWERCc0w5aUV4RGdkWmk2S3gvUjVVQ0tUWHJxLzN4ZWViUXJIZjFo?=
 =?utf-8?B?dEVCSDBLVEpqNDY3ZGEvQi9UR1N5dTVUTVQ1ODc5RmF4SkpqeWsrUHJ4ZmZN?=
 =?utf-8?B?d1g1M2ZNQWYyTEF6RVVPbkdLUkVNTkt6QWxJK1MzZWo1UDh2YnRHZFNjcTFF?=
 =?utf-8?Q?UnRObDjLqXc/e?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: add1f544-f62c-403a-22dd-08d9452847d7
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jul 2021 11:29:18.4389 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FcVLMSUppltHkdQx42kY8MhpVUH06ebaU002JFRPjB7ux0qjpVHYvb51E6rseKxB
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB4932
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/ttm,
 drm/i915: Update ttm_move_memcpy for async use
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
Cc: matthew.auld@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpBbSAyOC4wNi4yMSB1bSAxMzoyMSBzY2hyaWViIFRob21hcyBIZWxsc3Ryw7ZtOgo+Cj4gT24g
Ni8yNC8yMSA5OjMwIFBNLCBUaG9tYXMgSGVsbHN0csO2bSB3cm90ZToKPj4gVGhlIGJ1ZmZlciBv
YmplY3QgYXJndW1lbnQgdG8gdHRtX21vdmVfbWVtY3B5IHdhcyBvbmx5IHVzZWQgdG8KPj4gZGV0
ZXJtaW5lIHdoZXRoZXIgdGhlIGRlc3RpbmF0aW9uIG1lbW9yeSBzaG91bGQgYmUgY2xlYXJlZCBv
bmx5Cj4+IG9yIHdoZXRoZXIgd2Ugc2hvdWxkIGNvcHkgZGF0YS4gUmVwbGFjZSBpdCB3aXRoIGEg
ImNsZWFyIiBib29sLCBhbmQKPj4gdXBkYXRlIHRoZSBjYWxsZXJzLgo+Pgo+PiBUaGUgaW50ZW50
aW9uIGhlcmUgaXMgdG8gYmUgYWJsZSB0byB1c2UgdHRtX21vdmVfbWVtY3B5KCkgYXN5bmMgdW5k
ZXIKPj4gYSBkbWEtZmVuY2UgYXMgYSBmYWxsYmFjayBpZiBhbiBhY2NlbGVyYXRlZCBibGl0IGZh
aWxzIGluIGEgc2VjdXJpdHktCj4+IGNyaXRpY2FsIHBhdGggd2hlcmUgZGF0YSBtaWdodCBsZWFr
IGlmIHRoZSBibGl0IGlzIG5vdCBwcm9wZXJseQo+PiBwZXJmb3JtZWQuIEZvciB0aGF0IHB1cnBv
c2UgdGhlIGJvIGlzIGFuIHVuc3VpdGFibGUgYXJndW1lbnQgc2luY2UKPj4gaXRzIHJlbGV2YW50
IG1lbWJlcnMgbWlnaHQgYWxyZWFkeSBoYXZlIGNoYW5nZWQgYXQgY2FsbCB0aW1lLgo+Pgo+PiBG
aW5hbGx5LCB1cGRhdGUgdGhlIHR0bV9tb3ZlX21lbWNweSBrZXJuZWxkb2MgdGhhdCBzZWVtcyB0
byBoYXZlCj4+IGVuZGVkIHVwIHdpdGggYSBzdGFsZSB2ZXJzaW9uLgo+Cj4gSG1tLAo+Cj4gTm90
IHN1cmUgd2hlcmUgdGhlIENjOiBDaHJpc3RpYW4gS8O2bmlnIGVuZGVkIHVwLCBidXQgaW4gYW55
IGNhc2UgCj4gQ2hyaXN0aWFuIGlmIHlvdSBmaW5kIHRoaXMgcGF0Y2ggb2ssIEFjayB0byBtZXJn
ZSB0aHJvdWdoIAo+IGRybV9pbnRlbF9ndF9uZXh0PwoKUGxlYXNlIHNlbmQgb3V0IHRoZSBwYXRj
aCBvbmNlIG1vcmUuCgpPbmx5IG5pdCBwaWNrcywgYnV0IEkgd291bGQgcmUtb3JkZXIgdGhlIHBh
cmFtZXRlcnMgZm9yIGV4YW1wbGUuCgpSZWdhcmRzLApDaHJpc3RpYW4uCgo+Cj4gL1Rob21hcwo+
Cj4KPgo+Cj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVs
bHN0cm9tQGxpbnV4LmludGVsLmNvbT4KPj4gLS0tCj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV90dG0uYyB8wqAgMiArLQo+PiDCoCBkcml2ZXJzL2dwdS9kcm0vdHRtL3R0
bV9ib191dGlsLmPCoMKgwqDCoMKgwqAgfCAyMCArKysrKysrKysrLS0tLS0tLS0tLQo+PiDCoCBp
bmNsdWRlL2RybS90dG0vdHRtX2JvX2RyaXZlci5owqDCoMKgwqDCoMKgwqDCoCB8wqAgMiArLQo+
PiDCoCAzIGZpbGVzIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDEyIGRlbGV0aW9ucygtKQo+
Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3R0bS5j
IAo+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90dG0uYwo+PiBpbmRleCA0
ZTUyOWFkY2RmYzcuLmYxOTg0N2FiZTg1NiAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX3R0bS5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV90dG0uYwo+PiBAQCAtNTE3LDcgKzUxNyw3IEBAIHN0YXRpYyB2b2lkIF9faTkx
NV90dG1fbW92ZShzdHJ1Y3QgCj4+IHR0bV9idWZmZXJfb2JqZWN0ICpibywgYm9vbCBjbGVhciwK
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBv
YmotPnR0bS5jYWNoZWRfaW9fc3QsCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgc3JjX3JlZy0+cmVnaW9uLnN0YXJ0KTsKPj4gwqAgLcKgwqDC
oMKgwqDCoMKgIHR0bV9tb3ZlX21lbWNweShibywgZHN0X21lbS0+bnVtX3BhZ2VzLCBkc3RfaXRl
ciwgc3JjX2l0ZXIpOwo+PiArwqDCoMKgwqDCoMKgwqAgdHRtX21vdmVfbWVtY3B5KGNsZWFyLCBk
c3RfbWVtLT5udW1fcGFnZXMsIGRzdF9pdGVyLCBzcmNfaXRlcik7Cj4+IMKgwqDCoMKgwqAgfQo+
PiDCoCB9Cj4+IMKgIGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9ib191dGls
LmMgCj4+IGIvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm9fdXRpbC5jCj4+IGluZGV4IDJmNTdm
ODI0ZTZkYi4uZTM3NDdmMDY5Njc0IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vdHRt
L3R0bV9ib191dGlsLmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm9fdXRpbC5j
Cj4+IEBAIC03NSwyMiArNzUsMjEgQEAgdm9pZCB0dG1fbWVtX2lvX2ZyZWUoc3RydWN0IHR0bV9k
ZXZpY2UgKmJkZXYsCj4+IMKgIMKgIC8qKgo+PiDCoMKgICogdHRtX21vdmVfbWVtY3B5IC0gSGVs
cGVyIHRvIHBlcmZvcm0gYSBtZW1jcHkgdHRtIG1vdmUgb3BlcmF0aW9uLgo+PiAtICogQGJvOiBU
aGUgc3RydWN0IHR0bV9idWZmZXJfb2JqZWN0Lgo+PiAtICogQG5ld19tZW06IFRoZSBzdHJ1Y3Qg
dHRtX3Jlc291cmNlIHdlJ3JlIG1vdmluZyB0byAoY29weSAKPj4gZGVzdGluYXRpb24pLgo+PiAt
ICogQG5ld19pdGVyOiBBIHN0cnVjdCB0dG1fa21hcF9pdGVyIHJlcHJlc2VudGluZyB0aGUgZGVz
dGluYXRpb24gCj4+IHJlc291cmNlLgo+PiArICogQGNsZWFyOiBXaGV0aGVyIHRvIGNsZWFyIHJh
dGhlciB0aGFuIGNvcHkuCj4+ICsgKiBAbnVtX3BhZ2VzOiBOdW1iZXIgb2YgcGFnZXMgb2YgdGhl
IG9wZXJhdGlvbi4KPj4gKyAqIEBkc3RfaXRlcjogQSBzdHJ1Y3QgdHRtX2ttYXBfaXRlciByZXBy
ZXNlbnRpbmcgdGhlIGRlc3RpbmF0aW9uIAo+PiByZXNvdXJjZS4KPj4gwqDCoCAqIEBzcmNfaXRl
cjogQSBzdHJ1Y3QgdHRtX2ttYXBfaXRlciByZXByZXNlbnRpbmcgdGhlIHNvdXJjZSByZXNvdXJj
ZS4KPj4gwqDCoCAqCj4+IMKgwqAgKiBUaGlzIGZ1bmN0aW9uIGlzIGludGVuZGVkIHRvIGJlIGFi
bGUgdG8gbW92ZSBvdXQgYXN5bmMgdW5kZXIgYQo+PiDCoMKgICogZG1hLWZlbmNlIGlmIGRlc2ly
ZWQuCj4+IMKgwqAgKi8KPj4gLXZvaWQgdHRtX21vdmVfbWVtY3B5KHN0cnVjdCB0dG1fYnVmZmVy
X29iamVjdCAqYm8sCj4+ICt2b2lkIHR0bV9tb3ZlX21lbWNweShib29sIGNsZWFyLAo+PiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHUzMiBudW1fcGFnZXMsCj4+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgc3RydWN0IHR0bV9rbWFwX2l0ZXIgKmRzdF9pdGVyLAo+PiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCB0dG1fa21hcF9pdGVyICpzcmNfaXRlcikKPj4g
wqAgewo+PiDCoMKgwqDCoMKgIGNvbnN0IHN0cnVjdCB0dG1fa21hcF9pdGVyX29wcyAqZHN0X29w
cyA9IGRzdF9pdGVyLT5vcHM7Cj4+IMKgwqDCoMKgwqAgY29uc3Qgc3RydWN0IHR0bV9rbWFwX2l0
ZXJfb3BzICpzcmNfb3BzID0gc3JjX2l0ZXItPm9wczsKPj4gLcKgwqDCoCBzdHJ1Y3QgdHRtX3R0
ICp0dG0gPSBiby0+dHRtOwo+PiDCoMKgwqDCoMKgIHN0cnVjdCBkbWFfYnVmX21hcCBzcmNfbWFw
LCBkc3RfbWFwOwo+PiDCoMKgwqDCoMKgIHBnb2ZmX3QgaTsKPj4gwqAgQEAgLTk5LDEwICs5OCw3
IEBAIHZvaWQgdHRtX21vdmVfbWVtY3B5KHN0cnVjdCB0dG1fYnVmZmVyX29iamVjdCAqYm8sCj4+
IMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm47Cj4+IMKgIMKgwqDCoMKgwqAgLyogRG9uJ3QgbW92
ZSBub25leGlzdGVudCBkYXRhLiBDbGVhciBkZXN0aW5hdGlvbiBpbnN0ZWFkLiAqLwo+PiAtwqDC
oMKgIGlmIChzcmNfb3BzLT5tYXBzX3R0ICYmICghdHRtIHx8ICF0dG1fdHRfaXNfcG9wdWxhdGVk
KHR0bSkpKSB7Cj4+IC3CoMKgwqDCoMKgwqDCoCBpZiAodHRtICYmICEodHRtLT5wYWdlX2ZsYWdz
ICYgVFRNX1BBR0VfRkxBR19aRVJPX0FMTE9DKSkKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
cmV0dXJuOwo+PiAtCj4+ICvCoMKgwqAgaWYgKGNsZWFyKSB7Cj4+IMKgwqDCoMKgwqDCoMKgwqDC
oCBmb3IgKGkgPSAwOyBpIDwgbnVtX3BhZ2VzOyArK2kpIHsKPj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgZHN0X29wcy0+bWFwX2xvY2FsKGRzdF9pdGVyLCAmZHN0X21hcCwgaSk7Cj4+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChkc3RfbWFwLmlzX2lvbWVtKQo+PiBAQCAtMTQ2
LDYgKzE0Miw3IEBAIGludCB0dG1fYm9fbW92ZV9tZW1jcHkoc3RydWN0IHR0bV9idWZmZXJfb2Jq
ZWN0ICpibywKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCB0dG1fa21hcF9pdGVyX2xpbmVh
cl9pbyBpbzsKPj4gwqDCoMKgwqDCoCB9IF9kc3RfaXRlciwgX3NyY19pdGVyOwo+PiDCoMKgwqDC
oMKgIHN0cnVjdCB0dG1fa21hcF9pdGVyICpkc3RfaXRlciwgKnNyY19pdGVyOwo+PiArwqDCoMKg
IGJvb2wgY2xlYXI7Cj4+IMKgwqDCoMKgwqAgaW50IHJldCA9IDA7Cj4+IMKgIMKgwqDCoMKgwqAg
aWYgKHR0bSAmJiAoKHR0bS0+cGFnZV9mbGFncyAmIFRUTV9QQUdFX0ZMQUdfU1dBUFBFRCkgfHwK
Pj4gQEAgLTE2OSw3ICsxNjYsMTAgQEAgaW50IHR0bV9ib19tb3ZlX21lbWNweShzdHJ1Y3QgdHRt
X2J1ZmZlcl9vYmplY3QgCj4+ICpibywKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGdvdG8gb3V0X3Ny
Y19pdGVyOwo+PiDCoMKgwqDCoMKgIH0KPj4gwqAgLcKgwqDCoCB0dG1fbW92ZV9tZW1jcHkoYm8s
IGRzdF9tZW0tPm51bV9wYWdlcywgZHN0X2l0ZXIsIHNyY19pdGVyKTsKPj4gK8KgwqDCoCBjbGVh
ciA9IHNyY19pdGVyLT5vcHMtPm1hcHNfdHQgJiYgKCF0dG0gfHwgCj4+ICF0dG1fdHRfaXNfcG9w
dWxhdGVkKHR0bSkpOwo+PiArwqDCoMKgIGlmICghKGNsZWFyICYmIHR0bSAmJiAhKHR0bS0+cGFn
ZV9mbGFncyAmIAo+PiBUVE1fUEFHRV9GTEFHX1pFUk9fQUxMT0MpKSkKPj4gK8KgwqDCoMKgwqDC
oMKgIHR0bV9tb3ZlX21lbWNweShjbGVhciwgZHN0X21lbS0+bnVtX3BhZ2VzLCBkc3RfaXRlciwg
c3JjX2l0ZXIpOwo+PiArCj4+IMKgwqDCoMKgwqAgc3JjX2NvcHkgPSAqc3JjX21lbTsKPj4gwqDC
oMKgwqDCoCB0dG1fYm9fbW92ZV9zeW5jX2NsZWFudXAoYm8sIGRzdF9tZW0pOwo+PiDCoCBkaWZm
IC0tZ2l0IGEvaW5jbHVkZS9kcm0vdHRtL3R0bV9ib19kcml2ZXIuaCAKPj4gYi9pbmNsdWRlL2Ry
bS90dG0vdHRtX2JvX2RyaXZlci5oCj4+IGluZGV4IDY4ZDYwNjk1NzJhYS4uNWYwODc1NzUxOTRi
IDEwMDY0NAo+PiAtLS0gYS9pbmNsdWRlL2RybS90dG0vdHRtX2JvX2RyaXZlci5oCj4+ICsrKyBi
L2luY2x1ZGUvZHJtL3R0bS90dG1fYm9fZHJpdmVyLmgKPj4gQEAgLTMyMiw3ICszMjIsNyBAQCBp
bnQgdHRtX2JvX3R0X2JpbmQoc3RydWN0IHR0bV9idWZmZXJfb2JqZWN0ICpibywgCj4+IHN0cnVj
dCB0dG1fcmVzb3VyY2UgKm1lbSk7Cj4+IMKgwqAgKi8KPj4gwqAgdm9pZCB0dG1fYm9fdHRfZGVz
dHJveShzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmJvKTsKPj4gwqAgLXZvaWQgdHRtX21vdmVf
bWVtY3B5KHN0cnVjdCB0dG1fYnVmZmVyX29iamVjdCAqYm8sCj4+ICt2b2lkIHR0bV9tb3ZlX21l
bWNweShib29sIGNsZWFyLAo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHUzMiBudW1f
cGFnZXMsCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IHR0bV9rbWFwX2l0
ZXIgKmRzdF9pdGVyLAo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCB0dG1f
a21hcF9pdGVyICpzcmNfaXRlcik7CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
