Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DB55B504B8
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Sep 2025 19:54:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5E4089CCE;
	Tue,  9 Sep 2025 17:54:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0247189137;
 Tue,  9 Sep 2025 17:54:35 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBjcHVmcmVxOiB1c2UgX19mcmVl?=
 =?utf-8?b?KCkgZm9yIGFsbCBjcHVmcmVxX2NwdV9nZXQoKSByZWZlcmVuY2Vz?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Zihuan Zhang" <zhangzihuan@kylinos.cn>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 09 Sep 2025 17:54:35 -0000
Message-ID: <175744047500.318784.18336010676361401491@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250905132413.1376220-1-zhangzihuan@kylinos.cn>
In-Reply-To: <20250905132413.1376220-1-zhangzihuan@kylinos.cn>
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
Reply-To: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: cpufreq: use __free() for all cpufreq_cpu_get() references
URL   : https://patchwork.freedesktop.org/series/154267/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC      drivers/devfreq/governor_passive.o
drivers/devfreq/governor_passive.c: In function ‘cpufreq_passive_register_notifier’:
drivers/devfreq/governor_passive.c:308:61: warning: value computed is not used [-Wunused-value]
  308 |                 list_add_tail(&(no_free_ptr(parent_cpu_data)->node,
drivers/devfreq/governor_passive.c:308:31: error: lvalue required as unary ‘&’ operand
  308 |                 list_add_tail(&(no_free_ptr(parent_cpu_data)->node,
      |                               ^
drivers/devfreq/governor_passive.c:309:48: error: expected ‘)’ before ‘;’ token
  309 |                         &p_data->cpu_data_list);
      |                                                ^
      |                                                )
drivers/devfreq/governor_passive.c:308:30: note: to match this ‘(’
  308 |                 list_add_tail(&(no_free_ptr(parent_cpu_data)->node,
      |                              ^
drivers/devfreq/governor_passive.c:308:17: error: too few arguments to function ‘list_add_tail’
  308 |                 list_add_tail(&(no_free_ptr(parent_cpu_data)->node,
      |                 ^~~~~~~~~~~~~
In file included from ./include/linux/module.h:12,
                 from drivers/devfreq/governor_passive.c:10:
./include/linux/list.h:181:20: note: declared here
  181 | static inline void list_add_tail(struct list_head *new, struct list_head *head)
      |                    ^~~~~~~~~~~~~
drivers/devfreq/governor_passive.c:309:49: error: expected ‘;’ before ‘}’ token
  309 |                         &p_data->cpu_data_list);
      |                                                 ^
      |                                                 ;
  310 |         }
      |         ~                                        
drivers/devfreq/governor_passive.c:267:17: error: label ‘err’ used but not defined
  267 |                 goto err;
      |                 ^~~~
make[4]: *** [scripts/Makefile.build:287: drivers/devfreq/governor_passive.o] Error 1
make[3]: *** [scripts/Makefile.build:556: drivers/devfreq] Error 2
make[2]: *** [scripts/Makefile.build:556: drivers] Error 2
make[1]: *** [/home/kbuild2/kernel/Makefile:2011: .] Error 2
make: *** [Makefile:248: __sub-make] Error 2
Build failed, no error log produced


