Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C4C93917CD
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 14:48:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93DFA6E4AF;
	Wed, 26 May 2021 12:48:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM04-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam08on2077.outbound.protection.outlook.com [40.107.102.77])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBDE66E4AF;
 Wed, 26 May 2021 12:48:46 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IMgDH9gjz96Iehe19KZFBziTRzRfIHC5MpdMKiMXdw5mqGlQrfwfXRWjRPG/Di75QTGh09DBzTOqAYFnc25/QIJU3BsIfHDdvsnh/ULnA71l9RRGBHSOjUrNzAY8fvZuThfraahoMAdN4a+nKPpnCknxJPZ6NtNGu1z2UQK4ncoKlnZ3zuLtq9HnokxNPKH1GeGgHaFiQ8MLdnyW4W9tk/BlJZUs7/r7c2mlyeLlZuF7CQ8K+1nL8zCpfXwMjIoQ32OeduaUXGj/ZN/3NXodv/ks+ztu3kdYBK0O4UXemdoJwpEVhrmGRlDGiezJfP4NUK19dRI9f8edX2OQ0gU35w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G+MOuCSMMMHY4+H+4goF6oB5d6kEAF7bsJfQATwdozY=;
 b=hR7BfWxpyxrS+aknH2thqXgUjzc6WPCgz7O8MkdrUUhoBSFi3n0cXa3hXXC86p7fSyz25yap1EFExngQcfSNG6TBiTAVEEE21Ir5hUPNhu0Gmsjr2OqBDdXn47pVDsS9ekRrjBY7/wFlDh0+2kL7yFaVd13lc4BWP/EiABGIuTHg1y00bBVH1giNr9QlrD4XDis0i8n77PaQkBm5BFBS7MOgJ1LUWAuleXujECv0XYcm4T84lly+wrxXHdohecFcYFtnccrJ8TK0c0E/OLJDLEE2sTS6tlRxX767zMqBqhrGgo8rLYfp1ZX8vnOeWnsFYzRxXKsQzwowsXy8xRUY9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G+MOuCSMMMHY4+H+4goF6oB5d6kEAF7bsJfQATwdozY=;
 b=bnNv3Vk9w5x/BClSL32tDOdOKMYLf8lxdMhStYz/9+pwb28qaM2XZpVTVR0/V0sFZG20drSZiaNrR5nV8oBM/pT/zTFahLPd23p6SchQPVXEx1bxVfEhtbYPS414ELFdSxY6hp1kKLoM0QE4ZAW5hCm95W3yL7UGCa47CoZQv1U=
Authentication-Results: ffwll.ch; dkim=none (message not signed)
 header.d=none;ffwll.ch; dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by BL0PR12MB4706.namprd12.prod.outlook.com (2603:10b6:208:82::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4173.20; Wed, 26 May
 2021 12:48:44 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34%6]) with mapi id 15.20.4150.027; Wed, 26 May 2021
 12:48:43 +0000
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20210521153253.518037-1-thomas.hellstrom@linux.intel.com>
 <20210521153253.518037-9-thomas.hellstrom@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <7fffe269-cc1d-4074-770d-74f8162b7835@amd.com>
Date: Wed, 26 May 2021 14:48:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
In-Reply-To: <20210521153253.518037-9-thomas.hellstrom@linux.intel.com>
Content-Language: en-US
X-Originating-IP: [2a02:908:1252:fb60:3ecd:562c:67c6:4afe]
X-ClientProxiedBy: FR3P281CA0028.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1c::19) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:3ecd:562c:67c6:4afe]
 (2a02:908:1252:fb60:3ecd:562c:67c6:4afe) by
 FR3P281CA0028.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:1c::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4173.11 via Frontend Transport; Wed, 26 May 2021 12:48:42 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7d0b8763-6542-4cc4-cea5-08d92044986a
X-MS-TrafficTypeDiagnostic: BL0PR12MB4706:
X-Microsoft-Antispam-PRVS: <BL0PR12MB47062794761A1F05F83634B083249@BL0PR12MB4706.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1728;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: UWIFmWvjMdRvWcnmXBPwNTtzMSatW305Fnmrx2VmsE+wQ5qWFVvE7+TC0lpxDE7XXoaE2BNLA5WaeQczVNf1Xoh4orIaarQ8Ae84gp8sFiKTFwTwZnhYrD5n/rQo1vknOnZgfBdWVzW10oVPpTXuPd1W/o4xqJmYEW5KySjuCdl+iiOqwfhzaA8hLDzRMJhcwedaykzRsqDTrK1qBpKIUCTdixeI/2L+TPrVbItYPElETJsNMQCitvfY3z7HdGv2PyJE5XVTz7ZZdNdtMG0Ouug7lqKnCSMfbUlEzMDn1RhRoQMVrYYw961hPEsPVgQhIjDhXmTSN0/ACUhkjBscCJyWUJVVRr65FspMjoj/VFPHQvNJfyYITNJTGs4JrsSMU9RtfzhdPugzAXlzcF+wn8EnQzBfdMxPmOX96cEr27wvi3Ul97LL4tLJTUgK3Cv1p9ZmG7i5xjsWh6RwmOGFgBz3sUjf/n2rTNJkg8yNR9TeZW24SKTwGB58JwSDRdL0ni4Ch6A8WdFVcmCyoDweaLIJ7xGdy1Pftm/Ex2+kgGbCuy00WldWDU/mIIhLsoPqpTcGh20Y51M9LgFgqEQJr/o7A4HvwRmrf2Z+UXq1XMnr+bis70dx3KEa+8vD+64L480WuYuNCUNvoK3Mp9tXbbjHnK+vBwUPb7LhXsRxdZU3zQI+V64SNxJJruDNdAMQ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(376002)(366004)(346002)(136003)(39860400002)(31696002)(52116002)(2616005)(86362001)(66556008)(16526019)(6666004)(66946007)(186003)(31686004)(54906003)(5660300002)(38100700002)(8936002)(6486002)(8676002)(2906002)(4326008)(66574015)(83380400001)(478600001)(66476007)(316002)(36756003)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?bUNPYi9LUDZ6Z2FyejUvbDhMUTBoK21NdGY3ZDNiSnRkNTJaL2dMUGNmS2FG?=
 =?utf-8?B?bk9UVDNleXFpTnhjNWNSODkydm50UFJEOHdYQjhRbG11bXVBWUQ5Qi9WNUcx?=
 =?utf-8?B?OWx3QXFmQjZ6dXlYbm5YTlAwSnNWeTd1d0s2cE9ENnNlR3RBZGo1a3NzcEcw?=
 =?utf-8?B?K1dCUUJDaForUWVhN1VJZ2lCQmttZ0J1R250S0dtdGE4ekRYeGczVllmSlFJ?=
 =?utf-8?B?OUJFeG1vbHJGMURacEpXRW5XaHF4TkhFZnpJRE01NVZZOTVFZ0p0UkQ5N0l5?=
 =?utf-8?B?K2VZRE95ZFNzUk8wUytxa3ViZlBMc0YxMi92ZDFWbzZucm1VMlhUN2Ivenh2?=
 =?utf-8?B?MmJUMGhuVEVMNm03U1Jua1VNcDNsdG5ZbWJ6OEQyaDA2NWFPekk2UFpwbUFy?=
 =?utf-8?B?dmY5aEdOY2N0b3IzVU5aWDZaeTRqZ0xiVW9MYVFxUi9GeU8zRFVsNi9nd3pF?=
 =?utf-8?B?SVB3aTFoMEhsbHEvSnY4VE5VU0l4R21PZ2Vrb1haN1g3bVBXRmVYRHU1M3Jm?=
 =?utf-8?B?ajFqaDVSVVgwSFozeXh5QzhmMGdwYmg5TFd2OFVvVzY4blZDZXRVSFlmME1T?=
 =?utf-8?B?cGo2b0traXJqaHg4YUc3SjRMZzhSQ2Rrem55OVc2aFgzeHV5NUlIRDdiNXdl?=
 =?utf-8?B?K1YvLzRyajZ3SlVaVVZDbmQzRUdDL0FoVGFQdkEvaHFIcHhJaHZvN0dGYlBR?=
 =?utf-8?B?dXgzN3hQSSt0Vm11VVJtSlNTd01ocmYza3JxSHVXdUJKaWZzUWZaV2dES1Fp?=
 =?utf-8?B?UVBTcUJmL3lHWVJYR1VWSGk3aDduaFN5cUNhM1RIdHROTldGbkpCMTh2b0Ry?=
 =?utf-8?B?dXVSbGRlaWs3UXpsb3ZMSFZ5QkdkekFoT0pGOWttd3FsQXZ5N1hmT0pDeDdn?=
 =?utf-8?B?L2dUd0NLbng0ekxLejNWRDhlTlZFWUFXZU53anpLRkNmcjc5eXhYZWtkYXBi?=
 =?utf-8?B?T1A4Vmxid09JUWxJQ2wyS1lmYnNDMTFHdFhncktzTkg4aVMvcU9IQTFaR1hO?=
 =?utf-8?B?akpyMUVlbUt5L0tla3NrdmJSblFPSVhhWkxsQTdBRysraElqek1naVhSTXcy?=
 =?utf-8?B?Q3JiZm5NdDUzSmdKQ0l0ZEtiVHMyYTJmSFV0SFA5ZHpwVU5uNHdGcnNPbXJZ?=
 =?utf-8?B?QStxTk9OK1hmK2xqdDdxUG5zMHJpakRZY1JSZkY3UCthdE5NVVhBK1JxcHI4?=
 =?utf-8?B?UVRCUWtiVkozNG9HMXQxVzhWcW1Qd1pJQ1YvcDI0NHlzUUhzVTR5b0NrSnNM?=
 =?utf-8?B?bXlQN1duVXFnTU9xUVhjRXdNZEVkenpoUmxvV1U5cm96dGswMUwrUHNBNG54?=
 =?utf-8?B?dTVqV0QrdHpuSUh6WFRyOWdjMzZDem0zelJEWFZSR1g3UGszdVRRZG8rZnBQ?=
 =?utf-8?B?bUZGV05hSWE2bTVZSEtyczN6T25JeE9vTXZNMHpFaTFXWllDRWZ0N1k3V25G?=
 =?utf-8?B?NVJKTmhyQk9oNTExTVJaK3R1eXdiNEM1K0NGSG1XY2d4SWh0Wm5UOW5yMTRq?=
 =?utf-8?B?Q0J3SzVyNjFXTVFjRFZ3UDBTQVNuS05pMUxPSkpBeWJ5bUJ6QklIcTIvS3BK?=
 =?utf-8?B?TGtLK3FuQ2VDVytyT1U3RkhTNVo5bHp0QzllVDYybEtOTDFEYUptbkFyRVR4?=
 =?utf-8?B?TDZuY3I5WmJuMkVROUlRdHh0endNSUowTVFqeG9CWm1tOUsvSWx5aVExRU1G?=
 =?utf-8?B?ZkxqUXY3U1RNQ1JjWWcwRmF5NWN2dUJXTnM4dFpuSFZwWTRLRVBYZFRIbWpL?=
 =?utf-8?B?YkVReUc4MDRXK1VkTVl4THl2Z01hMXFkN2t2SFBuN01LSjVyaEZyZlFmdk8x?=
 =?utf-8?B?OSs3bHdCS0NDd3kyWVh1OUpMQ09FRWJ0MFZlNUhwUGphQVpuamhxN29CRXlw?=
 =?utf-8?Q?Rf4cTEMqZQEQw?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d0b8763-6542-4cc4-cea5-08d92044986a
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 May 2021 12:48:43.8356 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: b/vCmwI9kQWuW9Ze8W1t6DGE9Yur8en/BwYLqKKMqnMwKrfOWS4A+k+7SynOA7n8
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB4706
Subject: Re: [Intel-gfx] [PATCH v3 08/12] drm/ttm: Use
 drm_memcpy_from_wc_dbm for TTM bo moves
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QW0gMjEuMDUuMjEgdW0gMTc6MzIgc2NocmllYiBUaG9tYXMgSGVsbHN0csO2bToKPiBVc2UgZmFz
dCB3YyBtZW1jcHkgZm9yIHJlYWRpbmcgb3V0IG9mIHdjIG1lbW9yeSBmb3IgVFRNIGJvIG1vdmVz
Lgo+Cj4gQ2M6IERhdmUgQWlybGllIDxhaXJsaWVkQGdtYWlsLmNvbT4KPiBDYzogQ2hyaXN0aWFu
IEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+IENjOiBEYW5pZWwgVmV0dGVyIDxk
YW5pZWwudmV0dGVyQGZmd2xsLmNoPgo+IFNpZ25lZC1vZmYtYnk6IFRob21hcyBIZWxsc3Ryw7Zt
IDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4KClJldmlld2VkLWJ5OiBDaHJpc3Rp
YW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cgo+IC0tLQo+ICAgZHJpdmVycy9n
cHUvZHJtL3R0bS90dG1fYm9fdXRpbC5jIHwgOSArKysrKysrKy0KPiAgIDEgZmlsZSBjaGFuZ2Vk
LCA4IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vdHRtL3R0bV9ib191dGlsLmMgYi9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9ib191
dGlsLmMKPiBpbmRleCA5MTJjYmU4ZTYwYTIuLjRhN2QzZDY3MmY5YSAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9ib191dGlsLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
dHRtL3R0bV9ib191dGlsLmMKPiBAQCAtMzEsNiArMzEsNyBAQAo+ICAgCj4gICAjaW5jbHVkZSA8
ZHJtL3R0bS90dG1fYm9fZHJpdmVyLmg+Cj4gICAjaW5jbHVkZSA8ZHJtL3R0bS90dG1fcGxhY2Vt
ZW50Lmg+Cj4gKyNpbmNsdWRlIDxkcm0vZHJtX21lbWNweS5oPgo+ICAgI2luY2x1ZGUgPGRybS9k
cm1fdm1hX21hbmFnZXIuaD4KPiAgICNpbmNsdWRlIDxsaW51eC9kbWEtYnVmLW1hcC5oPgo+ICAg
I2luY2x1ZGUgPGxpbnV4L2lvLmg+Cj4gQEAgLTkxLDYgKzkyLDcgQEAgdm9pZCB0dG1fbW92ZV9t
ZW1jcHkoc3RydWN0IHR0bV9idWZmZXJfb2JqZWN0ICpibywKPiAgIAljb25zdCBzdHJ1Y3QgdHRt
X2ttYXBfaXRlcl9vcHMgKnNyY19vcHMgPSBzcmNfaXRlci0+b3BzOwo+ICAgCXN0cnVjdCB0dG1f
dHQgKnR0bSA9IGJvLT50dG07Cj4gICAJc3RydWN0IGRtYV9idWZfbWFwIHNyY19tYXAsIGRzdF9t
YXA7Cj4gKwlib29sIHdjX21lbWNweTsKPiAgIAlwZ29mZl90IGk7Cj4gICAKPiAgIAkvKiBTaW5n
bGUgVFRNIG1vdmUuIE5PUCAqLwo+IEBAIC0xMTQsMTEgKzExNiwxNiBAQCB2b2lkIHR0bV9tb3Zl
X21lbWNweShzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmJvLAo+ICAgCQlyZXR1cm47Cj4gICAJ
fQo+ICAgCj4gKwl3Y19tZW1jcHkgPSAoKCFzcmNfb3BzLT5tYXBzX3R0IHx8IHR0bS0+Y2FjaGlu
ZyAhPSB0dG1fY2FjaGVkKSAmJgo+ICsJCSAgICAgZHJtX2hhc19tZW1jcHlfZnJvbV93YygpKTsK
PiArCj4gICAJZm9yIChpID0gMDsgaSA8IGRzdF9tZW0tPm51bV9wYWdlczsgKytpKSB7Cj4gICAJ
CWRzdF9vcHMtPm1hcF9sb2NhbChkc3RfaXRlciwgJmRzdF9tYXAsIGkpOwo+ICAgCQlzcmNfb3Bz
LT5tYXBfbG9jYWwoc3JjX2l0ZXIsICZzcmNfbWFwLCBpKTsKPiAgIAo+IC0JCWlmICghc3JjX21h
cC5pc19pb21lbSAmJiAhZHN0X21hcC5pc19pb21lbSkgewo+ICsJCWlmICh3Y19tZW1jcHkpIHsK
PiArCQkJZHJtX21lbWNweV9mcm9tX3djX2RibSgmZHN0X21hcCwgJnNyY19tYXAsIFBBR0VfU0la
RSk7Cj4gKwkJfSBlbHNlIGlmICghc3JjX21hcC5pc19pb21lbSAmJiAhZHN0X21hcC5pc19pb21l
bSkgewo+ICAgCQkJbWVtY3B5KGRzdF9tYXAudmFkZHIsIHNyY19tYXAudmFkZHIsIFBBR0VfU0la
RSk7Cj4gICAJCX0gZWxzZSBpZiAoIXNyY19tYXAuaXNfaW9tZW0pIHsKPiAgIAkJCWRtYV9idWZf
bWFwX21lbWNweV90bygmZHN0X21hcCwgc3JjX21hcC52YWRkciwKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
