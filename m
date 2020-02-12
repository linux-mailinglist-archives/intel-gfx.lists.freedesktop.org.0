Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 232FB15AC43
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2020 16:44:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 762A66E065;
	Wed, 12 Feb 2020 15:44:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from UPDC19PA20.eemsg.mail.mil (UPDC19PA20.eemsg.mail.mil
 [214.24.27.195])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 482796E065
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Feb 2020 15:44:26 +0000 (UTC)
X-EEMSG-check-017: 58329223|UPDC19PA20_ESA_OUT02.csd.disa.mil
X-IronPort-AV: E=Sophos;i="5.70,433,1574121600"; d="scan'208";a="58329223"
Received: from emsm-gh1-uea11.ncsc.mil ([214.29.60.3])
 by UPDC19PA20.eemsg.mail.mil with ESMTP/TLS/DHE-RSA-AES256-SHA256;
 12 Feb 2020 15:44:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tycho.nsa.gov; i=@tycho.nsa.gov; q=dns/txt;
 s=tycho.nsa.gov; t=1581522261; x=1613058261;
 h=subject:from:to:cc:references:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=Nr7dM1SRxxK3wZoWZ5jzQnpKE/lg6bUGC83oPiR+z0E=;
 b=cnmQiuya4ddekwlZEcd09OU4m+9YVspv18vSlBCUX6ETTa5p047XfhNp
 fDyJ57KxBXwy1vz/FtZm7XaFbH2GucWwGqYPYIIcznx4dyQ/8A8KYf39a
 m8x2IAen1bfaWUmpIisHbhnYmPCYY94mPUkwjYDfm/HpnAOyNKmRVHP2z
 R25yK8KKQF+tF+prsSUC2nFO+mTriMUW+Quz4hCSwr6tfiFKBFZe9OlP6
 PU6INp12JR2j2aKbOa14GxRbX3n+0X1S8ht0qTzt8LZIlOeFY4dmutWjy
 7kO05bHXwALrU1iERhUapQMHdz05dXiBAbHeG/WvuMR5M58KXdDdEuhq+ g==;
X-IronPort-AV: E=Sophos;i="5.70,433,1574121600"; d="scan'208";a="39015106"
IronPort-PHdr: =?us-ascii?q?9a23=3A52qiURBQllbcRbsweQO0UyQJP3N1i/DPJgcQr6?=
 =?us-ascii?q?AfoPdwSP/6p8SwAkXT6L1XgUPTWs2DsrQY0raQ7f2rCTRIyK3CmU5BWaQEbw?=
 =?us-ascii?q?UCh8QSkl5oK+++Imq/EsTXaTcnFt9JTl5v8iLzG0FUHMHjew+a+SXqvnYdFR?=
 =?us-ascii?q?rlKAV6OPn+FJLMgMSrzeCy/IDYbxlViDanbr5+MRq7oR/Qu8QWjodvKbo9wQ?=
 =?us-ascii?q?bVr3VVfOhb2WxnKVWPkhjm+8y+5oRj8yNeu/Ig885PT6D3dLkmQLJbETorLX?=
 =?us-ascii?q?k76NXkuhffQwSP4GAcUngNnRpTHwfF9hD6UYzvvSb8q+FwxTOVPczyTbAzRD?=
 =?us-ascii?q?Si86JmQwLmhSsbKzI09nzch9duh6xHvh2uux1/w5bVYI6LMvp+Yrjdds4eSW?=
 =?us-ascii?q?ZYQ8pdSzBNDoa6YoQBFeoBOftToZf7qVUAsBCyARCgCe3rxzNNgHL9wK803P?=
 =?us-ascii?q?k7EQzewQIuH8wAsHrXotv7OqgdXuK6w7XHwzjYc/Nb2i3w5JTUfh0vo/yBW6?=
 =?us-ascii?q?97f8rLyUkoEgPIlkieqZD7MDON1uQCrW6b5Pd9W+KqkWEnrwVxrSavx8wxjY?=
 =?us-ascii?q?TJnZ8aykvf+CVlwIc6Od24SElhbd6iC5tfrTuWN4RxQsM8WmxlvjsxxL4euZ?=
 =?us-ascii?q?OjYSQHx5sqywTfZvCaaYSE/B3uWPiLLTtlgn9uZaixiAyo8Ue6z+3xTsy00F?=
 =?us-ascii?q?FXoSVbitTMrXUN1wDL6siAV/t94l+t2TaR2ADX7eFJOVw0mrDBK54g374wjY?=
 =?us-ascii?q?AfsUXFHi/4n0X2l7GZeVk+9ui06+XofrXmppiGO49ylg7+Kbghlta6AeQ5Ng?=
 =?us-ascii?q?gCR2mb+eKi273/5UD1XbpHg/IsnqTZrZzWP9oXq6GnDwNPz4ov8xO/AC2n0N?=
 =?us-ascii?q?Qck3kHNlVFeBefgojyJl7OO+v1Deu/gluwkDdrwOrKPrv6AprXNHTDn7Dhfa?=
 =?us-ascii?q?hl505G1AUz1cxf545TCrwZOv3zXlH+tdPGAR45KQC72PvnB8hn2YMYWmKPBb?=
 =?us-ascii?q?GZPbjWsV+J4OIvPuaNaJUUuDb7N/gq+frugWUlll8aeKmjxYEXZ2ygHvR6P0?=
 =?us-ascii?q?WZZmLhjc0FEWgUsQsxUu3qhEeZUT5PfXmyRaU85i88CIKnEYfDQZ6tjaeO3C?=
 =?us-ascii?q?e+BJJWZ2RGBkqQHnfvcoWOQ+0MZz6KIs99jjwEUqCsS5c/2hGyqgD60btmI/?=
 =?us-ascii?q?HV+i0eu5LjzsJ66PDNmh4o6DN4FcOd03uCT2tshGMHWyc23LxjoUx60lqMy7?=
 =?us-ascii?q?R3g/lGGtFI5PNGTB06NZjCwOx+EdzyXRjBftiRQla8XtqmGS0xTs42w9IWZk?=
 =?us-ascii?q?Z9GtOijh/E3yexGb8aiaGEBJwu/aLAxXT+O8F9y3Pe3qk7k1YmWtdPNXGhhq?=
 =?us-ascii?q?Nn9QjcHYjJk0SDm6asdKQc3zPN9GOZwmeVuEFYUQhwUbjKXHwFZ0vWq8j56V?=
 =?us-ascii?q?3GT7O0FbsnNQ5Bw9aYKqRWct3pkUlGRPD7NdTcZGKxnGGwCgyTxr+WaIrlYW?=
 =?us-ascii?q?Ud3DncCEgCjQ8T+22LNQw/BienvmLfAyZiFVPpY0Pw7+Z+rGm3QVMzzwGPd0?=
 =?us-ascii?q?dhzaa6+gYJhfyATPMexqgEuCA8pDVuHVa90NXWB8CepwpgYqVcYMgw4FZB1W?=
 =?us-ascii?q?LFqQN9OoasILxlhl4baw53pV/h1w1rCoVclsgntGglwxR0KaKYy15BdC2X3Y?=
 =?us-ascii?q?r2OrLJLmn+5gyga7TM1VHF0NaW+6EP6Psip1XkpgGpGVIo82973NlNz3uc+p?=
 =?us-ascii?q?LKARIKUZ3rT0Y38wV6p6rBbykm/YzU0GZjPrOuvj/FwdIpC/Mvygy8cNdHLK?=
 =?us-ascii?q?OECAjyHtUfB8i2NuMngEambhYAPO9M7q40Otmpd/2c1K6qIelshiipjXlf6o?=
 =?us-ascii?q?Bnzk2M7zZ8SvLP35sdwfGXxA6HWCnnjFu7qc/3npxEZS0VHmq6zSjrGo5Qa7?=
 =?us-ascii?q?ZyfYkRD2euONO4xtNmh5H3QX5Y6FijCE0c2M+yeRqSbkT90RdM2kQQpHytgT?=
 =?us-ascii?q?G4wCBskzE1sqqf2zTDw//8exodNW5EWnJvjVf2Loiwi9AbXE6oYxI1mxui4E?=
 =?us-ascii?q?bw37Jbq7hnL2nPXUdIeDD7L2NnUqu3rLqCec9P6IgzvCVRSuu8ZE6VSr/nrx?=
 =?us-ascii?q?sdySPjEHNUxConeDGyppX5gxt6hXqTLXZyqHrZfdt8ygrB69PGWfFR2TwGST?=
 =?us-ascii?q?JihjnNA1iwJcWm/dKRl53bqOCxS3qhVoFPcSns1Y6AsTG05XdpARGlhfCzh8?=
 =?us-ascii?q?HnEQwg3i/9ytZnTj/HrAz5YoXxy6u6NudndFFyBFDg88p6Bp1+kowoiZEKw3?=
 =?us-ascii?q?gah4ma8GEEkWjtK9Vb37zxbH4XST4M2d7V7xDv2Fd/IXKR24L5SnKdz9N7aN?=
 =?us-ascii?q?mhfmMbwSE94N5QCKeS8rNEmTF5ol2irQLeefJ9hCsSyeMy6H4GhOEEoAgtzi?=
 =?us-ascii?q?KZArAJB0ZVJjbsmAqV4NC+tqpXeHyjfqS31Ep7hdqhFq2NohlAWHblfZcvBT?=
 =?us-ascii?q?V/7sZkPVLI0X3z7JzkedbKYdISsB2UjwnPj+xPJJ0tkfoKgDJtOXjhsn091+?=
 =?us-ascii?q?47kRtu0Imks4idMWpt+qO5DQReNjDuaMMT/TbtjalansmIxYygApJhGjATVp?=
 =?us-ascii?q?vyUf2oCC4StejgNwuWET08rmqbFqHFEg+E6EdpsWnCHIqoN36NIXkW19RiSA?=
 =?us-ascii?q?OBK0xYhQAeRC86kYIhFgC22Mzhd1906SoV5lHmpRpD0ORoOAThXWfFvguocT?=
 =?us-ascii?q?c0SJmELBpW7QFC5kHVPNea7uJyGSFY45KgoBaMKmydewRHE2UJVlaYCFDkO7?=
 =?us-ascii?q?mk/cPA/PSABuqiM/vOZq2DqepEWPeNxZKu0pZm/zCDNsiUPXltEec72kxdUn?=
 =?us-ascii?q?B9AcjZnC8PSyMPnSLXc8GbvAu8+jFwrs2n6/TrXwTv5YSLC7tTLNVg4Aq2jr?=
 =?us-ascii?q?2dN+6RgiZ5Ji1V1p0XynPS1Lcf21sSgTl0dzaxCbQAqTLNTKXIl69TDh4bbC?=
 =?us-ascii?q?VzO9VM764m0QlBI8rbhcnz1rFlgP86FU1FVVjgmsGvfsEKIme9NE/ZC0aPLr?=
 =?us-ascii?q?iJOTrLw8Tva6OmVbJQlPlUtwG3uTuDD0/jMTCDljbyWhCrMOFMijybPABEuI?=
 =?us-ascii?q?G6dBZtCGfiQMj7ZRKlKNV3lyE5waUohnPWMm4RKTx8c0JLrr2N4iJUm/Z/FH?=
 =?us-ascii?q?Jb7npjM+aEnz2U7/fXKpkIq/tnGCd0mPxA4HQ81bRV6DtIRPtvmCvdttRuuU?=
 =?us-ascii?q?2pkvGTyjp7VxpDsjJLhIONvUV/NqTV74JAVmjY8xIQ92WQCggKptt8Bt3qvK?=
 =?us-ascii?q?Bf18XPlKbtJzpZ7dLU8tUTB9LOJMKELnUhKxzpFyDQDAcfSj6rL27fjVRHkP?=
 =?us-ascii?q?6O7n2VsoQ6qp/0lZoVVLBbUF01FvUHCkVqB9ECPph3US0+kbKBj84H+2C+rB?=
 =?us-ascii?q?/PS8VepJzHUeiSAfr3IjaDkbZEfwcIwa//LYkLN4373VBiZUd+nIjTFErQU9?=
 =?us-ascii?q?9MrzZlbg81u0VN7GN+Qnc920L/dAyi/mIcGuCvnh41lgt+Zvwt+C3r41ctKV?=
 =?us-ascii?q?rAvDEwn1UpmdX5nTCRdyb8LKOxXYFQFir1uFE9MovhTAZvbA2yhlBrOSzaR7?=
 =?us-ascii?q?JekbRgb3pniAzCtptVH/5TU6lEbAUXxfGNaPUiyU5cpTm/xU9b+evFDoNvlA?=
 =?us-ascii?q?8rcZ6qsnJB1BpjbMYpKqDJOaVG0EZQi7mKvi+pzeAx3BQeK1wK8GKTfC4Hol?=
 =?us-ascii?q?cHNqI8Kyqv5Oxs5hSImyFfd2gUS/oqvvVq+1s5O+SBySLgzrFCJlmrOOyFKq?=
 =?us-ascii?q?OVomvAmtCSQlM2yEwIk1JI/bx30cc4b0qUTFojzLqXFxQHL8rNMxxaYNRI+3?=
 =?us-ascii?q?fOZyqOtv/NwZ1tNYWnCu/oVfOOtLoTgk+8GAYpHoIM7tkOH5W1yEHXM93nLL?=
 =?us-ascii?q?AcxRUw/wTkOk+FDO9SdRKVnzcIvdu/wIV03YZDPDEdB3tyMSGt6rbQvA8qj+?=
 =?us-ascii?q?KJXM0qbXcCQosEKnU2VdW9my5BpXRACze30uMdyAec9jP8oiXQDCLgb9d4YP?=
 =?us-ascii?q?eUZAhsCM2t+Tkl6Ki2h0Tb8pPAKGHmLd5ioMPA6fsGp5abDPNZVb19s1rAm4?=
 =?us-ascii?q?lfXHGlSWvPHsSpKJfqc4ksbMD0BWy+UlCljTI6Udvxb56RKf2hhQz4SJccmp?=
 =?us-ascii?q?SX1TYgMtH1QjgaFgd9tqcJ+a51Yw4EfbI/YBj1p0I/MbCyJEGT1dD4EEi3Lj?=
 =?us-ascii?q?4DdOVS1eW3YfRsyiMoauKrgC87QooS0/i88UlLQooDyB7Z26DwNMFlTSHvFy?=
 =?us-ascii?q?kFKE30ri0jmj0kb71jzw=3D=3D?=
X-IPAS-Result: =?us-ascii?q?A2CWAwCVHERe/wHyM5BlHQEBAQkBEQUFAYF7gX2BbAEgE?=
 =?us-ascii?q?iqEFIkDhmQBAQEBAQEGgTeJcJFJCQEBAQEBAQEBATcBAYRAAoJtOBMCEAEBA?=
 =?us-ascii?q?QQBAQEBAQUDAQFshUOCOykBgwEBAQEBAgEjBAsBBUEQCQIYAgImAgJXBg0GA?=
 =?us-ascii?q?gEBgmM/glcFII9umwR1fzOJDIE+gQ4qjD55gQeBEScPgl0+h1uCXgSNTYJPh?=
 =?us-ascii?q?298lm+CRIJOikaJNQYcgkiIEpA7Lat0IoFYKwgCGAghD4MnUBgNjikXFY4sI?=
 =?us-ascii?q?wMwApFfAQE?=
Received: from tarius.tycho.ncsc.mil (HELO tarius.infosec.tycho.ncsc.mil)
 ([144.51.242.1])
 by emsm-gh1-uea11.NCSC.MIL with ESMTP; 12 Feb 2020 15:44:13 +0000
Received: from moss-pluto.infosec.tycho.ncsc.mil (moss-pluto [192.168.25.131])
 by tarius.infosec.tycho.ncsc.mil (8.14.7/8.14.4) with ESMTP id
 01CFhBBb080468; Wed, 12 Feb 2020 10:43:11 -0500
From: Stephen Smalley <sds@tycho.nsa.gov>
To: Alexey Budankov <alexey.budankov@linux.intel.com>
References: <0548c832-7f4b-dc4c-8883-3f2b6d351a08@linux.intel.com>
 <9b77124b-675d-5ac7-3741-edec575bd425@linux.intel.com>
 <64cab472-806e-38c4-fb26-0ffbee485367@tycho.nsa.gov>
 <05297eff-8e14-ccdf-55a4-870c64516de8@linux.intel.com>
 <CAADnVQK-JzK-GUk4KOozn4c1xr=7TiCpB9Fi0QDC9nE6iVn8iQ@mail.gmail.com>
 <537bdb28-c9e4-f44f-d665-25250065a6bb@linux.intel.com>
 <63d9700f-231d-7973-5307-3e56a48c54cb@linux.intel.com>
 <d7213569-9578-7201-6106-f5ebc95bd6be@tycho.nsa.gov>
 <2e38c33d-f085-1320-8cc2-45f74b6ad86d@linux.intel.com>
 <dd6a1382-7b2f-a6e6-a1ac-009566d7f556@tycho.nsa.gov>
 <8141da2e-49cf-c02d-69e9-8a7cbdc91431@linux.intel.com>
 <7c367905-e8c9-7665-d923-c850e05c757a@tycho.nsa.gov>
Message-ID: <280e6644-c129-15f6-ea5c-0f66bf764e0f@tycho.nsa.gov>
Date: Wed, 12 Feb 2020 10:45:12 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <7c367905-e8c9-7665-d923-c850e05c757a@tycho.nsa.gov>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v5 01/10] capabilities: introduce
 CAP_PERFMON to kernel and user space
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
Cc: Mark Rutland <mark.rutland@arm.com>, Song Liu <songliubraving@fb.com>,
 Peter Zijlstra <peterz@infradead.org>,
 "benh@kernel.crashing.org" <benh@kernel.crashing.org>,
 Will Deacon <will.deacon@arm.com>, Alexei Starovoitov <ast@kernel.org>,
 Stephane Eranian <eranian@google.com>,
 "james.bottomley@hansenpartnership.com"
 <james.bottomley@hansenpartnership.com>, Paul Mackerras <paulus@samba.org>,
 Jiri Olsa <jolsa@redhat.com>,
 Alexei Starovoitov <alexei.starovoitov@gmail.com>,
 Andi Kleen <ak@linux.intel.com>, Michael Ellerman <mpe@ellerman.id.au>,
 Igor Lubashev <ilubashe@akamai.com>, James Morris <jmorris@namei.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, oprofile-list@lists.sf.net,
 Serge Hallyn <serge@hallyn.com>, Robert Richter <rric@kernel.org>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>, Namhyung Kim <namhyung@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Andy Lutomirski <luto@amacapital.net>,
 "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMi8xMi8yMCAxMDoyMSBBTSwgU3RlcGhlbiBTbWFsbGV5IHdyb3RlOgo+IE9uIDIvMTIvMjAg
ODo1MyBBTSwgQWxleGV5IEJ1ZGFua292IHdyb3RlOgo+PiBPbiAxMi4wMi4yMDIwIDE2OjMyLCBT
dGVwaGVuIFNtYWxsZXkgd3JvdGU6Cj4+PiBPbiAyLzEyLzIwIDM6NTMgQU0sIEFsZXhleSBCdWRh
bmtvdiB3cm90ZToKPj4+PiBIaSBTdGVwaGVuLAo+Pj4+Cj4+Pj4gT24gMjIuMDEuMjAyMCAxNzow
NywgU3RlcGhlbiBTbWFsbGV5IHdyb3RlOgo+Pj4+PiBPbiAxLzIyLzIwIDU6NDUgQU0sIEFsZXhl
eSBCdWRhbmtvdiB3cm90ZToKPj4+Pj4+Cj4+Pj4+PiBPbiAyMS4wMS4yMDIwIDIxOjI3LCBBbGV4
ZXkgQnVkYW5rb3Ygd3JvdGU6Cj4+Pj4+Pj4KPj4+Pj4+PiBPbiAyMS4wMS4yMDIwIDIwOjU1LCBB
bGV4ZWkgU3Rhcm92b2l0b3Ygd3JvdGU6Cj4+Pj4+Pj4+IE9uIFR1ZSwgSmFuIDIxLCAyMDIwIGF0
IDk6MzEgQU0gQWxleGV5IEJ1ZGFua292Cj4+Pj4+Pj4+IDxhbGV4ZXkuYnVkYW5rb3ZAbGludXgu
aW50ZWwuY29tPiB3cm90ZToKPj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gT24gMjEuMDEu
MjAyMCAxNzo0MywgU3RlcGhlbiBTbWFsbGV5IHdyb3RlOgo+Pj4+Pj4+Pj4+IE9uIDEvMjAvMjAg
NjoyMyBBTSwgQWxleGV5IEJ1ZGFua292IHdyb3RlOgo+Pj4+Pj4+Pj4+Pgo+Pj4+IDxTTklQPgo+
Pj4+Pj4+Pj4+PiBJbnRyb2R1Y2UgQ0FQX1BFUkZNT04gY2FwYWJpbGl0eSBkZXNpZ25lZCB0byBz
ZWN1cmUgc3lzdGVtIAo+Pj4+Pj4+Pj4+PiBwZXJmb3JtYW5jZQo+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+
Pj4gV2h5IF9ub2F1ZGl0KCk/wqAgTm9ybWFsbHkgb25seSB1c2VkIHdoZW4gYSBwZXJtaXNzaW9u
IGZhaWx1cmUgCj4+Pj4+Pj4+Pj4gaXMgbm9uLWZhdGFsIHRvIHRoZSBvcGVyYXRpb24uwqAgT3Ro
ZXJ3aXNlLCB3ZSB3YW50IHRoZSBhdWRpdCAKPj4+Pj4+Pj4+PiBtZXNzYWdlLgo+Pj4+Pj4KPj4+
Pj4+IFNvIGZhciBzbyBnb29kLCBJIHN1Z2dlc3QgdXNpbmcgdGhlIHNpbXBsZXN0IHZlcnNpb24g
Zm9yIHY2Ogo+Pj4+Pj4KPj4+Pj4+IHN0YXRpYyBpbmxpbmUgYm9vbCBwZXJmbW9uX2NhcGFibGUo
dm9pZCkKPj4+Pj4+IHsKPj4+Pj4+IMKgwqDCoMKgwqDCoHJldHVybiBjYXBhYmxlKENBUF9QRVJG
TU9OKSB8fCBjYXBhYmxlKENBUF9TWVNfQURNSU4pOwo+Pj4+Pj4gfQo+Pj4+Pj4KPj4+Pj4+IEl0
IGtlZXBzIHRoZSBpbXBsZW1lbnRhdGlvbiBzaW1wbGUgYW5kIHJlYWRhYmxlLiBUaGUgCj4+Pj4+
PiBpbXBsZW1lbnRhdGlvbiBpcyBtb3JlCj4+Pj4+PiBwZXJmb3JtYW50IGluIHRoZSBzZW5zZSBv
ZiBjYWxsaW5nIHRoZSBBUEkgLSBvbmUgY2FwYWJsZSgpIGNhbGwgCj4+Pj4+PiBmb3IgQ0FQX1BF
UkZNT04KPj4+Pj4+IHByaXZpbGVnZWQgcHJvY2Vzcy4KPj4+Pj4+Cj4+Pj4+PiBZZXMsIGl0IGJs
b2F0cyBhdWRpdCBsb2cgZm9yIENBUF9TWVNfQURNSU4gcHJpdmlsZWdlZCBhbmQgCj4+Pj4+PiB1
bnByaXZpbGVnZWQgcHJvY2Vzc2VzLAo+Pj4+Pj4gYnV0IHRoaXMgYmxvYXRpbmcgYWxzbyBhZHZl
cnRpc2VzIGFuZCBsZXZlcmFnZXMgdXNpbmcgbW9yZSBzZWN1cmUgCj4+Pj4+PiBDQVBfUEVSRk1P
Tgo+Pj4+Pj4gYmFzZWQgYXBwcm9hY2ggdG8gdXNlIHBlcmZfZXZlbnRfb3BlbiBzeXN0ZW0gY2Fs
bC4KPj4+Pj4KPj4+Pj4gSSBjYW4gbGl2ZSB3aXRoIHRoYXQuwqAgV2UganVzdCBuZWVkIHRvIGRv
Y3VtZW50IHRoYXQgd2hlbiB5b3Ugc2VlIAo+Pj4+PiBib3RoIGEgQ0FQX1BFUkZNT04gYW5kIGEg
Q0FQX1NZU19BRE1JTiBhdWRpdCBtZXNzYWdlIGZvciBhIHByb2Nlc3MsIAo+Pj4+PiB0cnkgb25s
eSBhbGxvd2luZyBDQVBfUEVSRk1PTiBmaXJzdCBhbmQgc2VlIGlmIHRoYXQgcmVzb2x2ZXMgdGhl
IAo+Pj4+PiBpc3N1ZS7CoCBXZSBoYXZlIGEgc2ltaWxhciBpc3N1ZSB3aXRoIENBUF9EQUNfUkVB
RF9TRUFSQ0ggdmVyc3VzIAo+Pj4+PiBDQVBfREFDX09WRVJSSURFLgo+Pj4+Cj4+Pj4gSSBhbSB0
cnlpbmcgdG8gcmVwcm9kdWNlIHRoaXMgZG91YmxlIGxvZ2dpbmcgd2l0aCBDQVBfUEVSRk1PTi4K
Pj4+PiBJIGFtIHVzaW5nIHRoZSByZWZwb2xpY3kgdmVyc2lvbiB3aXRoIGVuYWJsZWQgcGVyZl9l
dmVudCB0Y2xhc3MgWzFdLCAKPj4+PiBpbiBwZXJtaXNzaXZlIG1vZGUuCj4+Pj4gV2hlbiBydW5u
aW5nIHBlcmYgc3RhdCAtYSBJIGFtIG9ic2VydmluZyB0aGlzIEFWQyBhdWRpdCBtZXNzYWdlczoK
Pj4+Pgo+Pj4+IHR5cGU9QVZDIG1zZz1hdWRpdCgxNTgxNDk2Njk1LjY2Njo4NjkxKTogYXZjOsKg
IGRlbmllZMKgIHsgb3BlbiB9IGZvciAgCj4+Pj4gcGlkPTI3NzkgY29tbT0icGVyZiIgc2NvbnRl
eHQ9dXNlcl91OnVzZXJfcjp1c2VyX3N5c3RlbWRfdCAKPj4+PiB0Y29udGV4dD11c2VyX3U6dXNl
cl9yOnVzZXJfc3lzdGVtZF90IHRjbGFzcz1wZXJmX2V2ZW50IHBlcm1pc3NpdmU9MQo+Pj4+IHR5
cGU9QVZDIG1zZz1hdWRpdCgxNTgxNDk2Njk1LjY2Njo4NjkxKTogYXZjOsKgIGRlbmllZMKgIHsg
a2VybmVsIH0gCj4+Pj4gZm9ywqAgcGlkPTI3NzkgY29tbT0icGVyZiIgc2NvbnRleHQ9dXNlcl91
OnVzZXJfcjp1c2VyX3N5c3RlbWRfdCAKPj4+PiB0Y29udGV4dD11c2VyX3U6dXNlcl9yOnVzZXJf
c3lzdGVtZF90IHRjbGFzcz1wZXJmX2V2ZW50IHBlcm1pc3NpdmU9MQo+Pj4+IHR5cGU9QVZDIG1z
Zz1hdWRpdCgxNTgxNDk2Njk1LjY2Njo4NjkxKTogYXZjOsKgIGRlbmllZMKgIHsgY3B1IH0gZm9y
ICAKPj4+PiBwaWQ9Mjc3OSBjb21tPSJwZXJmIiBzY29udGV4dD11c2VyX3U6dXNlcl9yOnVzZXJf
c3lzdGVtZF90IAo+Pj4+IHRjb250ZXh0PXVzZXJfdTp1c2VyX3I6dXNlcl9zeXN0ZW1kX3QgdGNs
YXNzPXBlcmZfZXZlbnQgcGVybWlzc2l2ZT0xCj4+Pj4gdHlwZT1BVkMgbXNnPWF1ZGl0KDE1ODE0
OTY2OTUuNjY2Ojg2OTIpOiBhdmM6wqAgZGVuaWVkwqAgeyB3cml0ZSB9IAo+Pj4+IGZvcsKgIHBp
ZD0yNzc5IGNvbW09InBlcmYiIHNjb250ZXh0PXVzZXJfdTp1c2VyX3I6dXNlcl9zeXN0ZW1kX3Qg
Cj4+Pj4gdGNvbnRleHQ9dXNlcl91OnVzZXJfcjp1c2VyX3N5c3RlbWRfdCB0Y2xhc3M9cGVyZl9l
dmVudCBwZXJtaXNzaXZlPTEKPj4+Pgo+Pj4+IEhvd2V2ZXIgdGhlcmUgaXMgbm8gY2FwYWJpbGl0
eSByZWxhdGVkIG1lc3NhZ2VzIGFyb3VuZC4gSSBzdXBwb3NlIG15IAo+Pj4+IHJlZnBvbGljeSBz
aG91bGQKPj4+PiBiZSBtb2RpZmllZCBzb21laG93IHRvIG9ic2VydmUgY2FwYWJpbGl0eSByZWxh
dGVkIEFWQ3MuCj4+Pj4KPj4+PiBDb3VsZCB5b3UgcGxlYXNlIGNvbW1lbnQgb3IgY2xhcmlmeSBv
biBob3cgdG8gZW5hYmxlIGNhcHMgcmVsYXRlZCAKPj4+PiBBVkNzIGluIG9yZGVyCj4+Pj4gdG8g
dGVzdCB0aGUgY29uY2VybmVkIGxvZ2dpbmcuCj4+Pgo+Pj4gVGhlIG5ldyBwZXJmbW9uIHBlcm1p
c3Npb24gaGFzIHRvIGJlIGRlZmluZWQgaW4geW91ciBwb2xpY3k7IHlvdSdsbCAKPj4+IGhhdmUg
YSBtZXNzYWdlIGluIGRtZXNnIGFib3V0ICJQZXJtaXNzaW9uIHBlcmZtb24gaW4gY2xhc3MgCj4+
PiBjYXBhYmlsaXR5MiBub3QgZGVmaW5lZCBpbiBwb2xpY3kuIi7CoCBZb3UgY2FuIGVpdGhlciBh
ZGQgaXQgdG8gdGhlIAo+Pj4gY29tbW9uIGNhcDIgZGVmaW5pdGlvbiBpbiByZWZwb2xpY3kvcG9s
aWN5L2ZsYXNrL2FjY2Vzc192ZWN0b3JzIGFuZCAKPj4+IHJlYnVpbGQgeW91ciBwb2xpY3kgb3Ig
ZXh0cmFjdCB5b3VyIGJhc2UgbW9kdWxlIGFzIENJTCwgYWRkIGl0IHRoZXJlLCAKPj4+IGFuZCBp
bnNlcnQgdGhlIHVwZGF0ZWQgbW9kdWxlLgo+Pgo+PiBZZXMsIEkgYWxyZWFkeSBoYXZlIGl0IGxp
a2UgdGhpczoKPj4gY29tbW9uIGNhcDIKPj4gewo+PiA8LS0tLS0tPm1hY19vdmVycmlkZTwtLT4j
IHVudXNlZCBieSBTRUxpbnV4Cj4+IDwtLS0tLS0+bWFjX2FkbWluCj4+IDwtLS0tLS0+c3lzbG9n
Cj4+IDwtLS0tLS0+d2FrZV9hbGFybQo+PiA8LS0tLS0tPmJsb2NrX3N1c3BlbmQKPj4gPC0tLS0t
LT5hdWRpdF9yZWFkCj4+IDwtLS0tLS0+cGVyZm1vbgo+PiB9Cj4+Cj4+IGRtZXNnIHN0b3BwZWQg
cmVwb3J0aW5nIHBlcmZtb24gYXMgbm90IGRlZmluZWQgYnV0IGF1ZGl0LmxvZyBzdGlsbCAKPj4g
ZG9lc24ndCByZXBvcnQgQ0FQX1BFUkZNT04gZGVuaWFscy4KPj4gQlRXLCBhdWRpdCBldmVuIGRv
ZXNuJ3QgcmVwb3J0IENBUF9TWVNfQURNSU4gZGVuaWFscywgaG93ZXZlciAKPj4gcGVyZm1vbl9j
YXBhYmxlKCkgZG9lcyBjaGVjayBmb3IgaXQuCj4gCj4gU29tZSBkZW5pYWxzIG1heSBiZSBzaWxl
bmNlZCBieSBkb250YXVkaXQgcnVsZXM7IHNlbW9kdWxlIC1EQiB3aWxsIHN0cmlwIAo+IHRob3Nl
IGFuZCBzZW1vZHVsZSAtQiB3aWxsIHJlc3RvcmUgdGhlbS7CoCBPdGhlciBwb3NzaWJpbGl0eSBp
cyB0aGF0IHRoZSAKPiBwcm9jZXNzIGRvZXNuJ3QgaGF2ZSBDQVBfUEVSRk1PTiBpbiBpdHMgZWZm
ZWN0aXZlIHNldCBhbmQgdGhlcmVmb3JlIAo+IG5ldmVyIHJlYWNoZXMgU0VMaW51eCBhdCBhbGw7
IGRlbmllZCBmaXJzdCBieSB0aGUgY2FwYWJpbGl0eSBtb2R1bGUuCgpBbHNvLCB0aGUgZmFjdCB0
aGF0IHlvdXIgZGVuaWFscyBhcmUgc2hvd2luZyB1cCBpbiB1c2VyX3N5c3RlbWRfdCAKc3VnZ2Vz
dHMgdGhhdCBzb21ldGhpbmcgaXMgb2ZmIGluIHlvdXIgcG9saWN5IG9yIHVzZXJzcGFjZS9kaXN0
cm87IEkgCmFzc3VtZSB0aGF0IGlzIGEgZG9tYWluIHR5cGUgZm9yIHRoZSBzeXN0ZW1kIC0tdXNl
ciBpbnN0YW5jZSwgYnV0IHlvdXIgCnNoZWxsIGFuZCBjb21tYW5kcyBzaG91bGRuJ3QgYmUgcnVu
bmluZyBpbiB0aGF0IGRvbWFpbiAodXNlcl90IHdvdWxkIGJlIAptb3JlIGFwcHJvcHJpYXRlIGZv
ciB0aGF0KS4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
