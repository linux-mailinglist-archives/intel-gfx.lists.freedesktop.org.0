Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AE6515AE32
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2020 18:08:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B31666E0B6;
	Wed, 12 Feb 2020 17:08:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from UPDC19PA23.eemsg.mail.mil (UPDC19PA23.eemsg.mail.mil
 [214.24.27.198])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45D676EAD6
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Feb 2020 17:08:37 +0000 (UTC)
X-EEMSG-check-017: 58471950|UPDC19PA23_ESA_OUT05.csd.disa.mil
X-IronPort-AV: E=Sophos;i="5.70,433,1574121600"; d="scan'208";a="58471950"
Received: from emsm-gh1-uea11.ncsc.mil ([214.29.60.3])
 by UPDC19PA23.eemsg.mail.mil with ESMTP/TLS/DHE-RSA-AES256-SHA256;
 12 Feb 2020 17:08:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tycho.nsa.gov; i=@tycho.nsa.gov; q=dns/txt;
 s=tycho.nsa.gov; t=1581527315; x=1613063315;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=aWcpaQ2lwYKfT5rmL/YVmNrCq+9+F5btAHN8rXcBXIY=;
 b=HrG1I0rkOyakdXQ/7bU4lUhHSs0Me8d41vd68voZXmrCXJjsLwY+lBwr
 A12kpFjHTjZnGMZsleO26intMkILsqSikKDPJjuZ8xCbZyCdnbzleEwEN
 pLZkg+H5jMgnyOeY60bdkxIK7Iq2Y0urk891CaEA6NK/eAetBm0iScqdS
 N6I3egcqeVHEAaKmNILMWCKFOE5YzZSHpLSuxPeTuo6IlRzeN5IjOUbeP
 basvRuUZ7jHzK+zbek40wAsg0aTPPmYWpThvvADFUG7EJ8bkDM70s81yw
 EkdPo9nVqx3cGs+0j9z9CQ2z0nhKR7eIfEiboX/Nn5+tA9uRxkrmKDu4u Q==;
X-IronPort-AV: E=Sophos;i="5.70,433,1574121600"; d="scan'208";a="39023161"
IronPort-PHdr: =?us-ascii?q?9a23=3AI5+WUxQ9NnkZQh44LeZYh5jg9dpsv+yvbD5Q0Y?=
 =?us-ascii?q?Iujvd0So/mwa65ZRSPt8tkgFKBZ4jH8fUM07OQ7/m8HzJdqsfe+Fk5M7VyFD?=
 =?us-ascii?q?Y9wf0MmAIhBMPXQWbaF9XNKxIAIcJZSVV+9Gu6O0UGUOz3ZlnVv2HgpWVKQk?=
 =?us-ascii?q?a3OgV6PPn6FZDPhMqrye+y54fTYwJVjzahfL9+Nhq7oRjeu8UMgIZvKqk9xx?=
 =?us-ascii?q?/Lr3BVZ+lY2GRkKE6ckBr7+sq+5oNo/T5Ku/Im+c5AUKH6cLo9QLdFEjkoMH?=
 =?us-ascii?q?076dPyuxXbQgSB+nUTUmMNkhpVGAfF9w31Xo3wsiThqOVw3jSRMNDsQrA1XT?=
 =?us-ascii?q?Si6LprSAPthSwaOTM17H3bh8pth69AvhmvuwJwzJLVYIGNNfpxYKXdfc8BRW?=
 =?us-ascii?q?FcWspdTjFNDp+gY4cKCecOM/xYr43grFUQqxWwCxSnCOf2xjJGgnL62Ks32P?=
 =?us-ascii?q?kjHw7bxgwtB88AvmrarNv1N6kcX+66w6bKwjrfYP1bwiv95YvSfxw9vf2BU7?=
 =?us-ascii?q?B9fMzMwkcvDQPFiVCQpJT4MTOJyOsNq2ib4PRmVemylmAnrht+ojyrxsgyio?=
 =?us-ascii?q?jCm4UYykvZ+iVi24s1Od25R1J7Yd6jCpdQsTqaOJFsTsMtRGFopj83x7sbsp?=
 =?us-ascii?q?C4ZCgH0IkryhHQZvCdc4WE/wjvWPieLDtmnn5pZbSyjAuo/0e60O3zTMy03U?=
 =?us-ascii?q?5PripCj9bDqGgA1wfW6sibUvt9+Vqh2SqX2wDT9O5EJUc0mLLHK5E72L4wl4?=
 =?us-ascii?q?cTsV/ZEi/3nkX2gqiWdl469ee08ejnfrXnqYOcN49zkA3+NLghmtejDugiNw?=
 =?us-ascii?q?gOXmyb9fy91L3l40L5XK1HguA5n6TWqpzXJdkXqrSnDwJazIov8QuzAy+j0N?=
 =?us-ascii?q?sCnHkHKFxFeAiAj4jsI1zOO+33DeykjlSwkDZk2/DGPrr7DpXLNXjMiq3tfb?=
 =?us-ascii?q?l6605C0AYz18xQ54pICrEdJ/L+QlX+tNjGAR42LQO1w/zrB85g1owDQ22PBK?=
 =?us-ascii?q?yZMKTMsVKT4uIvIu+MZJIauTrnKvgl4eLugmE9mVMHYaap2p4XYmiiHvt6O0?=
 =?us-ascii?q?WZfWbsgtAZHGgQugoxUuPrh0ODUTJJfHayQ7gz5is8CIK4CofDR5ytgLuf3C?=
 =?us-ascii?q?qgEZ1WY3pJClGIEXvya4qEXPIMYjqIIsB9ijwESaShS4g52BG2qgD616RoLv?=
 =?us-ascii?q?DV+yADtJLj0tZ15/fJmh4v6zN7FdmS33uKT2FukWMCXyU207xnoUxh1leD1r?=
 =?us-ascii?q?B1jOZEGtxW+fxESQQ6OoDGz+x8Fd/yXhjNftCTSFapWt+mGy0+Tsotw98SZE?=
 =?us-ascii?q?ZwA9CijhHF3yqlBL8YjKaLC4Ip/aLcxXfxO9xxxGrB1Kkkl1MmWNdANXW6hq?=
 =?us-ascii?q?5j8AjeH4zJnF+fl6arb6gc2i/N9GSezWqKpk5VSwpwUaTDXXACaUrat9X55k?=
 =?us-ascii?q?XeT7CwDbQrKBdOycmHKqFScN3mkU1GROv/ONTZe2+xmWCwBRGOxryWd4rmYW?=
 =?us-ascii?q?Ed0z/dCEgYkgAT+2iJNQ4lCyelomLeCiFuFF31b0Pt9+l+tG20Tksuww6WaE?=
 =?us-ascii?q?1h0qK/+gQJivyEV/MTwrUEtT87qzVzAVm9xdPWC9WHpwZ7YqVcYM094FZc2G?=
 =?us-ascii?q?LYsQx9IoKvL6R4ilECdAR3ulvk1w9rBYVYjcgqsHQqwRJpJq2G1lNBdyiV3Z?=
 =?us-ascii?q?PuNb3NLGn94hSvZ7TK1VHEytmW4acP6PU+q1Xspg2pEVAi83p/2dlPz3Sc/o?=
 =?us-ascii?q?nKDBYVUZ/pSkY47QV6p7XHYikm/I7UzmdjMayvvTDYwd4pA/Elyhm4dddFLK?=
 =?us-ascii?q?yEDBPyE9EdB8W2Lewqg0amYwkaM+BW8K47Idmmd/6c166tJupgnS+pgX5d74?=
 =?us-ascii?q?BgykiM7TZzSvbU35YZxPGVxgmHWC35jFi/qcD7g5tLZTYOHmqjzijkAYpRab?=
 =?us-ascii?q?NyfIsQCWehOcu3xs5giJ7rQ35X7kSjB08A2MC3YxqSdFz93QxI1UgNvXOnni?=
 =?us-ascii?q?64xSRukz41tqqfwDDOw+P6eRocJGFLXmZigkn3LIi0ld8aWEyobggvlBe/+U?=
 =?us-ascii?q?n6wK1brrxlL2bPWUdIYzT2L2Z6X6uys7qCZNRP6IkpsSVMS+m8Z0qVSrvjrB?=
 =?us-ascii?q?sbyS/jGHFexD8jfTGwppr5hwB6iH6aLHtronvZeMVwxRPF6NPBW/FexCYJRC?=
 =?us-ascii?q?5+iTTMHFe8Jdyp8c+ImJfEt+C0T3ihWYFLcSn30YOAszO25WhwDh2lnPC/gM?=
 =?us-ascii?q?fnERUm0S//zdZqUzjHoQ3mbYnx0qS2K/5ofk5tBFXk8cp1Bpl+kpcshJEXwX?=
 =?us-ascii?q?UanI+V/XsbnmroMtVUx7j+bHwTSj4P2dLV5xLl2EJ7JHKT2435TmmdwtdmZ9?=
 =?us-ascii?q?SieGwWwT494ttJCKiK9rxEmzV6ol6ioQLWe/h9kS8XyeEy534Cn+EJpA0twz?=
 =?us-ascii?q?2fArAVGUlYJjbjmg+S79+gsapXZHygcaSq2EVimtChCamIohtAV3bhZpciAS?=
 =?us-ascii?q?hw491lP1LPy3Dz7oDkeN/NbdMcrBGUkhHAj/RLJ5I1jPYFmS1nOWflt30/1+?=
 =?us-ascii?q?E7lQBu3Y29vIWfNWpt5ri2AhhZNjLvYcMe4T7tjaFZnsaZ24CgAI9tFSkMXJ?=
 =?us-ascii?q?vtVfioCi4dtez7NwaSFz0xsnabGb7CHQCE8khmtHLPHI6wOn6NJ3kW19BiSw?=
 =?us-ascii?q?OcJEBFnA8UWzA6lIYjFg+23MzhbFt55jcJ61HirhtD1O1pOAP5UmjCugiocC?=
 =?us-ascii?q?04SIOfLBpX9QFC50TVMc2Y7u9oGyFY/5uhrBGCK2CBZgRIC30JVVKAB1z5Ir?=
 =?us-ascii?q?au4tzA+fCCBuWiN/vOfamOqetGWveO352v14tm/jaRNsWJMXlvFP471VRZXX?=
 =?us-ascii?q?B/BcvZny8DSysNlyLCd8Sbvguz+jVrrsCj9/TmQBnv5YyJC7tdNdVv+g22jr?=
 =?us-ascii?q?yZN+GKmiZ5KDBY1pwXyH/G07cTxkIdiyZrdzO1C7QPqTbNTL7Mmq9QFxMbby?=
 =?us-ascii?q?JzNMxO760i2glBI8Hbhsnx1rFiiP46FllEWkL7msGtZMwKJXqwNFLBBEaXKr?=
 =?us-ascii?q?uGISfHzN3wYaO5UbdQlvlbtwWsuTaHFE/uJiiDlzbtVxGgKuxMiCCbPBpDuI?=
 =?us-ascii?q?GhaBZtDm7jTNPpaxGhLdB4kyU8wacoiXPSKW4cLT98fltJrr2R6yNYn/p+F3?=
 =?us-ascii?q?VC7nV7N+mEnTiW7+3DJ5YIvvtkHD50m/hZ4Hsk0btV6j9LRPhvlCvVtN5urE?=
 =?us-ascii?q?mskvOTxTp/TBpOtjFLiZqPvUVjP6XZ65ZBVW/f/B0T8WqQFg4Kp9p5Ctzvoq?=
 =?us-ascii?q?xQz9/Pm7/uKDdG7d3Z5tUcB8fKJ8KdKnYhMgTmGCTSDAQbST6nL2bfh1ZSkP?=
 =?us-ascii?q?uK7H2asoA6qoTwmJoJUrJbT0I6FvcbCkRjAdwDL4x6Xi0rkbGFls4E/3m+ow?=
 =?us-ascii?q?fLRMVcoJ/HUuieAfL1KDaWlbNEfQcHwavkLYQPMY32w01ial9mnIvUH0rcRN?=
 =?us-ascii?q?9NoiNubwIvpEVN8WN+TnEo207/ZAOt+mEcGuCpkREokQt+Yvgt9DD041stIV?=
 =?us-ascii?q?rKviQwmlErmdr5mTCRbCLxLKCoUIFSCir0sVUxM5ziTwZtdwKyh01kNCzYSL?=
 =?us-ascii?q?9Kkbtgen5kiBXGtZtMB/FcV6tEbwEUxf2NYPUoy1tcoD29xUBb/evFFYdilA?=
 =?us-ascii?q?wyfJ6ornJA3R9jbdEtJazIOKVF10VfibyQviKz0uAxwRQeJ1oW8G+Ify4JuU?=
 =?us-ascii?q?gIOaM9KCqz5OBs7haCmzRbcmgWS/Uquu5q9l86O+mYyyLg0rhDKl2+NuCGNa?=
 =?us-ascii?q?yZoW3AmdeLQlwuzEMIkVdK/bxt3McnckqUTFwvzKCLGxQIM8rCJxtVYNBP+3?=
 =?us-ascii?q?fNZymBrP/BwZVvP4WyDuroV/OBtL4IgkK4GwYkB4AM7sUHHpmx30DUNN/nI6?=
 =?us-ascii?q?AfyRUj/QjrOU6FA+pTeBKQizoHvc6/w4Ft3YVHJTESH399MSOp6bbTvAMqh+?=
 =?us-ascii?q?CDXNguaHcAQoQELm42WNG9myNBuHRAFCO30uUXyAiD6z/zuD3cDD39b9p4eP?=
 =?us-ascii?q?eZfhdsCNCt+TUj6Ki6k0XX8pvEK2H8K9tipsfF6fkGqJafF/NUUb59vl/Ym4?=
 =?us-ascii?q?lFW3yqVHXCHsSwJ5fqd4Yjd8T0CnemUlOljzI5VcHxM8ixLvvAvQa9bIJZoI?=
 =?us-ascii?q?SKlBo+Oca7FTYAU0N5o+wT6bM6bxAPapw4ZgDAswU4Krz5IQGE39HoSGGof2?=
 =?us-ascii?q?h4Vf5amN6maqRXwixkVeqzzH8tX9lu1OWs2VIcT5ENyBfFzLCsYJcIAnu7IW?=
 =?us-ascii?q?BUZwia/XlxrGNmLOtnh75kkR4=3D?=
X-IPAS-Result: =?us-ascii?q?A2CrAwCYMERe/wHyM5BmHQEBAQkBEQUFAYF7gX2BbSASK?=
 =?us-ascii?q?oQUiQOGZQEBAQEBAQaBN4lwkUoJAQEBAQEBAQEBNwQBAYRAAoJtOBMCEAEBA?=
 =?us-ascii?q?QUBAQEBAQUDAQFshUOCOykBgwIBBR0GBAsBBUEQCQIYAgImAgJXBg0GAgEBg?=
 =?us-ascii?q?lcMP4JXJZAjm3l/M4VKg0WBPoEOKow+eYEHgREnD4JdPodbgl4EjU2CT4dvf?=
 =?us-ascii?q?JZvgkSCT4pGiTYGHIJIiBKQOy2reSKBWCsIAhgIIQ+DJ1AYDY4pFxWOLCMDM?=
 =?us-ascii?q?AKRXwEB?=
Received: from tarius.tycho.ncsc.mil (HELO tarius.infosec.tycho.ncsc.mil)
 ([144.51.242.1])
 by emsm-gh1-uea11.NCSC.MIL with ESMTP; 12 Feb 2020 17:08:33 +0000
Received: from moss-pluto.infosec.tycho.ncsc.mil (moss-pluto [192.168.25.131])
 by tarius.infosec.tycho.ncsc.mil (8.14.7/8.14.4) with ESMTP id
 01CH7OZD127971; Wed, 12 Feb 2020 12:07:25 -0500
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
 <280e6644-c129-15f6-ea5c-0f66bf764e0f@tycho.nsa.gov>
 <950cc6a4-5823-d607-1210-6f62c96cf67f@linux.intel.com>
From: Stephen Smalley <sds@tycho.nsa.gov>
Message-ID: <46751eb9-deca-53cc-95fb-1602cfdf62a2@tycho.nsa.gov>
Date: Wed, 12 Feb 2020 12:09:27 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <950cc6a4-5823-d607-1210-6f62c96cf67f@linux.intel.com>
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

T24gMi8xMi8yMCAxMTo1NiBBTSwgQWxleGV5IEJ1ZGFua292IHdyb3RlOgo+IAo+IAo+IE9uIDEy
LjAyLjIwMjAgMTg6NDUsIFN0ZXBoZW4gU21hbGxleSB3cm90ZToKPj4gT24gMi8xMi8yMCAxMDoy
MSBBTSwgU3RlcGhlbiBTbWFsbGV5IHdyb3RlOgo+Pj4gT24gMi8xMi8yMCA4OjUzIEFNLCBBbGV4
ZXkgQnVkYW5rb3Ygd3JvdGU6Cj4+Pj4gT24gMTIuMDIuMjAyMCAxNjozMiwgU3RlcGhlbiBTbWFs
bGV5IHdyb3RlOgo+Pj4+PiBPbiAyLzEyLzIwIDM6NTMgQU0sIEFsZXhleSBCdWRhbmtvdiB3cm90
ZToKPj4+Pj4+IEhpIFN0ZXBoZW4sCj4+Pj4+Pgo+Pj4+Pj4gT24gMjIuMDEuMjAyMCAxNzowNywg
U3RlcGhlbiBTbWFsbGV5IHdyb3RlOgo+Pj4+Pj4+IE9uIDEvMjIvMjAgNTo0NSBBTSwgQWxleGV5
IEJ1ZGFua292IHdyb3RlOgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBPbiAyMS4wMS4yMDIwIDIxOjI3LCBB
bGV4ZXkgQnVkYW5rb3Ygd3JvdGU6Cj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gT24gMjEuMDEuMjAyMCAy
MDo1NSwgQWxleGVpIFN0YXJvdm9pdG92IHdyb3RlOgo+Pj4+Pj4+Pj4+IE9uIFR1ZSwgSmFuIDIx
LCAyMDIwIGF0IDk6MzEgQU0gQWxleGV5IEJ1ZGFua292Cj4+Pj4+Pj4+Pj4gPGFsZXhleS5idWRh
bmtvdkBsaW51eC5pbnRlbC5jb20+IHdyb3RlOgo+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pgo+Pj4+
Pj4+Pj4+PiBPbiAyMS4wMS4yMDIwIDE3OjQzLCBTdGVwaGVuIFNtYWxsZXkgd3JvdGU6Cj4+Pj4+
Pj4+Pj4+PiBPbiAxLzIwLzIwIDY6MjMgQU0sIEFsZXhleSBCdWRhbmtvdiB3cm90ZToKPj4+Pj4+
Pj4+Pj4+Pgo+Pj4+Pj4gPFNOSVA+Cj4+Pj4+Pj4+Pj4+Pj4gSW50cm9kdWNlIENBUF9QRVJGTU9O
IGNhcGFiaWxpdHkgZGVzaWduZWQgdG8gc2VjdXJlIHN5c3RlbSBwZXJmb3JtYW5jZQo+Pj4+Pj4+
Pj4+Pj4KPj4+Pj4+Pj4+Pj4+IFdoeSBfbm9hdWRpdCgpP8KgIE5vcm1hbGx5IG9ubHkgdXNlZCB3
aGVuIGEgcGVybWlzc2lvbiBmYWlsdXJlIGlzIG5vbi1mYXRhbCB0byB0aGUgb3BlcmF0aW9uLsKg
IE90aGVyd2lzZSwgd2Ugd2FudCB0aGUgYXVkaXQgbWVzc2FnZS4KPj4+Pj4+Pj4KPj4+Pj4+Pj4g
U28gZmFyIHNvIGdvb2QsIEkgc3VnZ2VzdCB1c2luZyB0aGUgc2ltcGxlc3QgdmVyc2lvbiBmb3Ig
djY6Cj4+Pj4+Pj4+Cj4+Pj4+Pj4+IHN0YXRpYyBpbmxpbmUgYm9vbCBwZXJmbW9uX2NhcGFibGUo
dm9pZCkKPj4+Pj4+Pj4gewo+Pj4+Pj4+PiAgwqDCoMKgwqDCoMKgcmV0dXJuIGNhcGFibGUoQ0FQ
X1BFUkZNT04pIHx8IGNhcGFibGUoQ0FQX1NZU19BRE1JTik7Cj4+Pj4+Pj4+IH0KPj4+Pj4+Pj4K
Pj4+Pj4+Pj4gSXQga2VlcHMgdGhlIGltcGxlbWVudGF0aW9uIHNpbXBsZSBhbmQgcmVhZGFibGUu
IFRoZSBpbXBsZW1lbnRhdGlvbiBpcyBtb3JlCj4+Pj4+Pj4+IHBlcmZvcm1hbnQgaW4gdGhlIHNl
bnNlIG9mIGNhbGxpbmcgdGhlIEFQSSAtIG9uZSBjYXBhYmxlKCkgY2FsbCBmb3IgQ0FQX1BFUkZN
T04KPj4+Pj4+Pj4gcHJpdmlsZWdlZCBwcm9jZXNzLgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBZZXMsIGl0
IGJsb2F0cyBhdWRpdCBsb2cgZm9yIENBUF9TWVNfQURNSU4gcHJpdmlsZWdlZCBhbmQgdW5wcml2
aWxlZ2VkIHByb2Nlc3NlcywKPj4+Pj4+Pj4gYnV0IHRoaXMgYmxvYXRpbmcgYWxzbyBhZHZlcnRp
c2VzIGFuZCBsZXZlcmFnZXMgdXNpbmcgbW9yZSBzZWN1cmUgQ0FQX1BFUkZNT04KPj4+Pj4+Pj4g
YmFzZWQgYXBwcm9hY2ggdG8gdXNlIHBlcmZfZXZlbnRfb3BlbiBzeXN0ZW0gY2FsbC4KPj4+Pj4+
Pgo+Pj4+Pj4+IEkgY2FuIGxpdmUgd2l0aCB0aGF0LsKgIFdlIGp1c3QgbmVlZCB0byBkb2N1bWVu
dCB0aGF0IHdoZW4geW91IHNlZSBib3RoIGEgQ0FQX1BFUkZNT04gYW5kIGEgQ0FQX1NZU19BRE1J
TiBhdWRpdCBtZXNzYWdlIGZvciBhIHByb2Nlc3MsIHRyeSBvbmx5IGFsbG93aW5nIENBUF9QRVJG
TU9OIGZpcnN0IGFuZCBzZWUgaWYgdGhhdCByZXNvbHZlcyB0aGUgaXNzdWUuwqAgV2UgaGF2ZSBh
IHNpbWlsYXIgaXNzdWUgd2l0aCBDQVBfREFDX1JFQURfU0VBUkNIIHZlcnN1cyBDQVBfREFDX09W
RVJSSURFLgo+Pj4+Pj4KPj4+Pj4+IEkgYW0gdHJ5aW5nIHRvIHJlcHJvZHVjZSB0aGlzIGRvdWJs
ZSBsb2dnaW5nIHdpdGggQ0FQX1BFUkZNT04uCj4+Pj4+PiBJIGFtIHVzaW5nIHRoZSByZWZwb2xp
Y3kgdmVyc2lvbiB3aXRoIGVuYWJsZWQgcGVyZl9ldmVudCB0Y2xhc3MgWzFdLCBpbiBwZXJtaXNz
aXZlIG1vZGUuCj4+Pj4+PiBXaGVuIHJ1bm5pbmcgcGVyZiBzdGF0IC1hIEkgYW0gb2JzZXJ2aW5n
IHRoaXMgQVZDIGF1ZGl0IG1lc3NhZ2VzOgo+Pj4+Pj4KPj4+Pj4+IHR5cGU9QVZDIG1zZz1hdWRp
dCgxNTgxNDk2Njk1LjY2Njo4NjkxKTogYXZjOsKgIGRlbmllZMKgIHsgb3BlbiB9IGZvcsKgIHBp
ZD0yNzc5IGNvbW09InBlcmYiIHNjb250ZXh0PXVzZXJfdTp1c2VyX3I6dXNlcl9zeXN0ZW1kX3Qg
dGNvbnRleHQ9dXNlcl91OnVzZXJfcjp1c2VyX3N5c3RlbWRfdCB0Y2xhc3M9cGVyZl9ldmVudCBw
ZXJtaXNzaXZlPTEKPj4+Pj4+IHR5cGU9QVZDIG1zZz1hdWRpdCgxNTgxNDk2Njk1LjY2Njo4Njkx
KTogYXZjOsKgIGRlbmllZMKgIHsga2VybmVsIH0gZm9ywqAgcGlkPTI3NzkgY29tbT0icGVyZiIg
c2NvbnRleHQ9dXNlcl91OnVzZXJfcjp1c2VyX3N5c3RlbWRfdCB0Y29udGV4dD11c2VyX3U6dXNl
cl9yOnVzZXJfc3lzdGVtZF90IHRjbGFzcz1wZXJmX2V2ZW50IHBlcm1pc3NpdmU9MQo+Pj4+Pj4g
dHlwZT1BVkMgbXNnPWF1ZGl0KDE1ODE0OTY2OTUuNjY2Ojg2OTEpOiBhdmM6wqAgZGVuaWVkwqAg
eyBjcHUgfSBmb3LCoCBwaWQ9Mjc3OSBjb21tPSJwZXJmIiBzY29udGV4dD11c2VyX3U6dXNlcl9y
OnVzZXJfc3lzdGVtZF90IHRjb250ZXh0PXVzZXJfdTp1c2VyX3I6dXNlcl9zeXN0ZW1kX3QgdGNs
YXNzPXBlcmZfZXZlbnQgcGVybWlzc2l2ZT0xCj4+Pj4+PiB0eXBlPUFWQyBtc2c9YXVkaXQoMTU4
MTQ5NjY5NS42NjY6ODY5Mik6IGF2YzrCoCBkZW5pZWTCoCB7IHdyaXRlIH0gZm9ywqAgcGlkPTI3
NzkgY29tbT0icGVyZiIgc2NvbnRleHQ9dXNlcl91OnVzZXJfcjp1c2VyX3N5c3RlbWRfdCB0Y29u
dGV4dD11c2VyX3U6dXNlcl9yOnVzZXJfc3lzdGVtZF90IHRjbGFzcz1wZXJmX2V2ZW50IHBlcm1p
c3NpdmU9MQo+Pj4+Pj4KPj4+Pj4+IEhvd2V2ZXIgdGhlcmUgaXMgbm8gY2FwYWJpbGl0eSByZWxh
dGVkIG1lc3NhZ2VzIGFyb3VuZC4gSSBzdXBwb3NlIG15IHJlZnBvbGljeSBzaG91bGQKPj4+Pj4+
IGJlIG1vZGlmaWVkIHNvbWVob3cgdG8gb2JzZXJ2ZSBjYXBhYmlsaXR5IHJlbGF0ZWQgQVZDcy4K
Pj4+Pj4+Cj4+Pj4+PiBDb3VsZCB5b3UgcGxlYXNlIGNvbW1lbnQgb3IgY2xhcmlmeSBvbiBob3cg
dG8gZW5hYmxlIGNhcHMgcmVsYXRlZCBBVkNzIGluIG9yZGVyCj4+Pj4+PiB0byB0ZXN0IHRoZSBj
b25jZXJuZWQgbG9nZ2luZy4KPj4+Pj4KPj4+Pj4gVGhlIG5ldyBwZXJmbW9uIHBlcm1pc3Npb24g
aGFzIHRvIGJlIGRlZmluZWQgaW4geW91ciBwb2xpY3k7IHlvdSdsbCBoYXZlIGEgbWVzc2FnZSBp
biBkbWVzZyBhYm91dCAiUGVybWlzc2lvbiBwZXJmbW9uIGluIGNsYXNzIGNhcGFiaWxpdHkyIG5v
dCBkZWZpbmVkIGluIHBvbGljeS4iLsKgIFlvdSBjYW4gZWl0aGVyIGFkZCBpdCB0byB0aGUgY29t
bW9uIGNhcDIgZGVmaW5pdGlvbiBpbiByZWZwb2xpY3kvcG9saWN5L2ZsYXNrL2FjY2Vzc192ZWN0
b3JzIGFuZCByZWJ1aWxkIHlvdXIgcG9saWN5IG9yIGV4dHJhY3QgeW91ciBiYXNlIG1vZHVsZSBh
cyBDSUwsIGFkZCBpdCB0aGVyZSwgYW5kIGluc2VydCB0aGUgdXBkYXRlZCBtb2R1bGUuCj4+Pj4K
Pj4+PiBZZXMsIEkgYWxyZWFkeSBoYXZlIGl0IGxpa2UgdGhpczoKPj4+PiBjb21tb24gY2FwMgo+
Pj4+IHsKPj4+PiA8LS0tLS0tPm1hY19vdmVycmlkZTwtLT4jIHVudXNlZCBieSBTRUxpbnV4Cj4+
Pj4gPC0tLS0tLT5tYWNfYWRtaW4KPj4+PiA8LS0tLS0tPnN5c2xvZwo+Pj4+IDwtLS0tLS0+d2Fr
ZV9hbGFybQo+Pj4+IDwtLS0tLS0+YmxvY2tfc3VzcGVuZAo+Pj4+IDwtLS0tLS0+YXVkaXRfcmVh
ZAo+Pj4+IDwtLS0tLS0+cGVyZm1vbgo+Pj4+IH0KPj4+Pgo+Pj4+IGRtZXNnIHN0b3BwZWQgcmVw
b3J0aW5nIHBlcmZtb24gYXMgbm90IGRlZmluZWQgYnV0IGF1ZGl0LmxvZyBzdGlsbCBkb2Vzbid0
IHJlcG9ydCBDQVBfUEVSRk1PTiBkZW5pYWxzLgo+Pj4+IEJUVywgYXVkaXQgZXZlbiBkb2Vzbid0
IHJlcG9ydCBDQVBfU1lTX0FETUlOIGRlbmlhbHMsIGhvd2V2ZXIgcGVyZm1vbl9jYXBhYmxlKCkg
ZG9lcyBjaGVjayBmb3IgaXQuCj4+Pgo+Pj4gU29tZSBkZW5pYWxzIG1heSBiZSBzaWxlbmNlZCBi
eSBkb250YXVkaXQgcnVsZXM7IHNlbW9kdWxlIC1EQiB3aWxsIHN0cmlwIHRob3NlIGFuZCBzZW1v
ZHVsZSAtQiB3aWxsIHJlc3RvcmUgdGhlbS7CoCBPdGhlciBwb3NzaWJpbGl0eSBpcyB0aGF0IHRo
ZSBwcm9jZXNzIGRvZXNuJ3QgaGF2ZSBDQVBfUEVSRk1PTiBpbiBpdHMgZWZmZWN0aXZlIHNldCBh
bmQgdGhlcmVmb3JlIG5ldmVyIHJlYWNoZXMgU0VMaW51eCBhdCBhbGw7IGRlbmllZCBmaXJzdCBi
eSB0aGUgY2FwYWJpbGl0eSBtb2R1bGUuCj4+Cj4+IEFsc28sIHRoZSBmYWN0IHRoYXQgeW91ciBk
ZW5pYWxzIGFyZSBzaG93aW5nIHVwIGluIHVzZXJfc3lzdGVtZF90IHN1Z2dlc3RzIHRoYXQgc29t
ZXRoaW5nIGlzIG9mZiBpbiB5b3VyIHBvbGljeSBvciB1c2Vyc3BhY2UvZGlzdHJvOyBJIGFzc3Vt
ZSB0aGF0IGlzIGEgZG9tYWluIHR5cGUgZm9yIHRoZSBzeXN0ZW1kIC0tdXNlciBpbnN0YW5jZSwg
YnV0IHlvdXIgc2hlbGwgYW5kIGNvbW1hbmRzIHNob3VsZG4ndCBiZSBydW5uaW5nIGluIHRoYXQg
ZG9tYWluICh1c2VyX3Qgd291bGQgYmUgbW9yZSBhcHByb3ByaWF0ZSBmb3IgdGhhdCkuCj4gCj4g
SXQgaXMgdXNlcl90IGZvciBsb2NhbCB0ZXJtaW5hbCBzZXNzaW9uOgo+IHBzIC1aCj4gTEFCRUwg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIFBJRCBUVFkgICAgICAgICAgVElNRSBDTUQKPiB1
c2VyX3U6dXNlcl9yOnVzZXJfdCAgICAgICAgICAgIDExMzE3IHB0cy85ICAgIDAwOjAwOjAwIGJh
c2gKPiB1c2VyX3U6dXNlcl9yOnVzZXJfdCAgICAgICAgICAgIDExNzk2IHB0cy85ICAgIDAwOjAw
OjAwIHBzCj4gCj4gRm9yIGxvY2FsIHRlcm1pbmFsIHJvb3Qgc2Vzc2lvbjoKPiBwcyAtWgo+IExB
QkVMICAgICAgICAgICAgICAgICAgICAgICAgICAgICBQSUQgVFRZICAgICAgICAgIFRJTUUgQ01E
Cj4gdXNlcl91OnVzZXJfcjp1c2VyX3N1X3QgICAgICAgICAgMjkyNiBwdHMvMyAgICAwMDowMDow
MCBiYXNoCj4gdXNlcl91OnVzZXJfcjp1c2VyX3N1X3QgICAgICAgICAxMDk5NSBwdHMvMyAgICAw
MDowMDowMCBwcwo+IAo+IEZvciByZW1vdGUgc3NoIHNlc3Npb246Cj4gcHMgLVoKPiBMQUJFTCAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgUElEIFRUWSAgICAgICAgICBUSU1FIENNRAo+IHVz
ZXJfdTp1c2VyX3I6dXNlcl90ICAgICAgICAgICAgIDc1NDAgcHRzLzggICAgMDA6MDA6MDAgcHMK
PiB1c2VyX3U6dXNlcl9yOnVzZXJfc3lzdGVtZF90ICAgICA4ODc1IHB0cy84ICAgIDAwOjAwOjAw
IGJhc2gKClRoYXQncyBhIGJ1ZyBpbiBlaXRoZXIgeW91ciBwb2xpY3kgb3IgeW91ciB1c2Vyc3Bh
Y2UvZGlzdHJvIGludGVncmF0aW9uLiAKICBJbiBhbnkgZXZlbnQsIHVubGVzcyB1c2VyX3N5c3Rl
bWRfdCBpcyBhbGxvd2VkIGFsbCBjYXBhYmlsaXR5MiAKcGVybWlzc2lvbnMgYnkgeW91ciBwb2xp
Y3ksIHlvdSBzaG91bGQgc2VlIHRoZSBkZW5pYWxzIGlmIENBUF9QRVJGTU9OIGlzIApzZXQgaW4g
dGhlIGVmZmVjdGl2ZSBjYXBhYmlsaXR5IHNldCBvZiB0aGUgcHJvY2Vzcy4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
