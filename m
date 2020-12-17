Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E753E2DCAD7
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Dec 2020 03:10:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E359E899A5;
	Thu, 17 Dec 2020 02:10:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AAF6899A5
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Dec 2020 02:10:36 +0000 (UTC)
IronPort-SDR: Wwz84lSNTSiR7zJi2JOApm6HNzAo8zeomFct7qpimSea3Mh7COdvDvtZFMjSyuhB3luBJZQGqE
 XKte+u2l1QLA==
X-IronPort-AV: E=McAfee;i="6000,8403,9837"; a="259897937"
X-IronPort-AV: E=Sophos;i="5.78,425,1599548400"; 
 d="yaml'?scan'208";a="259897937"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2020 18:10:35 -0800
IronPort-SDR: zU4HFZHjP8KHOHCDuhbXt4bUB4L+eCPpi2fJCK+bzDlgNdyrwnbyq1FWxxTJTUQqLfquRu3mrs
 tvcvCRUiMlVA==
X-IronPort-AV: E=Sophos;i="5.78,425,1599548400"; 
 d="yaml'?scan'208";a="369484266"
Received: from xsang-optiplex-9020.sh.intel.com (HELO xsang-OptiPlex-9020)
 ([10.239.159.140])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2020 18:10:31 -0800
Date: Thu, 17 Dec 2020 10:24:24 +0800
From: kernel test robot <oliver.sang@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20201217022424.GC27932@xsang-OptiPlex-9020>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="P+33d92oIH25kiaB"
Content-Disposition: inline
In-Reply-To: <20201215154456.13954-1-chris@chris-wilson.co.uk>
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: [Intel-gfx] [drm/i915/gt] c12b7a396f:
 perf-sanity-tests.Parse_event_definition_strings.fail
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
Cc: intel-gfx@lists.freedesktop.org, LKML <linux-kernel@vger.kernel.org>,
 lkp@lists.01.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--P+33d92oIH25kiaB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


Greeting,

FYI, we noticed the following commit (built with gcc-9):

commit: c12b7a396ff758a262002b5b326d83efeae71140 ("[Intel-gfx] [CI] drm/i91=
5/gt: Track the overall awake/busy time")
url: https://github.com/0day-ci/linux/commits/Chris-Wilson/drm-i915-gt-Trac=
k-the-overall-awake-busy-time/20201215-234731
base: git://anongit.freedesktop.org/drm/drm-tip drm-tip

in testcase: perf-sanity-tests
version: perf-x86_64-fa02fcd94b0c-1_20201126
with following parameters:

	perf_compiler: gcc
	ucode: 0xe2



on test machine: 4 threads Intel(R) Core(TM) i5-6500 CPU @ 3.20GHz with 32G=
 memory

caused below changes (please refer to attached dmesg/kmsg for entire log/ba=
cktrace):




If you fix the issue, kindly add following tag
Reported-by: kernel test robot <oliver.sang@intel.com>

2020-12-16 20:52:52 make ARCH=3D EXTRA_CFLAGS=3D-fno-omit-frame-pointer -fs=
anitize=3Dundefined -fsanitize=3Daddress -C /usr/src/perf_selftests-x86_64-=
rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf
make: Entering directory '/usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396=
ff758a262002b5b326d83efeae71140/tools/perf'
  BUILD:   Doing 'make =1B[33m-j4=1B[m' parallel build
  HOSTCC   fixdep.o
  HOSTLD   fixdep-in.o
  LINK     fixdep
diff -u tools/include/uapi/drm/i915_drm.h include/uapi/drm/i915_drm.h
diff -u tools/include/uapi/linux/perf_event.h include/uapi/linux/perf_event=
=2Eh
diff -u tools/include/uapi/linux/stat.h include/uapi/linux/stat.h
diff -u tools/include/linux/build_bug.h include/linux/build_bug.h

Auto-detecting system features:
=2E..                         dwarf: [ =1B[32mon=1B[m  ]
=2E..            dwarf_getlocations: [ =1B[32mon=1B[m  ]
=2E..                         glibc: [ =1B[32mon=1B[m  ]
=2E..                        libbfd: [ =1B[32mon=1B[m  ]
=2E..                libbfd-buildid: [ =1B[32mon=1B[m  ]
=2E..                        libcap: [ =1B[32mon=1B[m  ]
=2E..                        libelf: [ =1B[32mon=1B[m  ]
=2E..                       libnuma: [ =1B[32mon=1B[m  ]
=2E..        numa_num_possible_cpus: [ =1B[32mon=1B[m  ]
=2E..                       libperl: [ =1B[32mon=1B[m  ]
=2E..                     libpython: [ =1B[32mon=1B[m  ]
=2E..                     libcrypto: [ =1B[32mon=1B[m  ]
=2E..                     libunwind: [ =1B[32mon=1B[m  ]
=2E..            libdw-dwarf-unwind: [ =1B[32mon=1B[m  ]
=2E..                          zlib: [ =1B[32mon=1B[m  ]
=2E..                          lzma: [ =1B[32mon=1B[m  ]
=2E..                     get_cpuid: [ =1B[32mon=1B[m  ]
=2E..                           bpf: [ =1B[32mon=1B[m  ]
=2E..                        libaio: [ =1B[32mon=1B[m  ]
=2E..                       libzstd: [ =1B[32mon=1B[m  ]
=2E..        disassembler-four-args: [ =1B[32mon=1B[m  ]

  CC       fd/array.o
  CC       exec-cmd.o
  CC       event-parse.o
  CC       core.o
  CC       cpumap.o
  LD       fd/libapi-in.o
  CC       fs/fs.o
  CC       help.o
  CC       fs/tracing_path.o
  CC       fs/cgroup.o
  LD       fs/libapi-in.o
  CC       cpu.o
  CC       debug.o
  CC       str_error_r.o
  LD       libapi-in.o
  AR       libapi.a
  CC       threadmap.o
  GEN      bpf_helper_defs.h
  CC       pager.o
  MKDIR    staticobjs/
  CC       evsel.o
  CC       staticobjs/libbpf.o
  CC       parse-options.o
  CC       evlist.o
  CC       event-plugin.o
  CC       trace-seq.o
  CC       parse-filter.o
  CC       mmap.o
  CC       parse-utils.o
  CC       kbuffer-parse.o
  CC       run-command.o
  CC       tep_strerror.o
  CC       event-parse-api.o
  LD       libtraceevent-in.o
  LINK     libtraceevent.a
  CC       sigchain.o
  CC       zalloc.o
  CC       xyarray.o
  CC       subcmd-config.o
  LD       libsubcmd-in.o
  CC       lib.o
  AR       libsubcmd.a
  GEN      common-cmds.h
  LD       libperf-in.o
  AR       libperf.a
  MKDIR    staticobjs/
  CC       staticobjs/bpf.o
  CC       staticobjs/nlattr.o
  CC       staticobjs/btf.o
  CC       staticobjs/libbpf_errno.o
  CC       staticobjs/str_error.o
  CC       staticobjs/netlink.o
  CC       staticobjs/bpf_prog_linfo.o
  CC       staticobjs/libbpf_probes.o
  CC       staticobjs/xsk.o
  CC       staticobjs/hashmap.o
  CC       staticobjs/btf_dump.o
  CC       staticobjs/ringbuf.o
  HOSTCC   pmu-events/json.o
  HOSTCC   pmu-events/jsmn.o
  CC       plugin_jbd2.o
  LD       staticobjs/libbpf-in.o
  LINK     libbpf.a
  HOSTCC   pmu-events/jevents.o
  CC       jvmti/libjvmti.o
  LD       plugin_jbd2-in.o
  CC       plugin_hrtimer.o
  LD       plugin_hrtimer-in.o
  CC       plugin_kmem.o
  HOSTLD   pmu-events/jevents-in.o
  GEN      perf-archive
  GEN      perf-with-kcore
  LINK     pmu-events/jevents
  LD       plugin_kmem-in.o
  CC       plugin_kvm.o
  GEN      pmu-events/pmu-events.c
  LD       plugin_kvm-in.o
  CC       plugin_mac80211.o
  LD       plugin_mac80211-in.o
  CC       plugin_sched_switch.o
  LD       plugin_sched_switch-in.o
  CC       plugin_function.o
  CC       pmu-events/pmu-events.o
  LD       plugin_function-in.o
  CC       plugin_futex.o
  LD       plugin_futex-in.o
  CC       plugin_xen.o
  CC       jvmti/jvmti_agent.o
  LD       plugin_xen-in.o
  CC       plugin_scsi.o
  LD       plugin_scsi-in.o
  CC       plugin_cfg80211.o
  LD       plugin_cfg80211-in.o
  CC       plugin_tlb.o
  LD       plugin_tlb-in.o
  LINK     plugin_jbd2.so
  LINK     plugin_hrtimer.so
  LINK     plugin_kmem.so
  LINK     plugin_kvm.so
  LINK     plugin_mac80211.so
  LINK     plugin_sched_switch.so
  CC       jvmti/libstring.o
  LINK     plugin_function.so
  LD       pmu-events/pmu-events-in.o
  LINK     plugin_futex.so
  CC       builtin-bench.o
  LINK     plugin_xen.so
  CC       jvmti/libctype.o
  LINK     plugin_scsi.so
  LD       jvmti/jvmti-in.o
  CC       builtin-annotate.o
  LINK     libperf-jvmti.so
  LINK     plugin_cfg80211.so
  LINK     plugin_tlb.so
  CC       builtin-config.o
  GEN      libtraceevent-dynamic-list
  CC       builtin-diff.o
  CC       builtin-evlist.o
  GEN      python/perf.so
  CC       builtin-ftrace.o
  CC       builtin-help.o
  CC       builtin-sched.o
  CC       builtin-buildid-list.o
  CC       builtin-buildid-cache.o
  CC       builtin-kallsyms.o
  CC       builtin-list.o
  CC       builtin-record.o
  CC       builtin-report.o
  CC       builtin-stat.o
  CC       builtin-timechart.o
  CC       builtin-top.o
  CC       builtin-script.o
  CC       builtin-kmem.o
  CC       builtin-lock.o
  CC       builtin-kvm.o
  CC       builtin-inject.o
  CC       builtin-mem.o
  CC       builtin-data.o
  CC       builtin-version.o
  CC       builtin-c2c.o
  CC       builtin-trace.o
  CC       builtin-probe.o
  CC       bench/sched-messaging.o
  CC       bench/sched-pipe.o
  CC       bench/syscall.o
  CC       bench/mem-functions.o
  CC       bench/futex-hash.o
  CC       bench/futex-wake.o
  CC       bench/futex-wake-parallel.o
  CC       bench/futex-requeue.o
  CC       bench/futex-lock-pi.o
  CC       bench/epoll-wait.o
  CC       bench/epoll-ctl.o
  CC       bench/synthesize.o
  CC       bench/kallsyms-parse.o
  CC       bench/find-bit-bench.o
  CC       bench/inject-buildid.o
  CC       bench/mem-memcpy-x86-64-asm.o
  CC       bench/mem-memset-x86-64-asm.o
  CC       bench/numa.o
  CC       tests/builtin-test.o
  CC       tests/parse-events.o
  CC       util/annotate.o
  LD       bench/perf-in.o
  CC       util/block-info.o
  CC       tests/dso-data.o
  CC       util/block-range.o
  CC       tests/attr.o
  CC       util/build-id.o
  CC       tests/vmlinux-kallsyms.o
  CC       tests/openat-syscall.o
  CC       arch/common.o
  CC       tests/openat-syscall-all-cpus.o
  CC       arch/x86/util/header.o
  CC       tests/openat-syscall-tp-fields.o
  CC       arch/x86/util/tsc.o
  CC       arch/x86/util/pmu.o
  CC       arch/x86/util/kvm-stat.o
  CC       tests/mmap-basic.o
  CC       arch/x86/tests/regs_load.o
  CC       arch/x86/tests/dwarf-unwind.o
  CC       arch/x86/util/perf_regs.o
  CC       arch/x86/tests/arch-tests.o
  CC       arch/x86/tests/rdpmc.o
  CC       arch/x86/util/topdown.o
  CC       tests/perf-record.o
  CC       arch/x86/util/machine.o
  CC       arch/x86/tests/perf-time-to-tsc.o
  CC       arch/x86/util/event.o
  CC       arch/x86/tests/insn-x86.o
  CC       util/cacheline.o
  CC       util/config.o
  CC       arch/x86/util/dwarf-regs.o
  CC       arch/x86/util/unwind-libunwind.o
  CC       tests/evsel-roundtrip-name.o
  CC       arch/x86/util/auxtrace.o
  CC       arch/x86/tests/intel-pt-pkt-decoder-test.o
  CC       tests/evsel-tp-sched.o
  CC       arch/x86/util/archinsn.o
  CC       arch/x86/tests/bp-modify.o
  CC       tests/fdarray.o
  CC       arch/x86/util/intel-pt.o
  LD       arch/x86/tests/perf-in.o
  CC       arch/x86/util/intel-bts.o
  CC       util/copyfile.o
  CC       tests/pmu.o
  CC       tests/pmu-events.o
  CC       util/ctype.o
  CC       util/db-export.o
  CC       util/env.o
  CC       util/event.o
  CC       tests/hists_common.o
  LD       arch/x86/util/perf-in.o
  LD       arch/x86/perf-in.o
  LD       arch/perf-in.o
  CC       tests/hists_link.o
  CC       tests/hists_filter.o
  CC       util/evlist.o
  CC       tests/hists_output.o
  CC       util/sideband_evlist.o
  CC       tests/hists_cumulate.o
  CC       util/evsel.o
  CC       tests/python-use.o
  CC       tests/bp_signal.o
  CC       tests/bp_signal_overflow.o
  CC       tests/bp_account.o
  CC       tests/wp.o
  CC       util/evsel_fprintf.o
  CC       tests/task-exit.o
  CC       tests/sw-clock.o
  CC       tests/mmap-thread-lookup.o
  CC       util/perf_event_attr_fprintf.o
  CC       tests/thread-maps-share.o
  CC       tests/switch-tracking.o
  CC       tests/keep-tracking.o
  CC       tests/code-reading.o
  CC       util/evswitch.o
  CC       util/find_bit.o
  CC       tests/sample-parsing.o
  CC       util/get_current_dir_name.o
  CC       util/kallsyms.o
  CC       util/levenshtein.o
  CC       util/llvm-utils.o
  CC       tests/parse-no-sample-id-all.o
  CC       tests/kmod-path.o
  CC       tests/thread-map.o
  CC       ui/setup.o
  CC       ui/helpline.o
  CC       tests/llvm.o
  CC       ui/progress.o
  CC       ui/util.o
  CC       tests/bpf.o
  CC       tests/topology.o
  CC       ui/hist.o
  CC       util/mmap.o
  CC       util/memswap.o
  CC       tests/mem.o
  CC       tests/cpumap.o
  CC       ui/stdio/hist.o
  BISON    util/parse-events-bison.c
  CC       tests/stat.o
  CC       util/perf_regs.o
  CC       util/path.o
  CC       tests/event_update.o
  CC       util/print_binary.o
  CC       util/rlimit.o
  CC       tests/event-times.o
  CC       util/argv_split.o
  CC       util/rbtree.o
  CC       tests/expr.o
  CC       tests/backward-ring-buffer.o
  CC       tests/sdt.o
  CC       tests/is_printable_array.o
  CC       ui/browser.o
  CC       tests/bitmap.o
  CC       tests/perf-hooks.o
  CC       tests/clang.o
  CC       tests/unit_number__scnprintf.o
  CC       tests/mem2node.o
  CC       util/libstring.o
  CC       tests/maps.o
  CC       util/bitmap.o
  CC       util/hweight.o
  CC       util/smt.o
  CC       ui/browsers/annotate.o
  CC       tests/time-utils-test.o
  CC       util/strbuf.o
  CC       tests/genelf.o
  CC       util/string.o
  CC       tests/api-io.o
  CC       util/strlist.o
  CC       tests/demangle-java-test.o
  CC       util/strfilter.o
  CC       tests/pfm.o
  CC       tests/parse-metric.o
  CC       tests/pe-file-parsing.o
  CC       tests/expand-cgroup.o
  CC       ui/browsers/hists.o
  CC       tests/dwarf-unwind.o
  CC       tests/llvm-src-base.o
  CC       tests/llvm-src-kbuild.o
  CC       tests/llvm-src-prologue.o
  CC       tests/llvm-src-relocation.o
  LD       tests/perf-in.o
  CC       scripts/perl/Perf-Trace-Util/Context.o
  LD       scripts/perl/Perf-Trace-Util/perf-in.o
  CC       scripts/python/Perf-Trace-Util/Context.o
  CC       util/top.o
  LD       scripts/python/Perf-Trace-Util/perf-in.o
  LD       scripts/perf-in.o
  CC       trace/beauty/clone.o
  CC       trace/beauty/fcntl.o
  CC       util/usage.o
  CC       trace/beauty/flock.o
  CC       util/dso.o
  CC       trace/beauty/fsmount.o
  CC       trace/beauty/fspick.o
  CC       trace/beauty/ioctl.o
  CC       ui/tui/setup.o
  CC       ui/tui/util.o
  CC       trace/beauty/kcmp.o
  CC       trace/beauty/mount_flags.o
  CC       trace/beauty/move_mount.o
  CC       trace/beauty/pkey_alloc.o
  CC       ui/tui/helpline.o
  CC       ui/tui/progress.o
  CC       trace/beauty/arch_prctl.o
  CC       trace/beauty/prctl.o
  LD       ui/tui/perf-in.o
  CC       trace/beauty/renameat.o
  CC       trace/beauty/sockaddr.o
  CC       trace/beauty/socket.o
  CC       util/dsos.o
  CC       trace/beauty/statx.o
  CC       trace/beauty/sync_file_range.o
  CC       trace/beauty/tracepoints/x86_irq_vectors.o
  CC       trace/beauty/tracepoints/x86_msr.o
  CC       util/symbol.o
  LD       trace/beauty/tracepoints/perf-in.o
  LD       trace/beauty/perf-in.o
  CC       util/symbol_fprintf.o
  CC       util/color.o
  CC       util/color_config.o
  CC       util/metricgroup.o
  CC       util/header.o
  CC       util/callchain.o
  CC       util/values.o
  CC       util/debug.o
  CC       util/fncache.o
  CC       util/machine.o
  CC       util/map.o
  CC       util/pstack.o
  CC       util/session.o
  CC       util/sample-raw.o
  CC       util/s390-sample-raw.o
  CC       util/syscalltbl.o
  CC       util/ordered-events.o
  CC       util/namespaces.o
  CC       ui/browsers/map.o
  CC       util/comm.o
  CC       util/thread.o
  CC       util/thread_map.o
  CC       ui/browsers/scripts.o
  CC       perf.o
  CC       util/trace-event-parse.o
  CC       ui/browsers/header.o
  CC       util/parse-events-bison.o
  CC       ui/browsers/res_sample.o
  BISON    util/pmu-bison.c
  CC       util/trace-event-read.o
  CC       util/trace-event-info.o
  LD       ui/browsers/perf-in.o
  LD       ui/perf-in.o
  CC       util/trace-event-scripting.o
  CC       util/trace-event.o
  CC       util/svghelper.o
  CC       util/sort.o
  CC       util/hist.o
  CC       util/util.o
  CC       util/cpumap.o
  CC       util/affinity.o
  CC       util/cputopo.o
  CC       util/cgroup.o
  CC       util/target.o
  CC       util/rblist.o
  CC       util/intlist.o
  CC       util/vdso.o
  CC       util/counts.o
  CC       util/stat.o
  CC       util/stat-shadow.o
  CC       util/stat-display.o
  CC       util/perf_api_probe.o
  CC       util/record.o
  CC       util/srcline.o
  CC       util/srccode.o
  CC       util/synthetic-events.o
  CC       util/data.o
  CC       util/tsc.o
  CC       util/cloexec.o
  CC       util/call-path.o
  CC       util/rwsem.o
  CC       util/thread-stack.o
  CC       util/spark.o
  CC       util/topdown.o
  CC       util/stream.o
  CC       util/auxtrace.o
  CC       util/intel-pt-decoder/intel-pt-pkt-decoder.o
  GEN      util/intel-pt-decoder/inat-tables.c
  CC       util/intel-pt-decoder/intel-pt-log.o
  CC       util/intel-pt-decoder/intel-pt-decoder.o
  CC       util/arm-spe-decoder/arm-spe-pkt-decoder.o
  CC       util/scripting-engines/trace-event-perl.o
  CC       util/arm-spe-decoder/arm-spe-decoder.o
  LD       util/arm-spe-decoder/perf-in.o
  CC       util/scripting-engines/trace-event-python.o
  CC       util/intel-pt.o
  CC       util/intel-bts.o
  LD       util/scripting-engines/perf-in.o
  CC       util/arm-spe.o
  CC       util/s390-cpumsf.o
  CC       util/intel-pt-decoder/intel-pt-insn-decoder.o
  CC       util/parse-branch-options.o
  CC       util/dump-insn.o
  CC       util/parse-regs-options.o
  CC       util/parse-sublevel-options.o
  CC       util/term.o
  CC       util/help-unknown-cmd.o
  CC       util/mem-events.o
  CC       util/vsprintf.o
  CC       util/units.o
  CC       util/time-utils.o
  BISON    util/expr-bison.c
  CC       util/branch.o
  CC       util/mem2node.o
  LD       util/intel-pt-decoder/perf-in.o
  CC       util/clockid.o
  CC       util/bpf-loader.o
  CC       util/bpf_map.o
  CC       util/bpf-prologue.o
  CC       util/symbol-elf.o
  CC       util/probe-file.o
  CC       util/probe-event.o
  CC       util/probe-finder.o
  CC       util/dwarf-aux.o
  CC       util/dwarf-regs.o
  CC       util/unwind-libunwind-local.o
  CC       util/unwind-libunwind.o
  CC       util/data-convert-bt.o
  CC       util/zlib.o
  CC       util/lzma.o
  CC       util/zstd.o
  CC       util/cap.o
  CC       util/demangle-java.o
  CC       util/demangle-rust.o
  CC       util/jitdump.o
  CC       util/genelf.o
  CC       util/genelf_debug.o
  CC       util/perf-hooks.o
  CC       util/bpf-event.o
  FLEX     util/parse-events-flex.c
  FLEX     util/pmu-flex.c
  CC       util/pmu-bison.o
  FLEX     util/expr-flex.c
  CC       util/expr-bison.o
  CC       util/expr.o
  CC       util/parse-events.o
  CC       util/parse-events-flex.o
  CC       util/pmu.o
  CC       util/pmu-flex.o
  CC       util/expr-flex.o
  LD       util/perf-in.o
  LD       perf-in.o
  LINK     perf
make: Leaving directory '/usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf'
2020-12-16 20:54:07 cd /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff7=
58a262002b5b326d83efeae71140/tools/perf
2020-12-16 20:54:07 mkdir -p /pkg
2020-12-16 20:54:07 mkdir -p /kbuild/obj/x86_64/x86_64-rhel-8.3
2020-12-16 20:54:07 cp /pkg/linux/x86_64-rhel-8.3/gcc-9/c12b7a396ff758a2620=
02b5b326d83efeae71140/vmlinux.xz /tmp
2020-12-16 20:54:08 unxz -k /tmp/vmlinux.xz
2020-12-16 20:54:12 cp /tmp/vmlinux /kbuild/obj/x86_64/x86_64-rhel-8.3
ignored_by_lkp: BPF filter
ignored_by_lkp: LLVM search and compile
ignored_by_lkp: Add vfs_getname probe to get syscall args filenames
ignored_by_lkp: Use vfs_getname probe to get syscall args filenames
ignored_by_lkp: Check open filename arg using perf trace + vfs_getname
ignored_by_lkp: builtin clang support
2020-12-16 20:54:12 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 1
 1: vmlinux symtab matches kallsyms                                 : Ok
2020-12-16 20:54:13 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 2
 2: Detect openat syscall event                                     : Ok
2020-12-16 20:54:13 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 3
 3: Detect openat syscall event on all cpus                         : Ok
2020-12-16 20:54:13 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 4
 4: Read samples using the mmap interface                           : FAILE=
D!
2020-12-16 20:54:13 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 5
 5: Test data source output                                         : Ok
2020-12-16 20:54:13 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 6
 6: Parse event definition strings                                  : FAILE=
D!
2020-12-16 20:54:14 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 7
 7: Simple expression parser                                        : Ok
2020-12-16 20:54:15 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 8
 8: PERF_RECORD_* events & perf_sample fields                       : Ok
2020-12-16 20:54:17 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 9
 9: Parse perf pmu format                                           : Ok
2020-12-16 20:54:17 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 10
10: PMU events                                                      :
10.1: PMU event table sanity                                        : Ok
10.2: PMU event map aliases                                         : Ok
10.3: Parsing of PMU event table metrics                            : Skip =
(some metrics failed)
10.4: Parsing of PMU event table metrics with fake PMUs             : Ok
2020-12-16 20:54:19 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 11
11: DSO data read                                                   : Ok
2020-12-16 20:54:19 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 12
12: DSO data cache                                                  : Ok
2020-12-16 20:54:19 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 13
13: DSO data reopen                                                 : Ok
2020-12-16 20:54:19 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 14
14: Roundtrip evsel->name                                           : Ok
2020-12-16 20:54:19 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 15
15: Parse sched tracepoints fields                                  : Ok
2020-12-16 20:54:19 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 16
16: syscalls:sys_enter_openat event fields                          : Ok
2020-12-16 20:54:19 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 17
17: Setup struct perf_event_attr                                    : Ok
2020-12-16 20:54:33 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 18
18: Match and link multiple hists                                   : Ok
2020-12-16 20:54:33 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 19
19: 'import perf' in python                                         : FAILE=
D!
2020-12-16 20:54:33 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 20
20: Breakpoint overflow signal handler                              : Ok
2020-12-16 20:54:33 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 21
21: Breakpoint overflow sampling                                    : Ok
2020-12-16 20:54:33 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 22
22: Breakpoint accounting                                           : Ok
2020-12-16 20:54:33 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 23
23: Watchpoint                                                      :
23.1: Read Only Watchpoint                                          : Skip
23.2: Write Only Watchpoint                                         : Ok
23.3: Read / Write Watchpoint                                       : Ok
23.4: Modify Watchpoint                                             : Ok
2020-12-16 20:54:34 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 24
24: Number of exit events of a simple workload                      : FAILE=
D!
2020-12-16 20:54:34 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 25
25: Software clock events period values                             : FAILE=
D!
2020-12-16 20:54:34 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 26
26: Object code reading                                             : FAILE=
D!
2020-12-16 20:54:37 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 27
27: Sample parsing                                                  : Ok
2020-12-16 20:54:37 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 28
28: Use a dummy software event to keep tracking                     : FAILE=
D!
2020-12-16 20:54:37 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 29
29: Parse with no sample_id_all bit set                             : Ok
2020-12-16 20:54:37 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 30
30: Filter hist entries                                             : Ok
2020-12-16 20:54:37 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 31
31: Lookup mmap thread                                              : FAILE=
D!
2020-12-16 20:54:38 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 32
32: Share thread maps                                               : Ok
2020-12-16 20:54:38 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 33
33: Sort output of hist entries                                     : Ok
2020-12-16 20:54:38 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 34
34: Cumulate child hist entries                                     : Ok
2020-12-16 20:54:38 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 35
35: Track with sched_switch                                         : FAILE=
D!
2020-12-16 20:54:38 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 36
36: Filter fds with revents mask in a fdarray                       : Ok
2020-12-16 20:54:38 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 37
37: Add fd to a fdarray, making it autogrow                         : Ok
2020-12-16 20:54:38 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 38
38: kmod_path__parse                                                : Ok
2020-12-16 20:54:38 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 39
39: Thread map                                                      : Ok
2020-12-16 20:54:39 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 41
41: Session topology                                                : FAILE=
D!
2020-12-16 20:54:39 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 43
43: Synthesize thread map                                           : FAILE=
D!
2020-12-16 20:54:39 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 44
44: Remove thread map                                               : FAILE=
D!
2020-12-16 20:54:39 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 45
45: Synthesize cpu map                                              : Ok
2020-12-16 20:54:39 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 46
46: Synthesize stat config                                          : Ok
2020-12-16 20:54:39 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 47
47: Synthesize stat                                                 : Ok
2020-12-16 20:54:39 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 48
48: Synthesize stat round                                           : Ok
2020-12-16 20:54:39 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 49
49: Synthesize attr update                                          : FAILE=
D!
2020-12-16 20:54:39 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 50
50: Event times                                                     : Ok
2020-12-16 20:54:39 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 51
51: Read backward ring buffer                                       : Ok
2020-12-16 20:54:40 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 52
52: Print cpu map                                                   : FAILE=
D!
2020-12-16 20:54:40 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 53
53: Merge cpu map                                                   : Ok
2020-12-16 20:54:40 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 54
54: Probe SDT events                                                : Ok
2020-12-16 20:54:40 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 55
55: is_printable_array                                              : Ok
2020-12-16 20:54:40 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 56
56: Print bitmap                                                    : Ok
2020-12-16 20:54:40 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 57
57: perf hooks                                                      : Ok
2020-12-16 20:54:40 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 59
59: unit_number__scnprintf                                          : Ok
2020-12-16 20:54:40 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 60
60: mem2node                                                        : Ok
2020-12-16 20:54:40 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 61
61: time utils                                                      : Ok
2020-12-16 20:54:40 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 62
62: Test jit_write_elf                                              : Ok
2020-12-16 20:54:40 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 63
63: Test libpfm4 support                                            : Skip =
(not compiled in)
2020-12-16 20:54:40 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 64
64: Test api io                                                     : Ok
2020-12-16 20:54:40 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 65
65: maps__merge_in                                                  : FAILE=
D!
2020-12-16 20:54:40 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 66
66: Demangle Java                                                   : Ok
2020-12-16 20:54:41 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 67
67: Parse and process metrics                                       : Ok
2020-12-16 20:54:41 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 68
68: PE file support                                                 : FAILE=
D!
2020-12-16 20:54:41 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 69
69: Event expansion for cgroups                                     : Ok
2020-12-16 20:54:41 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 70
70: x86 rdpmc                                                       : Ok
2020-12-16 20:54:41 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 71
71: Convert perf time to TSC                                        : FAILE=
D!
2020-12-16 20:54:41 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 72
72: DWARF unwind                                                    : FAILE=
D!
2020-12-16 20:54:42 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 73
73: x86 instruction decoder - new instructions                      : Ok
2020-12-16 20:54:42 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 74
74: Intel PT packet decoder                                         : Ok
2020-12-16 20:54:42 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 75
75: x86 bp modify                                                   : Ok
2020-12-16 20:54:42 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 76
76: probe libc's inet_pton & backtrace it with ping                 : Ok
2020-12-16 20:54:44 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 80
80: build id cache operations                                       : FAILE=
D!
2020-12-16 20:54:45 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 81
81: Zstd perf.data compression/decompression                        : FAILE=
D!
2020-12-16 20:54:46 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 82
82: Check Arm CoreSight trace data recording and synthesized samples: Skip



To reproduce:

        git clone https://github.com/intel/lkp-tests.git
        cd lkp-tests
        bin/lkp install job.yaml  # job file is attached in this email
        bin/lkp run     job.yaml



Thanks,
Oliver Sang


--P+33d92oIH25kiaB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="config-5.10.0-02717-gc12b7a396ff7"

#
# Automatically generated file; DO NOT EDIT.
# Linux/x86_64 5.10.0 Kernel Configuration
#
CONFIG_CC_VERSION_TEXT="gcc-9 (Debian 9.3.0-15) 9.3.0"
CONFIG_CC_IS_GCC=y
CONFIG_GCC_VERSION=90300
CONFIG_LD_VERSION=235000000
CONFIG_CLANG_VERSION=0
CONFIG_LLD_VERSION=0
CONFIG_CC_CAN_LINK=y
CONFIG_CC_CAN_LINK_STATIC=y
CONFIG_CC_HAS_ASM_GOTO=y
CONFIG_CC_HAS_ASM_INLINE=y
CONFIG_IRQ_WORK=y
CONFIG_BUILDTIME_TABLE_SORT=y
CONFIG_THREAD_INFO_IN_TASK=y

#
# General setup
#
CONFIG_INIT_ENV_ARG_LIMIT=32
# CONFIG_COMPILE_TEST is not set
CONFIG_LOCALVERSION=""
CONFIG_LOCALVERSION_AUTO=y
CONFIG_BUILD_SALT=""
CONFIG_HAVE_KERNEL_GZIP=y
CONFIG_HAVE_KERNEL_BZIP2=y
CONFIG_HAVE_KERNEL_LZMA=y
CONFIG_HAVE_KERNEL_XZ=y
CONFIG_HAVE_KERNEL_LZO=y
CONFIG_HAVE_KERNEL_LZ4=y
CONFIG_HAVE_KERNEL_ZSTD=y
CONFIG_KERNEL_GZIP=y
# CONFIG_KERNEL_BZIP2 is not set
# CONFIG_KERNEL_LZMA is not set
# CONFIG_KERNEL_XZ is not set
# CONFIG_KERNEL_LZO is not set
# CONFIG_KERNEL_LZ4 is not set
# CONFIG_KERNEL_ZSTD is not set
CONFIG_DEFAULT_INIT=""
CONFIG_DEFAULT_HOSTNAME="(none)"
CONFIG_SWAP=y
CONFIG_SYSVIPC=y
CONFIG_SYSVIPC_SYSCTL=y
CONFIG_POSIX_MQUEUE=y
CONFIG_POSIX_MQUEUE_SYSCTL=y
# CONFIG_WATCH_QUEUE is not set
CONFIG_CROSS_MEMORY_ATTACH=y
# CONFIG_USELIB is not set
CONFIG_AUDIT=y
CONFIG_HAVE_ARCH_AUDITSYSCALL=y
CONFIG_AUDITSYSCALL=y

#
# IRQ subsystem
#
CONFIG_GENERIC_IRQ_PROBE=y
CONFIG_GENERIC_IRQ_SHOW=y
CONFIG_GENERIC_IRQ_EFFECTIVE_AFF_MASK=y
CONFIG_GENERIC_PENDING_IRQ=y
CONFIG_GENERIC_IRQ_MIGRATION=y
CONFIG_GENERIC_IRQ_INJECTION=y
CONFIG_HARDIRQS_SW_RESEND=y
CONFIG_IRQ_DOMAIN=y
CONFIG_IRQ_DOMAIN_HIERARCHY=y
CONFIG_GENERIC_MSI_IRQ=y
CONFIG_GENERIC_MSI_IRQ_DOMAIN=y
CONFIG_IRQ_MSI_IOMMU=y
CONFIG_GENERIC_IRQ_MATRIX_ALLOCATOR=y
CONFIG_GENERIC_IRQ_RESERVATION_MODE=y
CONFIG_IRQ_FORCED_THREADING=y
CONFIG_SPARSE_IRQ=y
# CONFIG_GENERIC_IRQ_DEBUGFS is not set
# end of IRQ subsystem

CONFIG_CLOCKSOURCE_WATCHDOG=y
CONFIG_ARCH_CLOCKSOURCE_INIT=y
CONFIG_CLOCKSOURCE_VALIDATE_LAST_CYCLE=y
CONFIG_GENERIC_TIME_VSYSCALL=y
CONFIG_GENERIC_CLOCKEVENTS=y
CONFIG_GENERIC_CLOCKEVENTS_BROADCAST=y
CONFIG_GENERIC_CLOCKEVENTS_MIN_ADJUST=y
CONFIG_GENERIC_CMOS_UPDATE=y
CONFIG_HAVE_POSIX_CPU_TIMERS_TASK_WORK=y
CONFIG_POSIX_CPU_TIMERS_TASK_WORK=y

#
# Timers subsystem
#
CONFIG_TICK_ONESHOT=y
CONFIG_NO_HZ_COMMON=y
# CONFIG_HZ_PERIODIC is not set
# CONFIG_NO_HZ_IDLE is not set
CONFIG_NO_HZ_FULL=y
CONFIG_CONTEXT_TRACKING=y
# CONFIG_CONTEXT_TRACKING_FORCE is not set
CONFIG_NO_HZ=y
CONFIG_HIGH_RES_TIMERS=y
# end of Timers subsystem

# CONFIG_PREEMPT_NONE is not set
CONFIG_PREEMPT_VOLUNTARY=y
# CONFIG_PREEMPT is not set
CONFIG_PREEMPT_COUNT=y

#
# CPU/Task time and stats accounting
#
CONFIG_VIRT_CPU_ACCOUNTING=y
CONFIG_VIRT_CPU_ACCOUNTING_GEN=y
CONFIG_IRQ_TIME_ACCOUNTING=y
CONFIG_HAVE_SCHED_AVG_IRQ=y
CONFIG_BSD_PROCESS_ACCT=y
CONFIG_BSD_PROCESS_ACCT_V3=y
CONFIG_TASKSTATS=y
CONFIG_TASK_DELAY_ACCT=y
CONFIG_TASK_XACCT=y
CONFIG_TASK_IO_ACCOUNTING=y
# CONFIG_PSI is not set
# end of CPU/Task time and stats accounting

CONFIG_CPU_ISOLATION=y

#
# RCU Subsystem
#
CONFIG_TREE_RCU=y
# CONFIG_RCU_EXPERT is not set
CONFIG_SRCU=y
CONFIG_TREE_SRCU=y
CONFIG_TASKS_RCU_GENERIC=y
CONFIG_TASKS_RCU=y
CONFIG_TASKS_RUDE_RCU=y
CONFIG_TASKS_TRACE_RCU=y
CONFIG_RCU_STALL_COMMON=y
CONFIG_RCU_NEED_SEGCBLIST=y
CONFIG_RCU_NOCB_CPU=y
# end of RCU Subsystem

CONFIG_BUILD_BIN2C=y
CONFIG_IKCONFIG=y
CONFIG_IKCONFIG_PROC=y
# CONFIG_IKHEADERS is not set
CONFIG_LOG_BUF_SHIFT=20
CONFIG_LOG_CPU_MAX_BUF_SHIFT=12
CONFIG_PRINTK_SAFE_LOG_BUF_SHIFT=13
CONFIG_HAVE_UNSTABLE_SCHED_CLOCK=y

#
# Scheduler features
#
# CONFIG_UCLAMP_TASK is not set
# end of Scheduler features

CONFIG_ARCH_SUPPORTS_NUMA_BALANCING=y
CONFIG_ARCH_WANT_BATCHED_UNMAP_TLB_FLUSH=y
CONFIG_CC_HAS_INT128=y
CONFIG_ARCH_SUPPORTS_INT128=y
CONFIG_NUMA_BALANCING=y
CONFIG_NUMA_BALANCING_DEFAULT_ENABLED=y
CONFIG_CGROUPS=y
CONFIG_PAGE_COUNTER=y
CONFIG_MEMCG=y
CONFIG_MEMCG_SWAP=y
CONFIG_MEMCG_KMEM=y
CONFIG_BLK_CGROUP=y
CONFIG_CGROUP_WRITEBACK=y
CONFIG_CGROUP_SCHED=y
CONFIG_FAIR_GROUP_SCHED=y
CONFIG_CFS_BANDWIDTH=y
CONFIG_RT_GROUP_SCHED=y
CONFIG_CGROUP_PIDS=y
CONFIG_CGROUP_RDMA=y
CONFIG_CGROUP_FREEZER=y
CONFIG_CGROUP_HUGETLB=y
CONFIG_CPUSETS=y
CONFIG_PROC_PID_CPUSET=y
CONFIG_CGROUP_DEVICE=y
CONFIG_CGROUP_CPUACCT=y
CONFIG_CGROUP_PERF=y
CONFIG_CGROUP_BPF=y
# CONFIG_CGROUP_DEBUG is not set
CONFIG_SOCK_CGROUP_DATA=y
CONFIG_NAMESPACES=y
CONFIG_UTS_NS=y
CONFIG_TIME_NS=y
CONFIG_IPC_NS=y
CONFIG_USER_NS=y
CONFIG_PID_NS=y
CONFIG_NET_NS=y
# CONFIG_CHECKPOINT_RESTORE is not set
CONFIG_SCHED_AUTOGROUP=y
# CONFIG_SYSFS_DEPRECATED is not set
CONFIG_RELAY=y
CONFIG_BLK_DEV_INITRD=y
CONFIG_INITRAMFS_SOURCE=""
CONFIG_RD_GZIP=y
CONFIG_RD_BZIP2=y
CONFIG_RD_LZMA=y
CONFIG_RD_XZ=y
CONFIG_RD_LZO=y
CONFIG_RD_LZ4=y
CONFIG_RD_ZSTD=y
# CONFIG_BOOT_CONFIG is not set
CONFIG_CC_OPTIMIZE_FOR_PERFORMANCE=y
# CONFIG_CC_OPTIMIZE_FOR_SIZE is not set
CONFIG_LD_ORPHAN_WARN=y
CONFIG_SYSCTL=y
CONFIG_HAVE_UID16=y
CONFIG_SYSCTL_EXCEPTION_TRACE=y
CONFIG_HAVE_PCSPKR_PLATFORM=y
CONFIG_BPF=y
# CONFIG_EXPERT is not set
CONFIG_UID16=y
CONFIG_MULTIUSER=y
CONFIG_SGETMASK_SYSCALL=y
CONFIG_SYSFS_SYSCALL=y
CONFIG_FHANDLE=y
CONFIG_POSIX_TIMERS=y
CONFIG_PRINTK=y
CONFIG_PRINTK_NMI=y
CONFIG_BUG=y
CONFIG_ELF_CORE=y
CONFIG_PCSPKR_PLATFORM=y
CONFIG_BASE_FULL=y
CONFIG_FUTEX=y
CONFIG_FUTEX_PI=y
CONFIG_EPOLL=y
CONFIG_SIGNALFD=y
CONFIG_TIMERFD=y
CONFIG_EVENTFD=y
CONFIG_SHMEM=y
CONFIG_AIO=y
CONFIG_IO_URING=y
CONFIG_ADVISE_SYSCALLS=y
CONFIG_HAVE_ARCH_USERFAULTFD_WP=y
CONFIG_MEMBARRIER=y
CONFIG_KALLSYMS=y
CONFIG_KALLSYMS_ALL=y
CONFIG_KALLSYMS_ABSOLUTE_PERCPU=y
CONFIG_KALLSYMS_BASE_RELATIVE=y
# CONFIG_BPF_LSM is not set
CONFIG_BPF_SYSCALL=y
CONFIG_ARCH_WANT_DEFAULT_BPF_JIT=y
CONFIG_BPF_JIT_ALWAYS_ON=y
CONFIG_BPF_JIT_DEFAULT_ON=y
# CONFIG_BPF_PRELOAD is not set
CONFIG_USERFAULTFD=y
CONFIG_ARCH_HAS_MEMBARRIER_SYNC_CORE=y
CONFIG_RSEQ=y
# CONFIG_EMBEDDED is not set
CONFIG_HAVE_PERF_EVENTS=y

#
# Kernel Performance Events And Counters
#
CONFIG_PERF_EVENTS=y
# CONFIG_DEBUG_PERF_USE_VMALLOC is not set
# end of Kernel Performance Events And Counters

CONFIG_VM_EVENT_COUNTERS=y
CONFIG_SLUB_DEBUG=y
# CONFIG_COMPAT_BRK is not set
# CONFIG_SLAB is not set
CONFIG_SLUB=y
CONFIG_SLAB_MERGE_DEFAULT=y
CONFIG_SLAB_FREELIST_RANDOM=y
# CONFIG_SLAB_FREELIST_HARDENED is not set
CONFIG_SHUFFLE_PAGE_ALLOCATOR=y
CONFIG_SLUB_CPU_PARTIAL=y
CONFIG_SYSTEM_DATA_VERIFICATION=y
CONFIG_PROFILING=y
CONFIG_TRACEPOINTS=y
# end of General setup

CONFIG_64BIT=y
CONFIG_X86_64=y
CONFIG_X86=y
CONFIG_INSTRUCTION_DECODER=y
CONFIG_OUTPUT_FORMAT="elf64-x86-64"
CONFIG_LOCKDEP_SUPPORT=y
CONFIG_STACKTRACE_SUPPORT=y
CONFIG_MMU=y
CONFIG_ARCH_MMAP_RND_BITS_MIN=28
CONFIG_ARCH_MMAP_RND_BITS_MAX=32
CONFIG_ARCH_MMAP_RND_COMPAT_BITS_MIN=8
CONFIG_ARCH_MMAP_RND_COMPAT_BITS_MAX=16
CONFIG_GENERIC_ISA_DMA=y
CONFIG_GENERIC_BUG=y
CONFIG_GENERIC_BUG_RELATIVE_POINTERS=y
CONFIG_ARCH_MAY_HAVE_PC_FDC=y
CONFIG_GENERIC_CALIBRATE_DELAY=y
CONFIG_ARCH_HAS_CPU_RELAX=y
CONFIG_ARCH_HAS_CACHE_LINE_SIZE=y
CONFIG_ARCH_HAS_FILTER_PGPROT=y
CONFIG_HAVE_SETUP_PER_CPU_AREA=y
CONFIG_NEED_PER_CPU_EMBED_FIRST_CHUNK=y
CONFIG_NEED_PER_CPU_PAGE_FIRST_CHUNK=y
CONFIG_ARCH_HIBERNATION_POSSIBLE=y
CONFIG_ARCH_SUSPEND_POSSIBLE=y
CONFIG_ARCH_WANT_GENERAL_HUGETLB=y
CONFIG_ZONE_DMA32=y
CONFIG_AUDIT_ARCH=y
CONFIG_ARCH_SUPPORTS_DEBUG_PAGEALLOC=y
CONFIG_HAVE_INTEL_TXT=y
CONFIG_X86_64_SMP=y
CONFIG_ARCH_SUPPORTS_UPROBES=y
CONFIG_FIX_EARLYCON_MEM=y
CONFIG_DYNAMIC_PHYSICAL_MASK=y
CONFIG_PGTABLE_LEVELS=5
CONFIG_CC_HAS_SANE_STACKPROTECTOR=y

#
# Processor type and features
#
CONFIG_ZONE_DMA=y
CONFIG_SMP=y
CONFIG_X86_FEATURE_NAMES=y
CONFIG_X86_X2APIC=y
CONFIG_X86_MPPARSE=y
# CONFIG_GOLDFISH is not set
CONFIG_RETPOLINE=y
CONFIG_X86_CPU_RESCTRL=y
CONFIG_X86_EXTENDED_PLATFORM=y
# CONFIG_X86_NUMACHIP is not set
# CONFIG_X86_VSMP is not set
CONFIG_X86_UV=y
# CONFIG_X86_GOLDFISH is not set
# CONFIG_X86_INTEL_MID is not set
CONFIG_X86_INTEL_LPSS=y
CONFIG_X86_AMD_PLATFORM_DEVICE=y
CONFIG_IOSF_MBI=y
# CONFIG_IOSF_MBI_DEBUG is not set
CONFIG_X86_SUPPORTS_MEMORY_FAILURE=y
# CONFIG_SCHED_OMIT_FRAME_POINTER is not set
CONFIG_HYPERVISOR_GUEST=y
CONFIG_PARAVIRT=y
# CONFIG_PARAVIRT_DEBUG is not set
CONFIG_PARAVIRT_SPINLOCKS=y
CONFIG_X86_HV_CALLBACK_VECTOR=y
CONFIG_XEN=y
# CONFIG_XEN_PV is not set
CONFIG_XEN_PVHVM=y
CONFIG_XEN_PVHVM_SMP=y
CONFIG_XEN_SAVE_RESTORE=y
# CONFIG_XEN_DEBUG_FS is not set
# CONFIG_XEN_PVH is not set
CONFIG_KVM_GUEST=y
CONFIG_ARCH_CPUIDLE_HALTPOLL=y
# CONFIG_PVH is not set
CONFIG_PARAVIRT_TIME_ACCOUNTING=y
CONFIG_PARAVIRT_CLOCK=y
# CONFIG_JAILHOUSE_GUEST is not set
# CONFIG_ACRN_GUEST is not set
# CONFIG_MK8 is not set
# CONFIG_MPSC is not set
# CONFIG_MCORE2 is not set
# CONFIG_MATOM is not set
CONFIG_GENERIC_CPU=y
CONFIG_X86_INTERNODE_CACHE_SHIFT=6
CONFIG_X86_L1_CACHE_SHIFT=6
CONFIG_X86_TSC=y
CONFIG_X86_CMPXCHG64=y
CONFIG_X86_CMOV=y
CONFIG_X86_MINIMUM_CPU_FAMILY=64
CONFIG_X86_DEBUGCTLMSR=y
CONFIG_IA32_FEAT_CTL=y
CONFIG_X86_VMX_FEATURE_NAMES=y
CONFIG_CPU_SUP_INTEL=y
CONFIG_CPU_SUP_AMD=y
CONFIG_CPU_SUP_HYGON=y
CONFIG_CPU_SUP_CENTAUR=y
CONFIG_CPU_SUP_ZHAOXIN=y
CONFIG_HPET_TIMER=y
CONFIG_HPET_EMULATE_RTC=y
CONFIG_DMI=y
# CONFIG_GART_IOMMU is not set
CONFIG_MAXSMP=y
CONFIG_NR_CPUS_RANGE_BEGIN=8192
CONFIG_NR_CPUS_RANGE_END=8192
CONFIG_NR_CPUS_DEFAULT=8192
CONFIG_NR_CPUS=8192
CONFIG_SCHED_SMT=y
CONFIG_SCHED_MC=y
CONFIG_SCHED_MC_PRIO=y
CONFIG_X86_LOCAL_APIC=y
CONFIG_X86_IO_APIC=y
CONFIG_X86_REROUTE_FOR_BROKEN_BOOT_IRQS=y
CONFIG_X86_MCE=y
CONFIG_X86_MCELOG_LEGACY=y
CONFIG_X86_MCE_INTEL=y
CONFIG_X86_MCE_AMD=y
CONFIG_X86_MCE_THRESHOLD=y
CONFIG_X86_MCE_INJECT=m
CONFIG_X86_THERMAL_VECTOR=y

#
# Performance monitoring
#
CONFIG_PERF_EVENTS_INTEL_UNCORE=m
CONFIG_PERF_EVENTS_INTEL_RAPL=m
CONFIG_PERF_EVENTS_INTEL_CSTATE=m
CONFIG_PERF_EVENTS_AMD_POWER=m
# end of Performance monitoring

CONFIG_X86_16BIT=y
CONFIG_X86_ESPFIX64=y
CONFIG_X86_VSYSCALL_EMULATION=y
CONFIG_X86_IOPL_IOPERM=y
CONFIG_I8K=m
CONFIG_MICROCODE=y
CONFIG_MICROCODE_INTEL=y
CONFIG_MICROCODE_AMD=y
CONFIG_MICROCODE_OLD_INTERFACE=y
CONFIG_X86_MSR=y
CONFIG_X86_CPUID=y
CONFIG_X86_5LEVEL=y
CONFIG_X86_DIRECT_GBPAGES=y
# CONFIG_X86_CPA_STATISTICS is not set
CONFIG_AMD_MEM_ENCRYPT=y
# CONFIG_AMD_MEM_ENCRYPT_ACTIVE_BY_DEFAULT is not set
CONFIG_NUMA=y
CONFIG_AMD_NUMA=y
CONFIG_X86_64_ACPI_NUMA=y
CONFIG_NUMA_EMU=y
CONFIG_NODES_SHIFT=10
CONFIG_ARCH_SPARSEMEM_ENABLE=y
CONFIG_ARCH_SPARSEMEM_DEFAULT=y
CONFIG_ARCH_SELECT_MEMORY_MODEL=y
# CONFIG_ARCH_MEMORY_PROBE is not set
CONFIG_ARCH_PROC_KCORE_TEXT=y
CONFIG_ILLEGAL_POINTER_VALUE=0xdead000000000000
CONFIG_X86_PMEM_LEGACY_DEVICE=y
CONFIG_X86_PMEM_LEGACY=m
CONFIG_X86_CHECK_BIOS_CORRUPTION=y
# CONFIG_X86_BOOTPARAM_MEMORY_CORRUPTION_CHECK is not set
CONFIG_X86_RESERVE_LOW=64
CONFIG_MTRR=y
CONFIG_MTRR_SANITIZER=y
CONFIG_MTRR_SANITIZER_ENABLE_DEFAULT=1
CONFIG_MTRR_SANITIZER_SPARE_REG_NR_DEFAULT=1
CONFIG_X86_PAT=y
CONFIG_ARCH_USES_PG_UNCACHED=y
CONFIG_ARCH_RANDOM=y
CONFIG_X86_SMAP=y
CONFIG_X86_UMIP=y
CONFIG_X86_INTEL_MEMORY_PROTECTION_KEYS=y
CONFIG_X86_INTEL_TSX_MODE_OFF=y
# CONFIG_X86_INTEL_TSX_MODE_ON is not set
# CONFIG_X86_INTEL_TSX_MODE_AUTO is not set
CONFIG_EFI=y
CONFIG_EFI_STUB=y
CONFIG_EFI_MIXED=y
# CONFIG_HZ_100 is not set
# CONFIG_HZ_250 is not set
# CONFIG_HZ_300 is not set
CONFIG_HZ_1000=y
CONFIG_HZ=1000
CONFIG_SCHED_HRTICK=y
CONFIG_KEXEC=y
CONFIG_KEXEC_FILE=y
CONFIG_ARCH_HAS_KEXEC_PURGATORY=y
# CONFIG_KEXEC_SIG is not set
CONFIG_CRASH_DUMP=y
CONFIG_KEXEC_JUMP=y
CONFIG_PHYSICAL_START=0x1000000
CONFIG_RELOCATABLE=y
CONFIG_RANDOMIZE_BASE=y
CONFIG_X86_NEED_RELOCS=y
CONFIG_PHYSICAL_ALIGN=0x200000
CONFIG_DYNAMIC_MEMORY_LAYOUT=y
CONFIG_RANDOMIZE_MEMORY=y
CONFIG_RANDOMIZE_MEMORY_PHYSICAL_PADDING=0xa
CONFIG_HOTPLUG_CPU=y
CONFIG_BOOTPARAM_HOTPLUG_CPU0=y
# CONFIG_DEBUG_HOTPLUG_CPU0 is not set
# CONFIG_COMPAT_VDSO is not set
CONFIG_LEGACY_VSYSCALL_EMULATE=y
# CONFIG_LEGACY_VSYSCALL_XONLY is not set
# CONFIG_LEGACY_VSYSCALL_NONE is not set
# CONFIG_CMDLINE_BOOL is not set
CONFIG_MODIFY_LDT_SYSCALL=y
CONFIG_HAVE_LIVEPATCH=y
CONFIG_LIVEPATCH=y
# end of Processor type and features

CONFIG_ARCH_HAS_ADD_PAGES=y
CONFIG_ARCH_ENABLE_MEMORY_HOTPLUG=y
CONFIG_ARCH_ENABLE_MEMORY_HOTREMOVE=y
CONFIG_USE_PERCPU_NUMA_NODE_ID=y
CONFIG_ARCH_ENABLE_SPLIT_PMD_PTLOCK=y
CONFIG_ARCH_ENABLE_HUGEPAGE_MIGRATION=y
CONFIG_ARCH_ENABLE_THP_MIGRATION=y

#
# Power management and ACPI options
#
CONFIG_ARCH_HIBERNATION_HEADER=y
CONFIG_SUSPEND=y
CONFIG_SUSPEND_FREEZER=y
CONFIG_HIBERNATE_CALLBACKS=y
CONFIG_HIBERNATION=y
CONFIG_HIBERNATION_SNAPSHOT_DEV=y
CONFIG_PM_STD_PARTITION=""
CONFIG_PM_SLEEP=y
CONFIG_PM_SLEEP_SMP=y
# CONFIG_PM_AUTOSLEEP is not set
# CONFIG_PM_WAKELOCKS is not set
CONFIG_PM=y
CONFIG_PM_DEBUG=y
# CONFIG_PM_ADVANCED_DEBUG is not set
# CONFIG_PM_TEST_SUSPEND is not set
CONFIG_PM_SLEEP_DEBUG=y
# CONFIG_PM_TRACE_RTC is not set
CONFIG_PM_CLK=y
# CONFIG_WQ_POWER_EFFICIENT_DEFAULT is not set
# CONFIG_ENERGY_MODEL is not set
CONFIG_ARCH_SUPPORTS_ACPI=y
CONFIG_ACPI=y
CONFIG_ACPI_LEGACY_TABLES_LOOKUP=y
CONFIG_ARCH_MIGHT_HAVE_ACPI_PDC=y
CONFIG_ACPI_SYSTEM_POWER_STATES_SUPPORT=y
# CONFIG_ACPI_DEBUGGER is not set
CONFIG_ACPI_SPCR_TABLE=y
CONFIG_ACPI_LPIT=y
CONFIG_ACPI_SLEEP=y
CONFIG_ACPI_REV_OVERRIDE_POSSIBLE=y
CONFIG_ACPI_EC_DEBUGFS=m
CONFIG_ACPI_AC=y
CONFIG_ACPI_BATTERY=y
CONFIG_ACPI_BUTTON=y
CONFIG_ACPI_VIDEO=m
CONFIG_ACPI_FAN=y
CONFIG_ACPI_TAD=m
CONFIG_ACPI_DOCK=y
CONFIG_ACPI_CPU_FREQ_PSS=y
CONFIG_ACPI_PROCESSOR_CSTATE=y
CONFIG_ACPI_PROCESSOR_IDLE=y
CONFIG_ACPI_CPPC_LIB=y
CONFIG_ACPI_PROCESSOR=y
CONFIG_ACPI_IPMI=m
CONFIG_ACPI_HOTPLUG_CPU=y
CONFIG_ACPI_PROCESSOR_AGGREGATOR=m
CONFIG_ACPI_THERMAL=y
CONFIG_ARCH_HAS_ACPI_TABLE_UPGRADE=y
CONFIG_ACPI_TABLE_UPGRADE=y
# CONFIG_ACPI_DEBUG is not set
CONFIG_ACPI_PCI_SLOT=y
CONFIG_ACPI_CONTAINER=y
CONFIG_ACPI_HOTPLUG_MEMORY=y
CONFIG_ACPI_HOTPLUG_IOAPIC=y
CONFIG_ACPI_SBS=m
CONFIG_ACPI_HED=y
# CONFIG_ACPI_CUSTOM_METHOD is not set
CONFIG_ACPI_BGRT=y
CONFIG_ACPI_NFIT=m
# CONFIG_NFIT_SECURITY_DEBUG is not set
CONFIG_ACPI_NUMA=y
# CONFIG_ACPI_HMAT is not set
CONFIG_HAVE_ACPI_APEI=y
CONFIG_HAVE_ACPI_APEI_NMI=y
CONFIG_ACPI_APEI=y
CONFIG_ACPI_APEI_GHES=y
CONFIG_ACPI_APEI_PCIEAER=y
CONFIG_ACPI_APEI_MEMORY_FAILURE=y
CONFIG_ACPI_APEI_EINJ=m
CONFIG_ACPI_APEI_ERST_DEBUG=y
# CONFIG_ACPI_DPTF is not set
CONFIG_ACPI_WATCHDOG=y
CONFIG_ACPI_EXTLOG=m
CONFIG_ACPI_ADXL=y
# CONFIG_ACPI_CONFIGFS is not set
CONFIG_PMIC_OPREGION=y
CONFIG_X86_PM_TIMER=y
CONFIG_SFI=y

#
# CPU Frequency scaling
#
CONFIG_CPU_FREQ=y
CONFIG_CPU_FREQ_GOV_ATTR_SET=y
CONFIG_CPU_FREQ_GOV_COMMON=y
CONFIG_CPU_FREQ_STAT=y
CONFIG_CPU_FREQ_DEFAULT_GOV_PERFORMANCE=y
# CONFIG_CPU_FREQ_DEFAULT_GOV_POWERSAVE is not set
# CONFIG_CPU_FREQ_DEFAULT_GOV_USERSPACE is not set
# CONFIG_CPU_FREQ_DEFAULT_GOV_SCHEDUTIL is not set
CONFIG_CPU_FREQ_GOV_PERFORMANCE=y
CONFIG_CPU_FREQ_GOV_POWERSAVE=y
CONFIG_CPU_FREQ_GOV_USERSPACE=y
CONFIG_CPU_FREQ_GOV_ONDEMAND=y
CONFIG_CPU_FREQ_GOV_CONSERVATIVE=y
CONFIG_CPU_FREQ_GOV_SCHEDUTIL=y

#
# CPU frequency scaling drivers
#
CONFIG_X86_INTEL_PSTATE=y
# CONFIG_X86_PCC_CPUFREQ is not set
CONFIG_X86_ACPI_CPUFREQ=m
CONFIG_X86_ACPI_CPUFREQ_CPB=y
CONFIG_X86_POWERNOW_K8=m
CONFIG_X86_AMD_FREQ_SENSITIVITY=m
# CONFIG_X86_SPEEDSTEP_CENTRINO is not set
CONFIG_X86_P4_CLOCKMOD=m

#
# shared options
#
CONFIG_X86_SPEEDSTEP_LIB=m
# end of CPU Frequency scaling

#
# CPU Idle
#
CONFIG_CPU_IDLE=y
# CONFIG_CPU_IDLE_GOV_LADDER is not set
CONFIG_CPU_IDLE_GOV_MENU=y
# CONFIG_CPU_IDLE_GOV_TEO is not set
# CONFIG_CPU_IDLE_GOV_HALTPOLL is not set
CONFIG_HALTPOLL_CPUIDLE=y
# end of CPU Idle

CONFIG_INTEL_IDLE=y
# end of Power management and ACPI options

#
# Bus options (PCI etc.)
#
CONFIG_PCI_DIRECT=y
CONFIG_PCI_MMCONFIG=y
CONFIG_PCI_XEN=y
CONFIG_MMCONF_FAM10H=y
CONFIG_ISA_DMA_API=y
CONFIG_AMD_NB=y
# CONFIG_X86_SYSFB is not set
# end of Bus options (PCI etc.)

#
# Binary Emulations
#
CONFIG_IA32_EMULATION=y
# CONFIG_X86_X32 is not set
CONFIG_COMPAT_32=y
CONFIG_COMPAT=y
CONFIG_COMPAT_FOR_U64_ALIGNMENT=y
CONFIG_SYSVIPC_COMPAT=y
# end of Binary Emulations

#
# Firmware Drivers
#
CONFIG_EDD=m
# CONFIG_EDD_OFF is not set
CONFIG_FIRMWARE_MEMMAP=y
CONFIG_DMIID=y
CONFIG_DMI_SYSFS=y
CONFIG_DMI_SCAN_MACHINE_NON_EFI_FALLBACK=y
# CONFIG_ISCSI_IBFT is not set
CONFIG_FW_CFG_SYSFS=y
# CONFIG_FW_CFG_SYSFS_CMDLINE is not set
# CONFIG_GOOGLE_FIRMWARE is not set

#
# EFI (Extensible Firmware Interface) Support
#
CONFIG_EFI_VARS=y
CONFIG_EFI_ESRT=y
CONFIG_EFI_VARS_PSTORE=y
CONFIG_EFI_VARS_PSTORE_DEFAULT_DISABLE=y
CONFIG_EFI_RUNTIME_MAP=y
# CONFIG_EFI_FAKE_MEMMAP is not set
CONFIG_EFI_RUNTIME_WRAPPERS=y
CONFIG_EFI_GENERIC_STUB_INITRD_CMDLINE_LOADER=y
# CONFIG_EFI_BOOTLOADER_CONTROL is not set
# CONFIG_EFI_CAPSULE_LOADER is not set
# CONFIG_EFI_TEST is not set
CONFIG_APPLE_PROPERTIES=y
# CONFIG_RESET_ATTACK_MITIGATION is not set
# CONFIG_EFI_RCI2_TABLE is not set
# CONFIG_EFI_DISABLE_PCI_DMA is not set
# end of EFI (Extensible Firmware Interface) Support

CONFIG_UEFI_CPER=y
CONFIG_UEFI_CPER_X86=y
CONFIG_EFI_DEV_PATH_PARSER=y
CONFIG_EFI_EARLYCON=y
CONFIG_EFI_CUSTOM_SSDT_OVERLAYS=y

#
# Tegra firmware driver
#
# end of Tegra firmware driver
# end of Firmware Drivers

CONFIG_HAVE_KVM=y
CONFIG_HAVE_KVM_IRQCHIP=y
CONFIG_HAVE_KVM_IRQFD=y
CONFIG_HAVE_KVM_IRQ_ROUTING=y
CONFIG_HAVE_KVM_EVENTFD=y
CONFIG_KVM_MMIO=y
CONFIG_KVM_ASYNC_PF=y
CONFIG_HAVE_KVM_MSI=y
CONFIG_HAVE_KVM_CPU_RELAX_INTERCEPT=y
CONFIG_KVM_VFIO=y
CONFIG_KVM_GENERIC_DIRTYLOG_READ_PROTECT=y
CONFIG_KVM_COMPAT=y
CONFIG_HAVE_KVM_IRQ_BYPASS=y
CONFIG_HAVE_KVM_NO_POLL=y
CONFIG_KVM_XFER_TO_GUEST_WORK=y
CONFIG_VIRTUALIZATION=y
CONFIG_KVM=m
CONFIG_KVM_INTEL=m
# CONFIG_KVM_AMD is not set
CONFIG_KVM_MMU_AUDIT=y
CONFIG_AS_AVX512=y
CONFIG_AS_SHA1_NI=y
CONFIG_AS_SHA256_NI=y
CONFIG_AS_TPAUSE=y

#
# General architecture-dependent options
#
CONFIG_CRASH_CORE=y
CONFIG_KEXEC_CORE=y
CONFIG_HOTPLUG_SMT=y
CONFIG_GENERIC_ENTRY=y
CONFIG_OPROFILE=m
CONFIG_OPROFILE_EVENT_MULTIPLEX=y
CONFIG_HAVE_OPROFILE=y
CONFIG_OPROFILE_NMI_TIMER=y
CONFIG_KPROBES=y
CONFIG_JUMP_LABEL=y
# CONFIG_STATIC_KEYS_SELFTEST is not set
# CONFIG_STATIC_CALL_SELFTEST is not set
CONFIG_OPTPROBES=y
CONFIG_KPROBES_ON_FTRACE=y
CONFIG_UPROBES=y
CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS=y
CONFIG_ARCH_USE_BUILTIN_BSWAP=y
CONFIG_KRETPROBES=y
CONFIG_USER_RETURN_NOTIFIER=y
CONFIG_HAVE_IOREMAP_PROT=y
CONFIG_HAVE_KPROBES=y
CONFIG_HAVE_KRETPROBES=y
CONFIG_HAVE_OPTPROBES=y
CONFIG_HAVE_KPROBES_ON_FTRACE=y
CONFIG_HAVE_FUNCTION_ERROR_INJECTION=y
CONFIG_HAVE_NMI=y
CONFIG_HAVE_ARCH_TRACEHOOK=y
CONFIG_HAVE_DMA_CONTIGUOUS=y
CONFIG_GENERIC_SMP_IDLE_THREAD=y
CONFIG_ARCH_HAS_FORTIFY_SOURCE=y
CONFIG_ARCH_HAS_SET_MEMORY=y
CONFIG_ARCH_HAS_SET_DIRECT_MAP=y
CONFIG_HAVE_ARCH_THREAD_STRUCT_WHITELIST=y
CONFIG_ARCH_WANTS_DYNAMIC_TASK_STRUCT=y
CONFIG_HAVE_ASM_MODVERSIONS=y
CONFIG_HAVE_REGS_AND_STACK_ACCESS_API=y
CONFIG_HAVE_RSEQ=y
CONFIG_HAVE_FUNCTION_ARG_ACCESS_API=y
CONFIG_HAVE_HW_BREAKPOINT=y
CONFIG_HAVE_MIXED_BREAKPOINTS_REGS=y
CONFIG_HAVE_USER_RETURN_NOTIFIER=y
CONFIG_HAVE_PERF_EVENTS_NMI=y
CONFIG_HAVE_HARDLOCKUP_DETECTOR_PERF=y
CONFIG_HAVE_PERF_REGS=y
CONFIG_HAVE_PERF_USER_STACK_DUMP=y
CONFIG_HAVE_ARCH_JUMP_LABEL=y
CONFIG_HAVE_ARCH_JUMP_LABEL_RELATIVE=y
CONFIG_MMU_GATHER_TABLE_FREE=y
CONFIG_MMU_GATHER_RCU_TABLE_FREE=y
CONFIG_ARCH_HAVE_NMI_SAFE_CMPXCHG=y
CONFIG_HAVE_ALIGNED_STRUCT_PAGE=y
CONFIG_HAVE_CMPXCHG_LOCAL=y
CONFIG_HAVE_CMPXCHG_DOUBLE=y
CONFIG_ARCH_WANT_COMPAT_IPC_PARSE_VERSION=y
CONFIG_ARCH_WANT_OLD_COMPAT_IPC=y
CONFIG_HAVE_ARCH_SECCOMP=y
CONFIG_HAVE_ARCH_SECCOMP_FILTER=y
CONFIG_SECCOMP=y
CONFIG_SECCOMP_FILTER=y
CONFIG_HAVE_ARCH_STACKLEAK=y
CONFIG_HAVE_STACKPROTECTOR=y
CONFIG_STACKPROTECTOR=y
CONFIG_STACKPROTECTOR_STRONG=y
CONFIG_HAVE_ARCH_WITHIN_STACK_FRAMES=y
CONFIG_HAVE_CONTEXT_TRACKING=y
CONFIG_HAVE_VIRT_CPU_ACCOUNTING_GEN=y
CONFIG_HAVE_IRQ_TIME_ACCOUNTING=y
CONFIG_HAVE_MOVE_PMD=y
CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE=y
CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD=y
CONFIG_HAVE_ARCH_HUGE_VMAP=y
CONFIG_ARCH_WANT_HUGE_PMD_SHARE=y
CONFIG_HAVE_ARCH_SOFT_DIRTY=y
CONFIG_HAVE_MOD_ARCH_SPECIFIC=y
CONFIG_MODULES_USE_ELF_RELA=y
CONFIG_ARCH_HAS_ELF_RANDOMIZE=y
CONFIG_HAVE_ARCH_MMAP_RND_BITS=y
CONFIG_HAVE_EXIT_THREAD=y
CONFIG_ARCH_MMAP_RND_BITS=28
CONFIG_HAVE_ARCH_MMAP_RND_COMPAT_BITS=y
CONFIG_ARCH_MMAP_RND_COMPAT_BITS=8
CONFIG_HAVE_ARCH_COMPAT_MMAP_BASES=y
CONFIG_HAVE_STACK_VALIDATION=y
CONFIG_HAVE_RELIABLE_STACKTRACE=y
CONFIG_OLD_SIGSUSPEND3=y
CONFIG_COMPAT_OLD_SIGACTION=y
CONFIG_COMPAT_32BIT_TIME=y
CONFIG_HAVE_ARCH_VMAP_STACK=y
CONFIG_VMAP_STACK=y
CONFIG_ARCH_HAS_STRICT_KERNEL_RWX=y
CONFIG_STRICT_KERNEL_RWX=y
CONFIG_ARCH_HAS_STRICT_MODULE_RWX=y
CONFIG_STRICT_MODULE_RWX=y
CONFIG_HAVE_ARCH_PREL32_RELOCATIONS=y
CONFIG_ARCH_USE_MEMREMAP_PROT=y
# CONFIG_LOCK_EVENT_COUNTS is not set
CONFIG_ARCH_HAS_MEM_ENCRYPT=y
CONFIG_HAVE_STATIC_CALL=y
CONFIG_HAVE_STATIC_CALL_INLINE=y
CONFIG_ARCH_WANT_LD_ORPHAN_WARN=y

#
# GCOV-based kernel profiling
#
# CONFIG_GCOV_KERNEL is not set
CONFIG_ARCH_HAS_GCOV_PROFILE_ALL=y
# end of GCOV-based kernel profiling

CONFIG_HAVE_GCC_PLUGINS=y
# end of General architecture-dependent options

CONFIG_RT_MUTEXES=y
CONFIG_BASE_SMALL=0
CONFIG_MODULE_SIG_FORMAT=y
CONFIG_MODULES=y
CONFIG_MODULE_FORCE_LOAD=y
CONFIG_MODULE_UNLOAD=y
# CONFIG_MODULE_FORCE_UNLOAD is not set
# CONFIG_MODVERSIONS is not set
# CONFIG_MODULE_SRCVERSION_ALL is not set
CONFIG_MODULE_SIG=y
# CONFIG_MODULE_SIG_FORCE is not set
CONFIG_MODULE_SIG_ALL=y
# CONFIG_MODULE_SIG_SHA1 is not set
# CONFIG_MODULE_SIG_SHA224 is not set
CONFIG_MODULE_SIG_SHA256=y
# CONFIG_MODULE_SIG_SHA384 is not set
# CONFIG_MODULE_SIG_SHA512 is not set
CONFIG_MODULE_SIG_HASH="sha256"
# CONFIG_MODULE_COMPRESS is not set
# CONFIG_MODULE_ALLOW_MISSING_NAMESPACE_IMPORTS is not set
# CONFIG_UNUSED_SYMBOLS is not set
# CONFIG_TRIM_UNUSED_KSYMS is not set
CONFIG_MODULES_TREE_LOOKUP=y
CONFIG_BLOCK=y
CONFIG_BLK_SCSI_REQUEST=y
CONFIG_BLK_CGROUP_RWSTAT=y
CONFIG_BLK_DEV_BSG=y
CONFIG_BLK_DEV_BSGLIB=y
CONFIG_BLK_DEV_INTEGRITY=y
CONFIG_BLK_DEV_INTEGRITY_T10=m
CONFIG_BLK_DEV_ZONED=y
CONFIG_BLK_DEV_THROTTLING=y
# CONFIG_BLK_DEV_THROTTLING_LOW is not set
# CONFIG_BLK_CMDLINE_PARSER is not set
CONFIG_BLK_WBT=y
# CONFIG_BLK_CGROUP_IOLATENCY is not set
# CONFIG_BLK_CGROUP_IOCOST is not set
CONFIG_BLK_WBT_MQ=y
CONFIG_BLK_DEBUG_FS=y
CONFIG_BLK_DEBUG_FS_ZONED=y
# CONFIG_BLK_SED_OPAL is not set
# CONFIG_BLK_INLINE_ENCRYPTION is not set

#
# Partition Types
#
CONFIG_PARTITION_ADVANCED=y
# CONFIG_ACORN_PARTITION is not set
# CONFIG_AIX_PARTITION is not set
CONFIG_OSF_PARTITION=y
CONFIG_AMIGA_PARTITION=y
# CONFIG_ATARI_PARTITION is not set
CONFIG_MAC_PARTITION=y
CONFIG_MSDOS_PARTITION=y
CONFIG_BSD_DISKLABEL=y
CONFIG_MINIX_SUBPARTITION=y
CONFIG_SOLARIS_X86_PARTITION=y
CONFIG_UNIXWARE_DISKLABEL=y
# CONFIG_LDM_PARTITION is not set
CONFIG_SGI_PARTITION=y
# CONFIG_ULTRIX_PARTITION is not set
CONFIG_SUN_PARTITION=y
CONFIG_KARMA_PARTITION=y
CONFIG_EFI_PARTITION=y
# CONFIG_SYSV68_PARTITION is not set
# CONFIG_CMDLINE_PARTITION is not set
# end of Partition Types

CONFIG_BLOCK_COMPAT=y
CONFIG_BLK_MQ_PCI=y
CONFIG_BLK_MQ_VIRTIO=y
CONFIG_BLK_MQ_RDMA=y
CONFIG_BLK_PM=y

#
# IO Schedulers
#
CONFIG_MQ_IOSCHED_DEADLINE=y
CONFIG_MQ_IOSCHED_KYBER=y
CONFIG_IOSCHED_BFQ=y
CONFIG_BFQ_GROUP_IOSCHED=y
# CONFIG_BFQ_CGROUP_DEBUG is not set
# end of IO Schedulers

CONFIG_PREEMPT_NOTIFIERS=y
CONFIG_PADATA=y
CONFIG_ASN1=y
CONFIG_INLINE_SPIN_UNLOCK_IRQ=y
CONFIG_INLINE_READ_UNLOCK=y
CONFIG_INLINE_READ_UNLOCK_IRQ=y
CONFIG_INLINE_WRITE_UNLOCK=y
CONFIG_INLINE_WRITE_UNLOCK_IRQ=y
CONFIG_ARCH_SUPPORTS_ATOMIC_RMW=y
CONFIG_MUTEX_SPIN_ON_OWNER=y
CONFIG_RWSEM_SPIN_ON_OWNER=y
CONFIG_LOCK_SPIN_ON_OWNER=y
CONFIG_ARCH_USE_QUEUED_SPINLOCKS=y
CONFIG_QUEUED_SPINLOCKS=y
CONFIG_ARCH_USE_QUEUED_RWLOCKS=y
CONFIG_QUEUED_RWLOCKS=y
CONFIG_ARCH_HAS_NON_OVERLAPPING_ADDRESS_SPACE=y
CONFIG_ARCH_HAS_SYNC_CORE_BEFORE_USERMODE=y
CONFIG_ARCH_HAS_SYSCALL_WRAPPER=y
CONFIG_FREEZER=y

#
# Executable file formats
#
CONFIG_BINFMT_ELF=y
CONFIG_COMPAT_BINFMT_ELF=y
CONFIG_ELFCORE=y
CONFIG_CORE_DUMP_DEFAULT_ELF_HEADERS=y
CONFIG_BINFMT_SCRIPT=y
CONFIG_BINFMT_MISC=m
CONFIG_COREDUMP=y
# end of Executable file formats

#
# Memory Management options
#
CONFIG_SELECT_MEMORY_MODEL=y
CONFIG_SPARSEMEM_MANUAL=y
CONFIG_SPARSEMEM=y
CONFIG_NEED_MULTIPLE_NODES=y
CONFIG_SPARSEMEM_EXTREME=y
CONFIG_SPARSEMEM_VMEMMAP_ENABLE=y
CONFIG_SPARSEMEM_VMEMMAP=y
CONFIG_HAVE_FAST_GUP=y
CONFIG_NUMA_KEEP_MEMINFO=y
CONFIG_MEMORY_ISOLATION=y
CONFIG_HAVE_BOOTMEM_INFO_NODE=y
CONFIG_MEMORY_HOTPLUG=y
CONFIG_MEMORY_HOTPLUG_SPARSE=y
# CONFIG_MEMORY_HOTPLUG_DEFAULT_ONLINE is not set
CONFIG_MEMORY_HOTREMOVE=y
CONFIG_SPLIT_PTLOCK_CPUS=4
CONFIG_MEMORY_BALLOON=y
CONFIG_BALLOON_COMPACTION=y
CONFIG_COMPACTION=y
CONFIG_PAGE_REPORTING=y
CONFIG_MIGRATION=y
CONFIG_CONTIG_ALLOC=y
CONFIG_PHYS_ADDR_T_64BIT=y
CONFIG_BOUNCE=y
CONFIG_VIRT_TO_BUS=y
CONFIG_MMU_NOTIFIER=y
CONFIG_KSM=y
CONFIG_DEFAULT_MMAP_MIN_ADDR=4096
CONFIG_ARCH_SUPPORTS_MEMORY_FAILURE=y
CONFIG_MEMORY_FAILURE=y
CONFIG_HWPOISON_INJECT=m
CONFIG_TRANSPARENT_HUGEPAGE=y
CONFIG_TRANSPARENT_HUGEPAGE_ALWAYS=y
# CONFIG_TRANSPARENT_HUGEPAGE_MADVISE is not set
CONFIG_ARCH_WANTS_THP_SWAP=y
CONFIG_THP_SWAP=y
CONFIG_CLEANCACHE=y
CONFIG_FRONTSWAP=y
CONFIG_CMA=y
# CONFIG_CMA_DEBUG is not set
# CONFIG_CMA_DEBUGFS is not set
CONFIG_CMA_AREAS=19
CONFIG_ZSWAP=y
# CONFIG_ZSWAP_COMPRESSOR_DEFAULT_DEFLATE is not set
CONFIG_ZSWAP_COMPRESSOR_DEFAULT_LZO=y
# CONFIG_ZSWAP_COMPRESSOR_DEFAULT_842 is not set
# CONFIG_ZSWAP_COMPRESSOR_DEFAULT_LZ4 is not set
# CONFIG_ZSWAP_COMPRESSOR_DEFAULT_LZ4HC is not set
# CONFIG_ZSWAP_COMPRESSOR_DEFAULT_ZSTD is not set
CONFIG_ZSWAP_COMPRESSOR_DEFAULT="lzo"
CONFIG_ZSWAP_ZPOOL_DEFAULT_ZBUD=y
# CONFIG_ZSWAP_ZPOOL_DEFAULT_Z3FOLD is not set
# CONFIG_ZSWAP_ZPOOL_DEFAULT_ZSMALLOC is not set
CONFIG_ZSWAP_ZPOOL_DEFAULT="zbud"
# CONFIG_ZSWAP_DEFAULT_ON is not set
CONFIG_ZPOOL=y
CONFIG_ZBUD=y
# CONFIG_Z3FOLD is not set
CONFIG_ZSMALLOC=y
CONFIG_ZSMALLOC_STAT=y
CONFIG_GENERIC_EARLY_IOREMAP=y
CONFIG_DEFERRED_STRUCT_PAGE_INIT=y
CONFIG_IDLE_PAGE_TRACKING=y
CONFIG_ARCH_HAS_PTE_DEVMAP=y
CONFIG_ZONE_DEVICE=y
CONFIG_DEV_PAGEMAP_OPS=y
CONFIG_HMM_MIRROR=y
CONFIG_DEVICE_PRIVATE=y
CONFIG_VMAP_PFN=y
CONFIG_FRAME_VECTOR=y
CONFIG_ARCH_USES_HIGH_VMA_FLAGS=y
CONFIG_ARCH_HAS_PKEYS=y
# CONFIG_PERCPU_STATS is not set
# CONFIG_GUP_BENCHMARK is not set
# CONFIG_READ_ONLY_THP_FOR_FS is not set
CONFIG_ARCH_HAS_PTE_SPECIAL=y
CONFIG_MAPPING_DIRTY_HELPERS=y
# end of Memory Management options

CONFIG_NET=y
CONFIG_COMPAT_NETLINK_MESSAGES=y
CONFIG_NET_INGRESS=y
CONFIG_NET_EGRESS=y
CONFIG_SKB_EXTENSIONS=y

#
# Networking options
#
CONFIG_PACKET=y
CONFIG_PACKET_DIAG=m
CONFIG_UNIX=y
CONFIG_UNIX_SCM=y
CONFIG_UNIX_DIAG=m
CONFIG_TLS=m
CONFIG_TLS_DEVICE=y
# CONFIG_TLS_TOE is not set
CONFIG_XFRM=y
CONFIG_XFRM_OFFLOAD=y
CONFIG_XFRM_ALGO=y
CONFIG_XFRM_USER=y
# CONFIG_XFRM_USER_COMPAT is not set
# CONFIG_XFRM_INTERFACE is not set
CONFIG_XFRM_SUB_POLICY=y
CONFIG_XFRM_MIGRATE=y
CONFIG_XFRM_STATISTICS=y
CONFIG_XFRM_AH=m
CONFIG_XFRM_ESP=m
CONFIG_XFRM_IPCOMP=m
CONFIG_NET_KEY=m
CONFIG_NET_KEY_MIGRATE=y
# CONFIG_SMC is not set
CONFIG_XDP_SOCKETS=y
# CONFIG_XDP_SOCKETS_DIAG is not set
CONFIG_INET=y
CONFIG_IP_MULTICAST=y
CONFIG_IP_ADVANCED_ROUTER=y
CONFIG_IP_FIB_TRIE_STATS=y
CONFIG_IP_MULTIPLE_TABLES=y
CONFIG_IP_ROUTE_MULTIPATH=y
CONFIG_IP_ROUTE_VERBOSE=y
CONFIG_IP_ROUTE_CLASSID=y
CONFIG_IP_PNP=y
CONFIG_IP_PNP_DHCP=y
# CONFIG_IP_PNP_BOOTP is not set
# CONFIG_IP_PNP_RARP is not set
CONFIG_NET_IPIP=m
CONFIG_NET_IPGRE_DEMUX=m
CONFIG_NET_IP_TUNNEL=m
CONFIG_NET_IPGRE=m
CONFIG_NET_IPGRE_BROADCAST=y
CONFIG_IP_MROUTE_COMMON=y
CONFIG_IP_MROUTE=y
CONFIG_IP_MROUTE_MULTIPLE_TABLES=y
CONFIG_IP_PIMSM_V1=y
CONFIG_IP_PIMSM_V2=y
CONFIG_SYN_COOKIES=y
CONFIG_NET_IPVTI=m
CONFIG_NET_UDP_TUNNEL=m
# CONFIG_NET_FOU is not set
# CONFIG_NET_FOU_IP_TUNNELS is not set
CONFIG_INET_AH=m
CONFIG_INET_ESP=m
CONFIG_INET_ESP_OFFLOAD=m
# CONFIG_INET_ESPINTCP is not set
CONFIG_INET_IPCOMP=m
CONFIG_INET_XFRM_TUNNEL=m
CONFIG_INET_TUNNEL=m
CONFIG_INET_DIAG=m
CONFIG_INET_TCP_DIAG=m
CONFIG_INET_UDP_DIAG=m
CONFIG_INET_RAW_DIAG=m
# CONFIG_INET_DIAG_DESTROY is not set
CONFIG_TCP_CONG_ADVANCED=y
CONFIG_TCP_CONG_BIC=m
CONFIG_TCP_CONG_CUBIC=y
CONFIG_TCP_CONG_WESTWOOD=m
CONFIG_TCP_CONG_HTCP=m
CONFIG_TCP_CONG_HSTCP=m
CONFIG_TCP_CONG_HYBLA=m
CONFIG_TCP_CONG_VEGAS=m
CONFIG_TCP_CONG_NV=m
CONFIG_TCP_CONG_SCALABLE=m
CONFIG_TCP_CONG_LP=m
CONFIG_TCP_CONG_VENO=m
CONFIG_TCP_CONG_YEAH=m
CONFIG_TCP_CONG_ILLINOIS=m
CONFIG_TCP_CONG_DCTCP=m
# CONFIG_TCP_CONG_CDG is not set
CONFIG_TCP_CONG_BBR=m
CONFIG_DEFAULT_CUBIC=y
# CONFIG_DEFAULT_RENO is not set
CONFIG_DEFAULT_TCP_CONG="cubic"
CONFIG_TCP_MD5SIG=y
CONFIG_IPV6=y
CONFIG_IPV6_ROUTER_PREF=y
CONFIG_IPV6_ROUTE_INFO=y
CONFIG_IPV6_OPTIMISTIC_DAD=y
CONFIG_INET6_AH=m
CONFIG_INET6_ESP=m
CONFIG_INET6_ESP_OFFLOAD=m
# CONFIG_INET6_ESPINTCP is not set
CONFIG_INET6_IPCOMP=m
CONFIG_IPV6_MIP6=m
# CONFIG_IPV6_ILA is not set
CONFIG_INET6_XFRM_TUNNEL=m
CONFIG_INET6_TUNNEL=m
CONFIG_IPV6_VTI=m
CONFIG_IPV6_SIT=m
CONFIG_IPV6_SIT_6RD=y
CONFIG_IPV6_NDISC_NODETYPE=y
CONFIG_IPV6_TUNNEL=m
CONFIG_IPV6_GRE=m
CONFIG_IPV6_MULTIPLE_TABLES=y
# CONFIG_IPV6_SUBTREES is not set
CONFIG_IPV6_MROUTE=y
CONFIG_IPV6_MROUTE_MULTIPLE_TABLES=y
CONFIG_IPV6_PIMSM_V2=y
# CONFIG_IPV6_SEG6_LWTUNNEL is not set
# CONFIG_IPV6_SEG6_HMAC is not set
# CONFIG_IPV6_RPL_LWTUNNEL is not set
CONFIG_NETLABEL=y
# CONFIG_MPTCP is not set
CONFIG_NETWORK_SECMARK=y
CONFIG_NET_PTP_CLASSIFY=y
CONFIG_NETWORK_PHY_TIMESTAMPING=y
CONFIG_NETFILTER=y
CONFIG_NETFILTER_ADVANCED=y
CONFIG_BRIDGE_NETFILTER=m

#
# Core Netfilter Configuration
#
CONFIG_NETFILTER_INGRESS=y
CONFIG_NETFILTER_NETLINK=m
CONFIG_NETFILTER_FAMILY_BRIDGE=y
CONFIG_NETFILTER_FAMILY_ARP=y
# CONFIG_NETFILTER_NETLINK_ACCT is not set
CONFIG_NETFILTER_NETLINK_QUEUE=m
CONFIG_NETFILTER_NETLINK_LOG=m
CONFIG_NETFILTER_NETLINK_OSF=m
CONFIG_NF_CONNTRACK=m
CONFIG_NF_LOG_COMMON=m
CONFIG_NF_LOG_NETDEV=m
CONFIG_NETFILTER_CONNCOUNT=m
CONFIG_NF_CONNTRACK_MARK=y
CONFIG_NF_CONNTRACK_SECMARK=y
CONFIG_NF_CONNTRACK_ZONES=y
CONFIG_NF_CONNTRACK_PROCFS=y
CONFIG_NF_CONNTRACK_EVENTS=y
CONFIG_NF_CONNTRACK_TIMEOUT=y
CONFIG_NF_CONNTRACK_TIMESTAMP=y
CONFIG_NF_CONNTRACK_LABELS=y
CONFIG_NF_CT_PROTO_DCCP=y
CONFIG_NF_CT_PROTO_GRE=y
CONFIG_NF_CT_PROTO_SCTP=y
CONFIG_NF_CT_PROTO_UDPLITE=y
CONFIG_NF_CONNTRACK_AMANDA=m
CONFIG_NF_CONNTRACK_FTP=m
CONFIG_NF_CONNTRACK_H323=m
CONFIG_NF_CONNTRACK_IRC=m
CONFIG_NF_CONNTRACK_BROADCAST=m
CONFIG_NF_CONNTRACK_NETBIOS_NS=m
CONFIG_NF_CONNTRACK_SNMP=m
CONFIG_NF_CONNTRACK_PPTP=m
CONFIG_NF_CONNTRACK_SANE=m
CONFIG_NF_CONNTRACK_SIP=m
CONFIG_NF_CONNTRACK_TFTP=m
CONFIG_NF_CT_NETLINK=m
CONFIG_NF_CT_NETLINK_TIMEOUT=m
CONFIG_NF_CT_NETLINK_HELPER=m
CONFIG_NETFILTER_NETLINK_GLUE_CT=y
CONFIG_NF_NAT=m
CONFIG_NF_NAT_AMANDA=m
CONFIG_NF_NAT_FTP=m
CONFIG_NF_NAT_IRC=m
CONFIG_NF_NAT_SIP=m
CONFIG_NF_NAT_TFTP=m
CONFIG_NF_NAT_REDIRECT=y
CONFIG_NF_NAT_MASQUERADE=y
CONFIG_NETFILTER_SYNPROXY=m
CONFIG_NF_TABLES=m
CONFIG_NF_TABLES_INET=y
CONFIG_NF_TABLES_NETDEV=y
CONFIG_NFT_NUMGEN=m
CONFIG_NFT_CT=m
CONFIG_NFT_COUNTER=m
CONFIG_NFT_CONNLIMIT=m
CONFIG_NFT_LOG=m
CONFIG_NFT_LIMIT=m
CONFIG_NFT_MASQ=m
CONFIG_NFT_REDIR=m
CONFIG_NFT_NAT=m
# CONFIG_NFT_TUNNEL is not set
CONFIG_NFT_OBJREF=m
CONFIG_NFT_QUEUE=m
CONFIG_NFT_QUOTA=m
CONFIG_NFT_REJECT=m
CONFIG_NFT_REJECT_INET=m
CONFIG_NFT_COMPAT=m
CONFIG_NFT_HASH=m
CONFIG_NFT_FIB=m
CONFIG_NFT_FIB_INET=m
# CONFIG_NFT_XFRM is not set
CONFIG_NFT_SOCKET=m
# CONFIG_NFT_OSF is not set
# CONFIG_NFT_TPROXY is not set
# CONFIG_NFT_SYNPROXY is not set
CONFIG_NF_DUP_NETDEV=m
CONFIG_NFT_DUP_NETDEV=m
CONFIG_NFT_FWD_NETDEV=m
CONFIG_NFT_FIB_NETDEV=m
# CONFIG_NF_FLOW_TABLE is not set
CONFIG_NETFILTER_XTABLES=y

#
# Xtables combined modules
#
CONFIG_NETFILTER_XT_MARK=m
CONFIG_NETFILTER_XT_CONNMARK=m
CONFIG_NETFILTER_XT_SET=m

#
# Xtables targets
#
CONFIG_NETFILTER_XT_TARGET_AUDIT=m
CONFIG_NETFILTER_XT_TARGET_CHECKSUM=m
CONFIG_NETFILTER_XT_TARGET_CLASSIFY=m
CONFIG_NETFILTER_XT_TARGET_CONNMARK=m
CONFIG_NETFILTER_XT_TARGET_CONNSECMARK=m
CONFIG_NETFILTER_XT_TARGET_CT=m
CONFIG_NETFILTER_XT_TARGET_DSCP=m
CONFIG_NETFILTER_XT_TARGET_HL=m
CONFIG_NETFILTER_XT_TARGET_HMARK=m
CONFIG_NETFILTER_XT_TARGET_IDLETIMER=m
# CONFIG_NETFILTER_XT_TARGET_LED is not set
CONFIG_NETFILTER_XT_TARGET_LOG=m
CONFIG_NETFILTER_XT_TARGET_MARK=m
CONFIG_NETFILTER_XT_NAT=m
CONFIG_NETFILTER_XT_TARGET_NETMAP=m
CONFIG_NETFILTER_XT_TARGET_NFLOG=m
CONFIG_NETFILTER_XT_TARGET_NFQUEUE=m
CONFIG_NETFILTER_XT_TARGET_NOTRACK=m
CONFIG_NETFILTER_XT_TARGET_RATEEST=m
CONFIG_NETFILTER_XT_TARGET_REDIRECT=m
CONFIG_NETFILTER_XT_TARGET_MASQUERADE=m
CONFIG_NETFILTER_XT_TARGET_TEE=m
CONFIG_NETFILTER_XT_TARGET_TPROXY=m
CONFIG_NETFILTER_XT_TARGET_TRACE=m
CONFIG_NETFILTER_XT_TARGET_SECMARK=m
CONFIG_NETFILTER_XT_TARGET_TCPMSS=m
CONFIG_NETFILTER_XT_TARGET_TCPOPTSTRIP=m

#
# Xtables matches
#
CONFIG_NETFILTER_XT_MATCH_ADDRTYPE=m
CONFIG_NETFILTER_XT_MATCH_BPF=m
CONFIG_NETFILTER_XT_MATCH_CGROUP=m
CONFIG_NETFILTER_XT_MATCH_CLUSTER=m
CONFIG_NETFILTER_XT_MATCH_COMMENT=m
CONFIG_NETFILTER_XT_MATCH_CONNBYTES=m
CONFIG_NETFILTER_XT_MATCH_CONNLABEL=m
CONFIG_NETFILTER_XT_MATCH_CONNLIMIT=m
CONFIG_NETFILTER_XT_MATCH_CONNMARK=m
CONFIG_NETFILTER_XT_MATCH_CONNTRACK=m
CONFIG_NETFILTER_XT_MATCH_CPU=m
CONFIG_NETFILTER_XT_MATCH_DCCP=m
CONFIG_NETFILTER_XT_MATCH_DEVGROUP=m
CONFIG_NETFILTER_XT_MATCH_DSCP=m
CONFIG_NETFILTER_XT_MATCH_ECN=m
CONFIG_NETFILTER_XT_MATCH_ESP=m
CONFIG_NETFILTER_XT_MATCH_HASHLIMIT=m
CONFIG_NETFILTER_XT_MATCH_HELPER=m
CONFIG_NETFILTER_XT_MATCH_HL=m
# CONFIG_NETFILTER_XT_MATCH_IPCOMP is not set
CONFIG_NETFILTER_XT_MATCH_IPRANGE=m
CONFIG_NETFILTER_XT_MATCH_IPVS=m
# CONFIG_NETFILTER_XT_MATCH_L2TP is not set
CONFIG_NETFILTER_XT_MATCH_LENGTH=m
CONFIG_NETFILTER_XT_MATCH_LIMIT=m
CONFIG_NETFILTER_XT_MATCH_MAC=m
CONFIG_NETFILTER_XT_MATCH_MARK=m
CONFIG_NETFILTER_XT_MATCH_MULTIPORT=m
# CONFIG_NETFILTER_XT_MATCH_NFACCT is not set
CONFIG_NETFILTER_XT_MATCH_OSF=m
CONFIG_NETFILTER_XT_MATCH_OWNER=m
CONFIG_NETFILTER_XT_MATCH_POLICY=m
CONFIG_NETFILTER_XT_MATCH_PHYSDEV=m
CONFIG_NETFILTER_XT_MATCH_PKTTYPE=m
CONFIG_NETFILTER_XT_MATCH_QUOTA=m
CONFIG_NETFILTER_XT_MATCH_RATEEST=m
CONFIG_NETFILTER_XT_MATCH_REALM=m
CONFIG_NETFILTER_XT_MATCH_RECENT=m
CONFIG_NETFILTER_XT_MATCH_SCTP=m
CONFIG_NETFILTER_XT_MATCH_SOCKET=m
CONFIG_NETFILTER_XT_MATCH_STATE=m
CONFIG_NETFILTER_XT_MATCH_STATISTIC=m
CONFIG_NETFILTER_XT_MATCH_STRING=m
CONFIG_NETFILTER_XT_MATCH_TCPMSS=m
# CONFIG_NETFILTER_XT_MATCH_TIME is not set
# CONFIG_NETFILTER_XT_MATCH_U32 is not set
# end of Core Netfilter Configuration

CONFIG_IP_SET=m
CONFIG_IP_SET_MAX=256
CONFIG_IP_SET_BITMAP_IP=m
CONFIG_IP_SET_BITMAP_IPMAC=m
CONFIG_IP_SET_BITMAP_PORT=m
CONFIG_IP_SET_HASH_IP=m
CONFIG_IP_SET_HASH_IPMARK=m
CONFIG_IP_SET_HASH_IPPORT=m
CONFIG_IP_SET_HASH_IPPORTIP=m
CONFIG_IP_SET_HASH_IPPORTNET=m
CONFIG_IP_SET_HASH_IPMAC=m
CONFIG_IP_SET_HASH_MAC=m
CONFIG_IP_SET_HASH_NETPORTNET=m
CONFIG_IP_SET_HASH_NET=m
CONFIG_IP_SET_HASH_NETNET=m
CONFIG_IP_SET_HASH_NETPORT=m
CONFIG_IP_SET_HASH_NETIFACE=m
CONFIG_IP_SET_LIST_SET=m
CONFIG_IP_VS=m
CONFIG_IP_VS_IPV6=y
# CONFIG_IP_VS_DEBUG is not set
CONFIG_IP_VS_TAB_BITS=12

#
# IPVS transport protocol load balancing support
#
CONFIG_IP_VS_PROTO_TCP=y
CONFIG_IP_VS_PROTO_UDP=y
CONFIG_IP_VS_PROTO_AH_ESP=y
CONFIG_IP_VS_PROTO_ESP=y
CONFIG_IP_VS_PROTO_AH=y
CONFIG_IP_VS_PROTO_SCTP=y

#
# IPVS scheduler
#
CONFIG_IP_VS_RR=m
CONFIG_IP_VS_WRR=m
CONFIG_IP_VS_LC=m
CONFIG_IP_VS_WLC=m
CONFIG_IP_VS_FO=m
CONFIG_IP_VS_OVF=m
CONFIG_IP_VS_LBLC=m
CONFIG_IP_VS_LBLCR=m
CONFIG_IP_VS_DH=m
CONFIG_IP_VS_SH=m
# CONFIG_IP_VS_MH is not set
CONFIG_IP_VS_SED=m
CONFIG_IP_VS_NQ=m

#
# IPVS SH scheduler
#
CONFIG_IP_VS_SH_TAB_BITS=8

#
# IPVS MH scheduler
#
CONFIG_IP_VS_MH_TAB_INDEX=12

#
# IPVS application helper
#
CONFIG_IP_VS_FTP=m
CONFIG_IP_VS_NFCT=y
CONFIG_IP_VS_PE_SIP=m

#
# IP: Netfilter Configuration
#
CONFIG_NF_DEFRAG_IPV4=m
CONFIG_NF_SOCKET_IPV4=m
CONFIG_NF_TPROXY_IPV4=m
CONFIG_NF_TABLES_IPV4=y
CONFIG_NFT_REJECT_IPV4=m
CONFIG_NFT_DUP_IPV4=m
CONFIG_NFT_FIB_IPV4=m
CONFIG_NF_TABLES_ARP=y
CONFIG_NF_DUP_IPV4=m
CONFIG_NF_LOG_ARP=m
CONFIG_NF_LOG_IPV4=m
CONFIG_NF_REJECT_IPV4=m
CONFIG_NF_NAT_SNMP_BASIC=m
CONFIG_NF_NAT_PPTP=m
CONFIG_NF_NAT_H323=m
CONFIG_IP_NF_IPTABLES=m
CONFIG_IP_NF_MATCH_AH=m
CONFIG_IP_NF_MATCH_ECN=m
CONFIG_IP_NF_MATCH_RPFILTER=m
CONFIG_IP_NF_MATCH_TTL=m
CONFIG_IP_NF_FILTER=m
CONFIG_IP_NF_TARGET_REJECT=m
CONFIG_IP_NF_TARGET_SYNPROXY=m
CONFIG_IP_NF_NAT=m
CONFIG_IP_NF_TARGET_MASQUERADE=m
CONFIG_IP_NF_TARGET_NETMAP=m
CONFIG_IP_NF_TARGET_REDIRECT=m
CONFIG_IP_NF_MANGLE=m
# CONFIG_IP_NF_TARGET_CLUSTERIP is not set
CONFIG_IP_NF_TARGET_ECN=m
CONFIG_IP_NF_TARGET_TTL=m
CONFIG_IP_NF_RAW=m
CONFIG_IP_NF_SECURITY=m
CONFIG_IP_NF_ARPTABLES=m
CONFIG_IP_NF_ARPFILTER=m
CONFIG_IP_NF_ARP_MANGLE=m
# end of IP: Netfilter Configuration

#
# IPv6: Netfilter Configuration
#
CONFIG_NF_SOCKET_IPV6=m
CONFIG_NF_TPROXY_IPV6=m
CONFIG_NF_TABLES_IPV6=y
CONFIG_NFT_REJECT_IPV6=m
CONFIG_NFT_DUP_IPV6=m
CONFIG_NFT_FIB_IPV6=m
CONFIG_NF_DUP_IPV6=m
CONFIG_NF_REJECT_IPV6=m
CONFIG_NF_LOG_IPV6=m
CONFIG_IP6_NF_IPTABLES=m
CONFIG_IP6_NF_MATCH_AH=m
CONFIG_IP6_NF_MATCH_EUI64=m
CONFIG_IP6_NF_MATCH_FRAG=m
CONFIG_IP6_NF_MATCH_OPTS=m
CONFIG_IP6_NF_MATCH_HL=m
CONFIG_IP6_NF_MATCH_IPV6HEADER=m
CONFIG_IP6_NF_MATCH_MH=m
CONFIG_IP6_NF_MATCH_RPFILTER=m
CONFIG_IP6_NF_MATCH_RT=m
# CONFIG_IP6_NF_MATCH_SRH is not set
# CONFIG_IP6_NF_TARGET_HL is not set
CONFIG_IP6_NF_FILTER=m
CONFIG_IP6_NF_TARGET_REJECT=m
CONFIG_IP6_NF_TARGET_SYNPROXY=m
CONFIG_IP6_NF_MANGLE=m
CONFIG_IP6_NF_RAW=m
CONFIG_IP6_NF_SECURITY=m
CONFIG_IP6_NF_NAT=m
CONFIG_IP6_NF_TARGET_MASQUERADE=m
CONFIG_IP6_NF_TARGET_NPT=m
# end of IPv6: Netfilter Configuration

CONFIG_NF_DEFRAG_IPV6=m
CONFIG_NF_TABLES_BRIDGE=m
# CONFIG_NFT_BRIDGE_META is not set
CONFIG_NFT_BRIDGE_REJECT=m
CONFIG_NF_LOG_BRIDGE=m
# CONFIG_NF_CONNTRACK_BRIDGE is not set
CONFIG_BRIDGE_NF_EBTABLES=m
CONFIG_BRIDGE_EBT_BROUTE=m
CONFIG_BRIDGE_EBT_T_FILTER=m
CONFIG_BRIDGE_EBT_T_NAT=m
CONFIG_BRIDGE_EBT_802_3=m
CONFIG_BRIDGE_EBT_AMONG=m
CONFIG_BRIDGE_EBT_ARP=m
CONFIG_BRIDGE_EBT_IP=m
CONFIG_BRIDGE_EBT_IP6=m
CONFIG_BRIDGE_EBT_LIMIT=m
CONFIG_BRIDGE_EBT_MARK=m
CONFIG_BRIDGE_EBT_PKTTYPE=m
CONFIG_BRIDGE_EBT_STP=m
CONFIG_BRIDGE_EBT_VLAN=m
CONFIG_BRIDGE_EBT_ARPREPLY=m
CONFIG_BRIDGE_EBT_DNAT=m
CONFIG_BRIDGE_EBT_MARK_T=m
CONFIG_BRIDGE_EBT_REDIRECT=m
CONFIG_BRIDGE_EBT_SNAT=m
CONFIG_BRIDGE_EBT_LOG=m
CONFIG_BRIDGE_EBT_NFLOG=m
# CONFIG_BPFILTER is not set
# CONFIG_IP_DCCP is not set
CONFIG_IP_SCTP=m
# CONFIG_SCTP_DBG_OBJCNT is not set
# CONFIG_SCTP_DEFAULT_COOKIE_HMAC_MD5 is not set
CONFIG_SCTP_DEFAULT_COOKIE_HMAC_SHA1=y
# CONFIG_SCTP_DEFAULT_COOKIE_HMAC_NONE is not set
CONFIG_SCTP_COOKIE_HMAC_MD5=y
CONFIG_SCTP_COOKIE_HMAC_SHA1=y
CONFIG_INET_SCTP_DIAG=m
# CONFIG_RDS is not set
CONFIG_TIPC=m
# CONFIG_TIPC_MEDIA_IB is not set
CONFIG_TIPC_MEDIA_UDP=y
CONFIG_TIPC_CRYPTO=y
CONFIG_TIPC_DIAG=m
CONFIG_ATM=m
CONFIG_ATM_CLIP=m
# CONFIG_ATM_CLIP_NO_ICMP is not set
CONFIG_ATM_LANE=m
# CONFIG_ATM_MPOA is not set
CONFIG_ATM_BR2684=m
# CONFIG_ATM_BR2684_IPFILTER is not set
CONFIG_L2TP=m
CONFIG_L2TP_DEBUGFS=m
CONFIG_L2TP_V3=y
CONFIG_L2TP_IP=m
CONFIG_L2TP_ETH=m
CONFIG_STP=m
CONFIG_GARP=m
CONFIG_MRP=m
CONFIG_BRIDGE=m
CONFIG_BRIDGE_IGMP_SNOOPING=y
CONFIG_BRIDGE_VLAN_FILTERING=y
# CONFIG_BRIDGE_MRP is not set
CONFIG_HAVE_NET_DSA=y
# CONFIG_NET_DSA is not set
CONFIG_VLAN_8021Q=m
CONFIG_VLAN_8021Q_GVRP=y
CONFIG_VLAN_8021Q_MVRP=y
# CONFIG_DECNET is not set
CONFIG_LLC=m
# CONFIG_LLC2 is not set
# CONFIG_ATALK is not set
# CONFIG_X25 is not set
# CONFIG_LAPB is not set
# CONFIG_PHONET is not set
CONFIG_6LOWPAN=m
# CONFIG_6LOWPAN_DEBUGFS is not set
# CONFIG_6LOWPAN_NHC is not set
CONFIG_IEEE802154=m
# CONFIG_IEEE802154_NL802154_EXPERIMENTAL is not set
CONFIG_IEEE802154_SOCKET=m
CONFIG_IEEE802154_6LOWPAN=m
CONFIG_MAC802154=m
CONFIG_NET_SCHED=y

#
# Queueing/Scheduling
#
CONFIG_NET_SCH_CBQ=m
CONFIG_NET_SCH_HTB=m
CONFIG_NET_SCH_HFSC=m
CONFIG_NET_SCH_ATM=m
CONFIG_NET_SCH_PRIO=m
CONFIG_NET_SCH_MULTIQ=m
CONFIG_NET_SCH_RED=m
CONFIG_NET_SCH_SFB=m
CONFIG_NET_SCH_SFQ=m
CONFIG_NET_SCH_TEQL=m
CONFIG_NET_SCH_TBF=m
# CONFIG_NET_SCH_CBS is not set
# CONFIG_NET_SCH_ETF is not set
# CONFIG_NET_SCH_TAPRIO is not set
CONFIG_NET_SCH_GRED=m
CONFIG_NET_SCH_DSMARK=m
CONFIG_NET_SCH_NETEM=m
CONFIG_NET_SCH_DRR=m
CONFIG_NET_SCH_MQPRIO=m
# CONFIG_NET_SCH_SKBPRIO is not set
CONFIG_NET_SCH_CHOKE=m
CONFIG_NET_SCH_QFQ=m
CONFIG_NET_SCH_CODEL=m
CONFIG_NET_SCH_FQ_CODEL=y
# CONFIG_NET_SCH_CAKE is not set
CONFIG_NET_SCH_FQ=m
CONFIG_NET_SCH_HHF=m
CONFIG_NET_SCH_PIE=m
# CONFIG_NET_SCH_FQ_PIE is not set
CONFIG_NET_SCH_INGRESS=m
CONFIG_NET_SCH_PLUG=m
# CONFIG_NET_SCH_ETS is not set
CONFIG_NET_SCH_DEFAULT=y
# CONFIG_DEFAULT_FQ is not set
# CONFIG_DEFAULT_CODEL is not set
CONFIG_DEFAULT_FQ_CODEL=y
# CONFIG_DEFAULT_SFQ is not set
# CONFIG_DEFAULT_PFIFO_FAST is not set
CONFIG_DEFAULT_NET_SCH="fq_codel"

#
# Classification
#
CONFIG_NET_CLS=y
CONFIG_NET_CLS_BASIC=m
CONFIG_NET_CLS_TCINDEX=m
CONFIG_NET_CLS_ROUTE4=m
CONFIG_NET_CLS_FW=m
CONFIG_NET_CLS_U32=m
CONFIG_CLS_U32_PERF=y
CONFIG_CLS_U32_MARK=y
CONFIG_NET_CLS_RSVP=m
CONFIG_NET_CLS_RSVP6=m
CONFIG_NET_CLS_FLOW=m
CONFIG_NET_CLS_CGROUP=y
CONFIG_NET_CLS_BPF=m
CONFIG_NET_CLS_FLOWER=m
CONFIG_NET_CLS_MATCHALL=m
CONFIG_NET_EMATCH=y
CONFIG_NET_EMATCH_STACK=32
CONFIG_NET_EMATCH_CMP=m
CONFIG_NET_EMATCH_NBYTE=m
CONFIG_NET_EMATCH_U32=m
CONFIG_NET_EMATCH_META=m
CONFIG_NET_EMATCH_TEXT=m
# CONFIG_NET_EMATCH_CANID is not set
CONFIG_NET_EMATCH_IPSET=m
# CONFIG_NET_EMATCH_IPT is not set
CONFIG_NET_CLS_ACT=y
CONFIG_NET_ACT_POLICE=m
CONFIG_NET_ACT_GACT=m
CONFIG_GACT_PROB=y
CONFIG_NET_ACT_MIRRED=m
CONFIG_NET_ACT_SAMPLE=m
# CONFIG_NET_ACT_IPT is not set
CONFIG_NET_ACT_NAT=m
CONFIG_NET_ACT_PEDIT=m
CONFIG_NET_ACT_SIMP=m
CONFIG_NET_ACT_SKBEDIT=m
CONFIG_NET_ACT_CSUM=m
# CONFIG_NET_ACT_MPLS is not set
CONFIG_NET_ACT_VLAN=m
CONFIG_NET_ACT_BPF=m
# CONFIG_NET_ACT_CONNMARK is not set
# CONFIG_NET_ACT_CTINFO is not set
CONFIG_NET_ACT_SKBMOD=m
# CONFIG_NET_ACT_IFE is not set
CONFIG_NET_ACT_TUNNEL_KEY=m
# CONFIG_NET_ACT_GATE is not set
# CONFIG_NET_TC_SKB_EXT is not set
CONFIG_NET_SCH_FIFO=y
CONFIG_DCB=y
CONFIG_DNS_RESOLVER=m
# CONFIG_BATMAN_ADV is not set
CONFIG_OPENVSWITCH=m
CONFIG_OPENVSWITCH_GRE=m
CONFIG_VSOCKETS=m
CONFIG_VSOCKETS_DIAG=m
CONFIG_VSOCKETS_LOOPBACK=m
CONFIG_VMWARE_VMCI_VSOCKETS=m
CONFIG_VIRTIO_VSOCKETS=m
CONFIG_VIRTIO_VSOCKETS_COMMON=m
CONFIG_HYPERV_VSOCKETS=m
CONFIG_NETLINK_DIAG=m
CONFIG_MPLS=y
CONFIG_NET_MPLS_GSO=y
CONFIG_MPLS_ROUTING=m
CONFIG_MPLS_IPTUNNEL=m
CONFIG_NET_NSH=y
# CONFIG_HSR is not set
CONFIG_NET_SWITCHDEV=y
CONFIG_NET_L3_MASTER_DEV=y
# CONFIG_QRTR is not set
# CONFIG_NET_NCSI is not set
CONFIG_RPS=y
CONFIG_RFS_ACCEL=y
CONFIG_XPS=y
CONFIG_CGROUP_NET_PRIO=y
CONFIG_CGROUP_NET_CLASSID=y
CONFIG_NET_RX_BUSY_POLL=y
CONFIG_BQL=y
CONFIG_BPF_JIT=y
CONFIG_BPF_STREAM_PARSER=y
CONFIG_NET_FLOW_LIMIT=y

#
# Network testing
#
CONFIG_NET_PKTGEN=m
CONFIG_NET_DROP_MONITOR=y
# end of Network testing
# end of Networking options

# CONFIG_HAMRADIO is not set
CONFIG_CAN=m
CONFIG_CAN_RAW=m
CONFIG_CAN_BCM=m
CONFIG_CAN_GW=m
# CONFIG_CAN_J1939 is not set
# CONFIG_CAN_ISOTP is not set

#
# CAN Device Drivers
#
CONFIG_CAN_VCAN=m
# CONFIG_CAN_VXCAN is not set
CONFIG_CAN_SLCAN=m
CONFIG_CAN_DEV=m
CONFIG_CAN_CALC_BITTIMING=y
# CONFIG_CAN_KVASER_PCIEFD is not set
CONFIG_CAN_C_CAN=m
CONFIG_CAN_C_CAN_PLATFORM=m
CONFIG_CAN_C_CAN_PCI=m
CONFIG_CAN_CC770=m
# CONFIG_CAN_CC770_ISA is not set
CONFIG_CAN_CC770_PLATFORM=m
# CONFIG_CAN_IFI_CANFD is not set
# CONFIG_CAN_M_CAN is not set
# CONFIG_CAN_PEAK_PCIEFD is not set
CONFIG_CAN_SJA1000=m
CONFIG_CAN_EMS_PCI=m
# CONFIG_CAN_F81601 is not set
CONFIG_CAN_KVASER_PCI=m
CONFIG_CAN_PEAK_PCI=m
CONFIG_CAN_PEAK_PCIEC=y
CONFIG_CAN_PLX_PCI=m
# CONFIG_CAN_SJA1000_ISA is not set
CONFIG_CAN_SJA1000_PLATFORM=m
CONFIG_CAN_SOFTING=m

#
# CAN SPI interfaces
#
# CONFIG_CAN_HI311X is not set
# CONFIG_CAN_MCP251X is not set
# CONFIG_CAN_MCP251XFD is not set
# end of CAN SPI interfaces

#
# CAN USB interfaces
#
# CONFIG_CAN_8DEV_USB is not set
# CONFIG_CAN_EMS_USB is not set
# CONFIG_CAN_ESD_USB2 is not set
# CONFIG_CAN_GS_USB is not set
# CONFIG_CAN_KVASER_USB is not set
# CONFIG_CAN_MCBA_USB is not set
# CONFIG_CAN_PEAK_USB is not set
# CONFIG_CAN_UCAN is not set
# end of CAN USB interfaces

# CONFIG_CAN_DEBUG_DEVICES is not set
# end of CAN Device Drivers

CONFIG_BT=m
CONFIG_BT_BREDR=y
CONFIG_BT_RFCOMM=m
CONFIG_BT_RFCOMM_TTY=y
CONFIG_BT_BNEP=m
CONFIG_BT_BNEP_MC_FILTER=y
CONFIG_BT_BNEP_PROTO_FILTER=y
CONFIG_BT_HIDP=m
CONFIG_BT_HS=y
CONFIG_BT_LE=y
# CONFIG_BT_6LOWPAN is not set
# CONFIG_BT_LEDS is not set
# CONFIG_BT_MSFTEXT is not set
CONFIG_BT_DEBUGFS=y
# CONFIG_BT_SELFTEST is not set

#
# Bluetooth device drivers
#
# CONFIG_BT_HCIBTUSB is not set
# CONFIG_BT_HCIBTSDIO is not set
CONFIG_BT_HCIUART=m
CONFIG_BT_HCIUART_H4=y
CONFIG_BT_HCIUART_BCSP=y
CONFIG_BT_HCIUART_ATH3K=y
# CONFIG_BT_HCIUART_INTEL is not set
# CONFIG_BT_HCIUART_AG6XX is not set
# CONFIG_BT_HCIBCM203X is not set
# CONFIG_BT_HCIBPA10X is not set
# CONFIG_BT_HCIBFUSB is not set
CONFIG_BT_HCIVHCI=m
CONFIG_BT_MRVL=m
# CONFIG_BT_MRVL_SDIO is not set
# CONFIG_BT_MTKSDIO is not set
# end of Bluetooth device drivers

# CONFIG_AF_RXRPC is not set
# CONFIG_AF_KCM is not set
CONFIG_STREAM_PARSER=y
CONFIG_FIB_RULES=y
CONFIG_WIRELESS=y
CONFIG_WEXT_CORE=y
CONFIG_WEXT_PROC=y
CONFIG_CFG80211=m
# CONFIG_NL80211_TESTMODE is not set
# CONFIG_CFG80211_DEVELOPER_WARNINGS is not set
CONFIG_CFG80211_REQUIRE_SIGNED_REGDB=y
CONFIG_CFG80211_USE_KERNEL_REGDB_KEYS=y
CONFIG_CFG80211_DEFAULT_PS=y
# CONFIG_CFG80211_DEBUGFS is not set
CONFIG_CFG80211_CRDA_SUPPORT=y
CONFIG_CFG80211_WEXT=y
CONFIG_MAC80211=m
CONFIG_MAC80211_HAS_RC=y
CONFIG_MAC80211_RC_MINSTREL=y
CONFIG_MAC80211_RC_DEFAULT_MINSTREL=y
CONFIG_MAC80211_RC_DEFAULT="minstrel_ht"
CONFIG_MAC80211_MESH=y
CONFIG_MAC80211_LEDS=y
CONFIG_MAC80211_DEBUGFS=y
# CONFIG_MAC80211_MESSAGE_TRACING is not set
# CONFIG_MAC80211_DEBUG_MENU is not set
CONFIG_MAC80211_STA_HASH_MAX_SIZE=0
# CONFIG_WIMAX is not set
CONFIG_RFKILL=m
CONFIG_RFKILL_LEDS=y
CONFIG_RFKILL_INPUT=y
# CONFIG_RFKILL_GPIO is not set
CONFIG_NET_9P=y
CONFIG_NET_9P_VIRTIO=y
# CONFIG_NET_9P_XEN is not set
# CONFIG_NET_9P_RDMA is not set
# CONFIG_NET_9P_DEBUG is not set
# CONFIG_CAIF is not set
CONFIG_CEPH_LIB=m
# CONFIG_CEPH_LIB_PRETTYDEBUG is not set
CONFIG_CEPH_LIB_USE_DNS_RESOLVER=y
# CONFIG_NFC is not set
CONFIG_PSAMPLE=m
# CONFIG_NET_IFE is not set
CONFIG_LWTUNNEL=y
CONFIG_LWTUNNEL_BPF=y
CONFIG_DST_CACHE=y
CONFIG_GRO_CELLS=y
CONFIG_SOCK_VALIDATE_XMIT=y
CONFIG_NET_SOCK_MSG=y
CONFIG_NET_DEVLINK=y
CONFIG_PAGE_POOL=y
CONFIG_FAILOVER=m
CONFIG_ETHTOOL_NETLINK=y
CONFIG_HAVE_EBPF_JIT=y

#
# Device Drivers
#
CONFIG_HAVE_EISA=y
# CONFIG_EISA is not set
CONFIG_HAVE_PCI=y
CONFIG_PCI=y
CONFIG_PCI_DOMAINS=y
CONFIG_PCIEPORTBUS=y
CONFIG_HOTPLUG_PCI_PCIE=y
CONFIG_PCIEAER=y
CONFIG_PCIEAER_INJECT=m
CONFIG_PCIE_ECRC=y
CONFIG_PCIEASPM=y
CONFIG_PCIEASPM_DEFAULT=y
# CONFIG_PCIEASPM_POWERSAVE is not set
# CONFIG_PCIEASPM_POWER_SUPERSAVE is not set
# CONFIG_PCIEASPM_PERFORMANCE is not set
CONFIG_PCIE_PME=y
CONFIG_PCIE_DPC=y
# CONFIG_PCIE_PTM is not set
# CONFIG_PCIE_BW is not set
# CONFIG_PCIE_EDR is not set
CONFIG_PCI_MSI=y
CONFIG_PCI_MSI_IRQ_DOMAIN=y
CONFIG_PCI_QUIRKS=y
# CONFIG_PCI_DEBUG is not set
# CONFIG_PCI_REALLOC_ENABLE_AUTO is not set
CONFIG_PCI_STUB=y
CONFIG_PCI_PF_STUB=m
# CONFIG_XEN_PCIDEV_FRONTEND is not set
CONFIG_PCI_ATS=y
CONFIG_PCI_LOCKLESS_CONFIG=y
CONFIG_PCI_IOV=y
CONFIG_PCI_PRI=y
CONFIG_PCI_PASID=y
# CONFIG_PCI_P2PDMA is not set
CONFIG_PCI_LABEL=y
CONFIG_PCI_HYPERV=m
CONFIG_HOTPLUG_PCI=y
CONFIG_HOTPLUG_PCI_ACPI=y
CONFIG_HOTPLUG_PCI_ACPI_IBM=m
# CONFIG_HOTPLUG_PCI_CPCI is not set
CONFIG_HOTPLUG_PCI_SHPC=y

#
# PCI controller drivers
#
CONFIG_VMD=y
CONFIG_PCI_HYPERV_INTERFACE=m

#
# DesignWare PCI Core Support
#
# CONFIG_PCIE_DW_PLAT_HOST is not set
# CONFIG_PCI_MESON is not set
# end of DesignWare PCI Core Support

#
# Mobiveil PCIe Core Support
#
# end of Mobiveil PCIe Core Support

#
# Cadence PCIe controllers support
#
# end of Cadence PCIe controllers support
# end of PCI controller drivers

#
# PCI Endpoint
#
# CONFIG_PCI_ENDPOINT is not set
# end of PCI Endpoint

#
# PCI switch controller drivers
#
# CONFIG_PCI_SW_SWITCHTEC is not set
# end of PCI switch controller drivers

# CONFIG_PCCARD is not set
# CONFIG_RAPIDIO is not set

#
# Generic Driver Options
#
# CONFIG_UEVENT_HELPER is not set
CONFIG_DEVTMPFS=y
CONFIG_DEVTMPFS_MOUNT=y
CONFIG_STANDALONE=y
CONFIG_PREVENT_FIRMWARE_BUILD=y

#
# Firmware loader
#
CONFIG_FW_LOADER=y
CONFIG_FW_LOADER_PAGED_BUF=y
CONFIG_EXTRA_FIRMWARE=""
CONFIG_FW_LOADER_USER_HELPER=y
# CONFIG_FW_LOADER_USER_HELPER_FALLBACK is not set
# CONFIG_FW_LOADER_COMPRESS is not set
CONFIG_FW_CACHE=y
# end of Firmware loader

CONFIG_ALLOW_DEV_COREDUMP=y
# CONFIG_DEBUG_DRIVER is not set
# CONFIG_DEBUG_DEVRES is not set
# CONFIG_DEBUG_TEST_DRIVER_REMOVE is not set
# CONFIG_PM_QOS_KUNIT_TEST is not set
# CONFIG_TEST_ASYNC_DRIVER_PROBE is not set
CONFIG_KUNIT_DRIVER_PE_TEST=y
CONFIG_SYS_HYPERVISOR=y
CONFIG_GENERIC_CPU_AUTOPROBE=y
CONFIG_GENERIC_CPU_VULNERABILITIES=y
CONFIG_REGMAP=y
CONFIG_REGMAP_I2C=m
CONFIG_REGMAP_SPI=m
CONFIG_DMA_SHARED_BUFFER=y
# CONFIG_DMA_FENCE_TRACE is not set
# end of Generic Driver Options

#
# Bus devices
#
# CONFIG_MHI_BUS is not set
# end of Bus devices

CONFIG_CONNECTOR=y
CONFIG_PROC_EVENTS=y
# CONFIG_GNSS is not set
# CONFIG_MTD is not set
# CONFIG_OF is not set
CONFIG_ARCH_MIGHT_HAVE_PC_PARPORT=y
CONFIG_PARPORT=m
CONFIG_PARPORT_PC=m
CONFIG_PARPORT_SERIAL=m
# CONFIG_PARPORT_PC_FIFO is not set
# CONFIG_PARPORT_PC_SUPERIO is not set
# CONFIG_PARPORT_AX88796 is not set
CONFIG_PARPORT_1284=y
CONFIG_PNP=y
# CONFIG_PNP_DEBUG_MESSAGES is not set

#
# Protocols
#
CONFIG_PNPACPI=y
CONFIG_BLK_DEV=y
CONFIG_BLK_DEV_NULL_BLK=m
CONFIG_BLK_DEV_NULL_BLK_FAULT_INJECTION=y
# CONFIG_BLK_DEV_FD is not set
CONFIG_CDROM=m
# CONFIG_PARIDE is not set
# CONFIG_BLK_DEV_PCIESSD_MTIP32XX is not set
# CONFIG_ZRAM is not set
# CONFIG_BLK_DEV_UMEM is not set
CONFIG_BLK_DEV_LOOP=m
CONFIG_BLK_DEV_LOOP_MIN_COUNT=0
# CONFIG_BLK_DEV_CRYPTOLOOP is not set
# CONFIG_BLK_DEV_DRBD is not set
CONFIG_BLK_DEV_NBD=m
# CONFIG_BLK_DEV_SKD is not set
# CONFIG_BLK_DEV_SX8 is not set
CONFIG_BLK_DEV_RAM=m
CONFIG_BLK_DEV_RAM_COUNT=16
CONFIG_BLK_DEV_RAM_SIZE=16384
CONFIG_CDROM_PKTCDVD=m
CONFIG_CDROM_PKTCDVD_BUFFERS=8
# CONFIG_CDROM_PKTCDVD_WCACHE is not set
# CONFIG_ATA_OVER_ETH is not set
CONFIG_XEN_BLKDEV_FRONTEND=m
CONFIG_VIRTIO_BLK=m
CONFIG_BLK_DEV_RBD=m
# CONFIG_BLK_DEV_RSXX is not set

#
# NVME Support
#
CONFIG_NVME_CORE=m
CONFIG_BLK_DEV_NVME=m
CONFIG_NVME_MULTIPATH=y
# CONFIG_NVME_HWMON is not set
CONFIG_NVME_FABRICS=m
# CONFIG_NVME_RDMA is not set
CONFIG_NVME_FC=m
# CONFIG_NVME_TCP is not set
CONFIG_NVME_TARGET=m
# CONFIG_NVME_TARGET_PASSTHRU is not set
CONFIG_NVME_TARGET_LOOP=m
# CONFIG_NVME_TARGET_RDMA is not set
CONFIG_NVME_TARGET_FC=m
CONFIG_NVME_TARGET_FCLOOP=m
# CONFIG_NVME_TARGET_TCP is not set
# end of NVME Support

#
# Misc devices
#
CONFIG_SENSORS_LIS3LV02D=m
# CONFIG_AD525X_DPOT is not set
# CONFIG_DUMMY_IRQ is not set
# CONFIG_IBM_ASM is not set
# CONFIG_PHANTOM is not set
CONFIG_TIFM_CORE=m
CONFIG_TIFM_7XX1=m
# CONFIG_ICS932S401 is not set
CONFIG_ENCLOSURE_SERVICES=m
CONFIG_SGI_XP=m
CONFIG_HP_ILO=m
CONFIG_SGI_GRU=m
# CONFIG_SGI_GRU_DEBUG is not set
CONFIG_APDS9802ALS=m
CONFIG_ISL29003=m
CONFIG_ISL29020=m
CONFIG_SENSORS_TSL2550=m
CONFIG_SENSORS_BH1770=m
CONFIG_SENSORS_APDS990X=m
# CONFIG_HMC6352 is not set
# CONFIG_DS1682 is not set
CONFIG_VMWARE_BALLOON=m
# CONFIG_LATTICE_ECP3_CONFIG is not set
# CONFIG_SRAM is not set
# CONFIG_PCI_ENDPOINT_TEST is not set
# CONFIG_XILINX_SDFEC is not set
CONFIG_MISC_RTSX=m
CONFIG_PVPANIC=y
# CONFIG_C2PORT is not set

#
# EEPROM support
#
# CONFIG_EEPROM_AT24 is not set
# CONFIG_EEPROM_AT25 is not set
CONFIG_EEPROM_LEGACY=m
CONFIG_EEPROM_MAX6875=m
CONFIG_EEPROM_93CX6=m
# CONFIG_EEPROM_93XX46 is not set
# CONFIG_EEPROM_IDT_89HPESX is not set
# CONFIG_EEPROM_EE1004 is not set
# end of EEPROM support

CONFIG_CB710_CORE=m
# CONFIG_CB710_DEBUG is not set
CONFIG_CB710_DEBUG_ASSUMPTIONS=y

#
# Texas Instruments shared transport line discipline
#
# CONFIG_TI_ST is not set
# end of Texas Instruments shared transport line discipline

CONFIG_SENSORS_LIS3_I2C=m
CONFIG_ALTERA_STAPL=m
CONFIG_INTEL_MEI=m
CONFIG_INTEL_MEI_ME=m
# CONFIG_INTEL_MEI_TXE is not set
# CONFIG_INTEL_MEI_HDCP is not set
CONFIG_VMWARE_VMCI=m
# CONFIG_GENWQE is not set
# CONFIG_ECHO is not set
# CONFIG_MISC_ALCOR_PCI is not set
CONFIG_MISC_RTSX_PCI=m
# CONFIG_MISC_RTSX_USB is not set
# CONFIG_HABANA_AI is not set
# CONFIG_UACCE is not set
# end of Misc devices

CONFIG_HAVE_IDE=y
# CONFIG_IDE is not set

#
# SCSI device support
#
CONFIG_SCSI_MOD=y
CONFIG_RAID_ATTRS=m
CONFIG_SCSI=y
CONFIG_SCSI_DMA=y
CONFIG_SCSI_NETLINK=y
CONFIG_SCSI_PROC_FS=y

#
# SCSI support type (disk, tape, CD-ROM)
#
CONFIG_BLK_DEV_SD=m
CONFIG_CHR_DEV_ST=m
CONFIG_BLK_DEV_SR=m
CONFIG_CHR_DEV_SG=m
CONFIG_CHR_DEV_SCH=m
CONFIG_SCSI_ENCLOSURE=m
CONFIG_SCSI_CONSTANTS=y
CONFIG_SCSI_LOGGING=y
CONFIG_SCSI_SCAN_ASYNC=y

#
# SCSI Transports
#
CONFIG_SCSI_SPI_ATTRS=m
CONFIG_SCSI_FC_ATTRS=m
CONFIG_SCSI_ISCSI_ATTRS=m
CONFIG_SCSI_SAS_ATTRS=m
CONFIG_SCSI_SAS_LIBSAS=m
CONFIG_SCSI_SAS_ATA=y
CONFIG_SCSI_SAS_HOST_SMP=y
CONFIG_SCSI_SRP_ATTRS=m
# end of SCSI Transports

CONFIG_SCSI_LOWLEVEL=y
# CONFIG_ISCSI_TCP is not set
# CONFIG_ISCSI_BOOT_SYSFS is not set
# CONFIG_SCSI_CXGB3_ISCSI is not set
# CONFIG_SCSI_CXGB4_ISCSI is not set
# CONFIG_SCSI_BNX2_ISCSI is not set
# CONFIG_BE2ISCSI is not set
# CONFIG_BLK_DEV_3W_XXXX_RAID is not set
# CONFIG_SCSI_HPSA is not set
# CONFIG_SCSI_3W_9XXX is not set
# CONFIG_SCSI_3W_SAS is not set
# CONFIG_SCSI_ACARD is not set
# CONFIG_SCSI_AACRAID is not set
# CONFIG_SCSI_AIC7XXX is not set
# CONFIG_SCSI_AIC79XX is not set
# CONFIG_SCSI_AIC94XX is not set
# CONFIG_SCSI_MVSAS is not set
# CONFIG_SCSI_MVUMI is not set
# CONFIG_SCSI_DPT_I2O is not set
# CONFIG_SCSI_ADVANSYS is not set
# CONFIG_SCSI_ARCMSR is not set
# CONFIG_SCSI_ESAS2R is not set
# CONFIG_MEGARAID_NEWGEN is not set
# CONFIG_MEGARAID_LEGACY is not set
# CONFIG_MEGARAID_SAS is not set
CONFIG_SCSI_MPT3SAS=m
CONFIG_SCSI_MPT2SAS_MAX_SGE=128
CONFIG_SCSI_MPT3SAS_MAX_SGE=128
# CONFIG_SCSI_MPT2SAS is not set
# CONFIG_SCSI_SMARTPQI is not set
# CONFIG_SCSI_UFSHCD is not set
# CONFIG_SCSI_HPTIOP is not set
# CONFIG_SCSI_BUSLOGIC is not set
# CONFIG_SCSI_MYRB is not set
# CONFIG_SCSI_MYRS is not set
# CONFIG_VMWARE_PVSCSI is not set
# CONFIG_XEN_SCSI_FRONTEND is not set
CONFIG_HYPERV_STORAGE=m
# CONFIG_LIBFC is not set
# CONFIG_SCSI_SNIC is not set
# CONFIG_SCSI_DMX3191D is not set
# CONFIG_SCSI_FDOMAIN_PCI is not set
# CONFIG_SCSI_GDTH is not set
CONFIG_SCSI_ISCI=m
# CONFIG_SCSI_IPS is not set
# CONFIG_SCSI_INITIO is not set
# CONFIG_SCSI_INIA100 is not set
# CONFIG_SCSI_PPA is not set
# CONFIG_SCSI_IMM is not set
# CONFIG_SCSI_STEX is not set
# CONFIG_SCSI_SYM53C8XX_2 is not set
# CONFIG_SCSI_IPR is not set
# CONFIG_SCSI_QLOGIC_1280 is not set
# CONFIG_SCSI_QLA_FC is not set
# CONFIG_SCSI_QLA_ISCSI is not set
# CONFIG_SCSI_LPFC is not set
# CONFIG_SCSI_DC395x is not set
# CONFIG_SCSI_AM53C974 is not set
# CONFIG_SCSI_WD719X is not set
CONFIG_SCSI_DEBUG=m
# CONFIG_SCSI_PMCRAID is not set
# CONFIG_SCSI_PM8001 is not set
# CONFIG_SCSI_BFA_FC is not set
# CONFIG_SCSI_VIRTIO is not set
# CONFIG_SCSI_CHELSIO_FCOE is not set
CONFIG_SCSI_DH=y
CONFIG_SCSI_DH_RDAC=y
CONFIG_SCSI_DH_HP_SW=y
CONFIG_SCSI_DH_EMC=y
CONFIG_SCSI_DH_ALUA=y
# end of SCSI device support

CONFIG_ATA=m
CONFIG_SATA_HOST=y
CONFIG_PATA_TIMINGS=y
CONFIG_ATA_VERBOSE_ERROR=y
CONFIG_ATA_FORCE=y
CONFIG_ATA_ACPI=y
# CONFIG_SATA_ZPODD is not set
CONFIG_SATA_PMP=y

#
# Controllers with non-SFF native interface
#
CONFIG_SATA_AHCI=m
CONFIG_SATA_MOBILE_LPM_POLICY=0
CONFIG_SATA_AHCI_PLATFORM=m
# CONFIG_SATA_INIC162X is not set
# CONFIG_SATA_ACARD_AHCI is not set
# CONFIG_SATA_SIL24 is not set
CONFIG_ATA_SFF=y

#
# SFF controllers with custom DMA interface
#
# CONFIG_PDC_ADMA is not set
# CONFIG_SATA_QSTOR is not set
# CONFIG_SATA_SX4 is not set
CONFIG_ATA_BMDMA=y

#
# SATA SFF controllers with BMDMA
#
CONFIG_ATA_PIIX=m
# CONFIG_SATA_DWC is not set
# CONFIG_SATA_MV is not set
# CONFIG_SATA_NV is not set
# CONFIG_SATA_PROMISE is not set
# CONFIG_SATA_SIL is not set
# CONFIG_SATA_SIS is not set
# CONFIG_SATA_SVW is not set
# CONFIG_SATA_ULI is not set
# CONFIG_SATA_VIA is not set
# CONFIG_SATA_VITESSE is not set

#
# PATA SFF controllers with BMDMA
#
# CONFIG_PATA_ALI is not set
# CONFIG_PATA_AMD is not set
# CONFIG_PATA_ARTOP is not set
# CONFIG_PATA_ATIIXP is not set
# CONFIG_PATA_ATP867X is not set
# CONFIG_PATA_CMD64X is not set
# CONFIG_PATA_CYPRESS is not set
# CONFIG_PATA_EFAR is not set
# CONFIG_PATA_HPT366 is not set
# CONFIG_PATA_HPT37X is not set
# CONFIG_PATA_HPT3X2N is not set
# CONFIG_PATA_HPT3X3 is not set
# CONFIG_PATA_IT8213 is not set
# CONFIG_PATA_IT821X is not set
# CONFIG_PATA_JMICRON is not set
# CONFIG_PATA_MARVELL is not set
# CONFIG_PATA_NETCELL is not set
# CONFIG_PATA_NINJA32 is not set
# CONFIG_PATA_NS87415 is not set
# CONFIG_PATA_OLDPIIX is not set
# CONFIG_PATA_OPTIDMA is not set
# CONFIG_PATA_PDC2027X is not set
# CONFIG_PATA_PDC_OLD is not set
# CONFIG_PATA_RADISYS is not set
# CONFIG_PATA_RDC is not set
# CONFIG_PATA_SCH is not set
# CONFIG_PATA_SERVERWORKS is not set
# CONFIG_PATA_SIL680 is not set
# CONFIG_PATA_SIS is not set
# CONFIG_PATA_TOSHIBA is not set
# CONFIG_PATA_TRIFLEX is not set
# CONFIG_PATA_VIA is not set
# CONFIG_PATA_WINBOND is not set

#
# PIO-only SFF controllers
#
# CONFIG_PATA_CMD640_PCI is not set
# CONFIG_PATA_MPIIX is not set
# CONFIG_PATA_NS87410 is not set
# CONFIG_PATA_OPTI is not set
# CONFIG_PATA_RZ1000 is not set

#
# Generic fallback / legacy drivers
#
# CONFIG_PATA_ACPI is not set
CONFIG_ATA_GENERIC=m
# CONFIG_PATA_LEGACY is not set
CONFIG_MD=y
CONFIG_BLK_DEV_MD=y
CONFIG_MD_AUTODETECT=y
CONFIG_MD_LINEAR=m
CONFIG_MD_RAID0=m
CONFIG_MD_RAID1=m
CONFIG_MD_RAID10=m
CONFIG_MD_RAID456=m
CONFIG_MD_MULTIPATH=m
CONFIG_MD_FAULTY=m
CONFIG_MD_CLUSTER=m
# CONFIG_BCACHE is not set
CONFIG_BLK_DEV_DM_BUILTIN=y
CONFIG_BLK_DEV_DM=m
CONFIG_DM_DEBUG=y
CONFIG_DM_BUFIO=m
# CONFIG_DM_DEBUG_BLOCK_MANAGER_LOCKING is not set
CONFIG_DM_BIO_PRISON=m
CONFIG_DM_PERSISTENT_DATA=m
# CONFIG_DM_UNSTRIPED is not set
CONFIG_DM_CRYPT=m
CONFIG_DM_SNAPSHOT=m
CONFIG_DM_THIN_PROVISIONING=m
CONFIG_DM_CACHE=m
CONFIG_DM_CACHE_SMQ=m
CONFIG_DM_WRITECACHE=m
# CONFIG_DM_EBS is not set
CONFIG_DM_ERA=m
# CONFIG_DM_CLONE is not set
CONFIG_DM_MIRROR=m
CONFIG_DM_LOG_USERSPACE=m
CONFIG_DM_RAID=m
CONFIG_DM_ZERO=m
CONFIG_DM_MULTIPATH=m
CONFIG_DM_MULTIPATH_QL=m
CONFIG_DM_MULTIPATH_ST=m
# CONFIG_DM_MULTIPATH_HST is not set
CONFIG_DM_DELAY=m
# CONFIG_DM_DUST is not set
CONFIG_DM_UEVENT=y
CONFIG_DM_FLAKEY=m
CONFIG_DM_VERITY=m
# CONFIG_DM_VERITY_VERIFY_ROOTHASH_SIG is not set
# CONFIG_DM_VERITY_FEC is not set
CONFIG_DM_SWITCH=m
CONFIG_DM_LOG_WRITES=m
CONFIG_DM_INTEGRITY=m
# CONFIG_DM_ZONED is not set
CONFIG_TARGET_CORE=m
CONFIG_TCM_IBLOCK=m
CONFIG_TCM_FILEIO=m
CONFIG_TCM_PSCSI=m
CONFIG_TCM_USER2=m
CONFIG_LOOPBACK_TARGET=m
CONFIG_ISCSI_TARGET=m
# CONFIG_SBP_TARGET is not set
# CONFIG_FUSION is not set

#
# IEEE 1394 (FireWire) support
#
CONFIG_FIREWIRE=m
CONFIG_FIREWIRE_OHCI=m
CONFIG_FIREWIRE_SBP2=m
CONFIG_FIREWIRE_NET=m
# CONFIG_FIREWIRE_NOSY is not set
# end of IEEE 1394 (FireWire) support

CONFIG_MACINTOSH_DRIVERS=y
CONFIG_MAC_EMUMOUSEBTN=y
CONFIG_NETDEVICES=y
CONFIG_MII=y
CONFIG_NET_CORE=y
# CONFIG_BONDING is not set
# CONFIG_DUMMY is not set
# CONFIG_WIREGUARD is not set
# CONFIG_EQUALIZER is not set
# CONFIG_NET_FC is not set
# CONFIG_IFB is not set
# CONFIG_NET_TEAM is not set
# CONFIG_MACVLAN is not set
# CONFIG_IPVLAN is not set
# CONFIG_VXLAN is not set
# CONFIG_GENEVE is not set
# CONFIG_BAREUDP is not set
# CONFIG_GTP is not set
# CONFIG_MACSEC is not set
CONFIG_NETCONSOLE=m
CONFIG_NETCONSOLE_DYNAMIC=y
CONFIG_NETPOLL=y
CONFIG_NET_POLL_CONTROLLER=y
CONFIG_TUN=m
# CONFIG_TUN_VNET_CROSS_LE is not set
CONFIG_VETH=m
CONFIG_VIRTIO_NET=m
# CONFIG_NLMON is not set
# CONFIG_NET_VRF is not set
# CONFIG_VSOCKMON is not set
# CONFIG_ARCNET is not set
CONFIG_ATM_DRIVERS=y
# CONFIG_ATM_DUMMY is not set
# CONFIG_ATM_TCP is not set
# CONFIG_ATM_LANAI is not set
# CONFIG_ATM_ENI is not set
# CONFIG_ATM_FIRESTREAM is not set
# CONFIG_ATM_ZATM is not set
# CONFIG_ATM_NICSTAR is not set
# CONFIG_ATM_IDT77252 is not set
# CONFIG_ATM_AMBASSADOR is not set
# CONFIG_ATM_HORIZON is not set
# CONFIG_ATM_IA is not set
# CONFIG_ATM_FORE200E is not set
# CONFIG_ATM_HE is not set
# CONFIG_ATM_SOLOS is not set

#
# Distributed Switch Architecture drivers
#
# end of Distributed Switch Architecture drivers

CONFIG_ETHERNET=y
CONFIG_MDIO=y
CONFIG_NET_VENDOR_3COM=y
# CONFIG_VORTEX is not set
# CONFIG_TYPHOON is not set
CONFIG_NET_VENDOR_ADAPTEC=y
# CONFIG_ADAPTEC_STARFIRE is not set
CONFIG_NET_VENDOR_AGERE=y
# CONFIG_ET131X is not set
CONFIG_NET_VENDOR_ALACRITECH=y
# CONFIG_SLICOSS is not set
CONFIG_NET_VENDOR_ALTEON=y
# CONFIG_ACENIC is not set
# CONFIG_ALTERA_TSE is not set
CONFIG_NET_VENDOR_AMAZON=y
# CONFIG_ENA_ETHERNET is not set
CONFIG_NET_VENDOR_AMD=y
# CONFIG_AMD8111_ETH is not set
# CONFIG_PCNET32 is not set
# CONFIG_AMD_XGBE is not set
CONFIG_NET_VENDOR_AQUANTIA=y
# CONFIG_AQTION is not set
CONFIG_NET_VENDOR_ARC=y
CONFIG_NET_VENDOR_ATHEROS=y
# CONFIG_ATL2 is not set
# CONFIG_ATL1 is not set
# CONFIG_ATL1E is not set
# CONFIG_ATL1C is not set
# CONFIG_ALX is not set
# CONFIG_NET_VENDOR_AURORA is not set
CONFIG_NET_VENDOR_BROADCOM=y
# CONFIG_B44 is not set
# CONFIG_BCMGENET is not set
# CONFIG_BNX2 is not set
# CONFIG_CNIC is not set
# CONFIG_TIGON3 is not set
# CONFIG_BNX2X is not set
# CONFIG_SYSTEMPORT is not set
# CONFIG_BNXT is not set
CONFIG_NET_VENDOR_BROCADE=y
# CONFIG_BNA is not set
CONFIG_NET_VENDOR_CADENCE=y
# CONFIG_MACB is not set
CONFIG_NET_VENDOR_CAVIUM=y
# CONFIG_THUNDER_NIC_PF is not set
# CONFIG_THUNDER_NIC_VF is not set
# CONFIG_THUNDER_NIC_BGX is not set
# CONFIG_THUNDER_NIC_RGX is not set
CONFIG_CAVIUM_PTP=y
# CONFIG_LIQUIDIO is not set
# CONFIG_LIQUIDIO_VF is not set
CONFIG_NET_VENDOR_CHELSIO=y
# CONFIG_CHELSIO_T1 is not set
# CONFIG_CHELSIO_T3 is not set
# CONFIG_CHELSIO_T4 is not set
# CONFIG_CHELSIO_T4VF is not set
CONFIG_NET_VENDOR_CISCO=y
# CONFIG_ENIC is not set
CONFIG_NET_VENDOR_CORTINA=y
# CONFIG_CX_ECAT is not set
# CONFIG_DNET is not set
CONFIG_NET_VENDOR_DEC=y
# CONFIG_NET_TULIP is not set
CONFIG_NET_VENDOR_DLINK=y
# CONFIG_DL2K is not set
# CONFIG_SUNDANCE is not set
CONFIG_NET_VENDOR_EMULEX=y
# CONFIG_BE2NET is not set
CONFIG_NET_VENDOR_EZCHIP=y
CONFIG_NET_VENDOR_GOOGLE=y
# CONFIG_GVE is not set
CONFIG_NET_VENDOR_HUAWEI=y
# CONFIG_HINIC is not set
CONFIG_NET_VENDOR_I825XX=y
CONFIG_NET_VENDOR_INTEL=y
# CONFIG_E100 is not set
CONFIG_E1000=y
CONFIG_E1000E=y
CONFIG_E1000E_HWTS=y
CONFIG_IGB=y
CONFIG_IGB_HWMON=y
# CONFIG_IGBVF is not set
# CONFIG_IXGB is not set
CONFIG_IXGBE=y
CONFIG_IXGBE_HWMON=y
# CONFIG_IXGBE_DCB is not set
CONFIG_IXGBE_IPSEC=y
# CONFIG_IXGBEVF is not set
CONFIG_I40E=y
# CONFIG_I40E_DCB is not set
# CONFIG_I40EVF is not set
# CONFIG_ICE is not set
# CONFIG_FM10K is not set
# CONFIG_IGC is not set
# CONFIG_JME is not set
CONFIG_NET_VENDOR_MARVELL=y
# CONFIG_MVMDIO is not set
# CONFIG_SKGE is not set
# CONFIG_SKY2 is not set
# CONFIG_PRESTERA is not set
CONFIG_NET_VENDOR_MELLANOX=y
# CONFIG_MLX4_EN is not set
# CONFIG_MLX5_CORE is not set
# CONFIG_MLXSW_CORE is not set
# CONFIG_MLXFW is not set
CONFIG_NET_VENDOR_MICREL=y
# CONFIG_KS8842 is not set
# CONFIG_KS8851 is not set
# CONFIG_KS8851_MLL is not set
# CONFIG_KSZ884X_PCI is not set
CONFIG_NET_VENDOR_MICROCHIP=y
# CONFIG_ENC28J60 is not set
# CONFIG_ENCX24J600 is not set
# CONFIG_LAN743X is not set
CONFIG_NET_VENDOR_MICROSEMI=y
CONFIG_NET_VENDOR_MYRI=y
# CONFIG_MYRI10GE is not set
# CONFIG_FEALNX is not set
CONFIG_NET_VENDOR_NATSEMI=y
# CONFIG_NATSEMI is not set
# CONFIG_NS83820 is not set
CONFIG_NET_VENDOR_NETERION=y
# CONFIG_S2IO is not set
# CONFIG_VXGE is not set
CONFIG_NET_VENDOR_NETRONOME=y
# CONFIG_NFP is not set
CONFIG_NET_VENDOR_NI=y
# CONFIG_NI_XGE_MANAGEMENT_ENET is not set
CONFIG_NET_VENDOR_8390=y
# CONFIG_NE2K_PCI is not set
CONFIG_NET_VENDOR_NVIDIA=y
# CONFIG_FORCEDETH is not set
CONFIG_NET_VENDOR_OKI=y
# CONFIG_ETHOC is not set
CONFIG_NET_VENDOR_PACKET_ENGINES=y
# CONFIG_HAMACHI is not set
# CONFIG_YELLOWFIN is not set
CONFIG_NET_VENDOR_PENSANDO=y
# CONFIG_IONIC is not set
CONFIG_NET_VENDOR_QLOGIC=y
# CONFIG_QLA3XXX is not set
# CONFIG_QLCNIC is not set
# CONFIG_NETXEN_NIC is not set
# CONFIG_QED is not set
CONFIG_NET_VENDOR_QUALCOMM=y
# CONFIG_QCOM_EMAC is not set
# CONFIG_RMNET is not set
CONFIG_NET_VENDOR_RDC=y
# CONFIG_R6040 is not set
CONFIG_NET_VENDOR_REALTEK=y
# CONFIG_ATP is not set
# CONFIG_8139CP is not set
# CONFIG_8139TOO is not set
CONFIG_R8169=y
CONFIG_NET_VENDOR_RENESAS=y
CONFIG_NET_VENDOR_ROCKER=y
# CONFIG_ROCKER is not set
CONFIG_NET_VENDOR_SAMSUNG=y
# CONFIG_SXGBE_ETH is not set
CONFIG_NET_VENDOR_SEEQ=y
CONFIG_NET_VENDOR_SOLARFLARE=y
# CONFIG_SFC is not set
# CONFIG_SFC_FALCON is not set
CONFIG_NET_VENDOR_SILAN=y
# CONFIG_SC92031 is not set
CONFIG_NET_VENDOR_SIS=y
# CONFIG_SIS900 is not set
# CONFIG_SIS190 is not set
CONFIG_NET_VENDOR_SMSC=y
# CONFIG_EPIC100 is not set
# CONFIG_SMSC911X is not set
# CONFIG_SMSC9420 is not set
CONFIG_NET_VENDOR_SOCIONEXT=y
CONFIG_NET_VENDOR_STMICRO=y
# CONFIG_STMMAC_ETH is not set
CONFIG_NET_VENDOR_SUN=y
# CONFIG_HAPPYMEAL is not set
# CONFIG_SUNGEM is not set
# CONFIG_CASSINI is not set
# CONFIG_NIU is not set
CONFIG_NET_VENDOR_SYNOPSYS=y
# CONFIG_DWC_XLGMAC is not set
CONFIG_NET_VENDOR_TEHUTI=y
# CONFIG_TEHUTI is not set
CONFIG_NET_VENDOR_TI=y
# CONFIG_TI_CPSW_PHY_SEL is not set
# CONFIG_TLAN is not set
CONFIG_NET_VENDOR_VIA=y
# CONFIG_VIA_RHINE is not set
# CONFIG_VIA_VELOCITY is not set
CONFIG_NET_VENDOR_WIZNET=y
# CONFIG_WIZNET_W5100 is not set
# CONFIG_WIZNET_W5300 is not set
CONFIG_NET_VENDOR_XILINX=y
# CONFIG_XILINX_AXI_EMAC is not set
# CONFIG_XILINX_LL_TEMAC is not set
# CONFIG_FDDI is not set
# CONFIG_HIPPI is not set
# CONFIG_NET_SB1000 is not set
CONFIG_PHYLIB=y
# CONFIG_LED_TRIGGER_PHY is not set
# CONFIG_FIXED_PHY is not set

#
# MII PHY device drivers
#
# CONFIG_AMD_PHY is not set
# CONFIG_ADIN_PHY is not set
# CONFIG_AQUANTIA_PHY is not set
# CONFIG_AX88796B_PHY is not set
# CONFIG_BROADCOM_PHY is not set
# CONFIG_BCM54140_PHY is not set
# CONFIG_BCM7XXX_PHY is not set
# CONFIG_BCM84881_PHY is not set
# CONFIG_BCM87XX_PHY is not set
# CONFIG_CICADA_PHY is not set
# CONFIG_CORTINA_PHY is not set
# CONFIG_DAVICOM_PHY is not set
# CONFIG_ICPLUS_PHY is not set
# CONFIG_LXT_PHY is not set
# CONFIG_INTEL_XWAY_PHY is not set
# CONFIG_LSI_ET1011C_PHY is not set
# CONFIG_MARVELL_PHY is not set
# CONFIG_MARVELL_10G_PHY is not set
# CONFIG_MICREL_PHY is not set
# CONFIG_MICROCHIP_PHY is not set
# CONFIG_MICROCHIP_T1_PHY is not set
# CONFIG_MICROSEMI_PHY is not set
# CONFIG_NATIONAL_PHY is not set
# CONFIG_NXP_TJA11XX_PHY is not set
# CONFIG_QSEMI_PHY is not set
CONFIG_REALTEK_PHY=y
# CONFIG_RENESAS_PHY is not set
# CONFIG_ROCKCHIP_PHY is not set
# CONFIG_SMSC_PHY is not set
# CONFIG_STE10XP is not set
# CONFIG_TERANETICS_PHY is not set
# CONFIG_DP83822_PHY is not set
# CONFIG_DP83TC811_PHY is not set
# CONFIG_DP83848_PHY is not set
# CONFIG_DP83867_PHY is not set
# CONFIG_DP83869_PHY is not set
# CONFIG_VITESSE_PHY is not set
# CONFIG_XILINX_GMII2RGMII is not set
# CONFIG_MICREL_KS8995MA is not set
CONFIG_MDIO_DEVICE=y
CONFIG_MDIO_BUS=y
CONFIG_MDIO_DEVRES=y
# CONFIG_MDIO_BITBANG is not set
# CONFIG_MDIO_BCM_UNIMAC is not set
# CONFIG_MDIO_MVUSB is not set
# CONFIG_MDIO_MSCC_MIIM is not set
# CONFIG_MDIO_THUNDER is not set

#
# MDIO Multiplexers
#

#
# PCS device drivers
#
# CONFIG_PCS_XPCS is not set
# end of PCS device drivers

# CONFIG_PLIP is not set
# CONFIG_PPP is not set
# CONFIG_SLIP is not set
CONFIG_USB_NET_DRIVERS=y
# CONFIG_USB_CATC is not set
# CONFIG_USB_KAWETH is not set
# CONFIG_USB_PEGASUS is not set
# CONFIG_USB_RTL8150 is not set
CONFIG_USB_RTL8152=m
# CONFIG_USB_LAN78XX is not set
CONFIG_USB_USBNET=y
CONFIG_USB_NET_AX8817X=m
CONFIG_USB_NET_AX88179_178A=m
# CONFIG_USB_NET_CDCETHER is not set
# CONFIG_USB_NET_CDC_EEM is not set
# CONFIG_USB_NET_CDC_NCM is not set
# CONFIG_USB_NET_HUAWEI_CDC_NCM is not set
# CONFIG_USB_NET_CDC_MBIM is not set
# CONFIG_USB_NET_DM9601 is not set
# CONFIG_USB_NET_SR9700 is not set
# CONFIG_USB_NET_SR9800 is not set
# CONFIG_USB_NET_SMSC75XX is not set
# CONFIG_USB_NET_SMSC95XX is not set
# CONFIG_USB_NET_GL620A is not set
# CONFIG_USB_NET_NET1080 is not set
# CONFIG_USB_NET_PLUSB is not set
# CONFIG_USB_NET_MCS7830 is not set
# CONFIG_USB_NET_RNDIS_HOST is not set
# CONFIG_USB_NET_CDC_SUBSET is not set
# CONFIG_USB_NET_ZAURUS is not set
# CONFIG_USB_NET_CX82310_ETH is not set
# CONFIG_USB_NET_KALMIA is not set
# CONFIG_USB_NET_QMI_WWAN is not set
# CONFIG_USB_HSO is not set
# CONFIG_USB_NET_INT51X1 is not set
# CONFIG_USB_IPHETH is not set
# CONFIG_USB_SIERRA_NET is not set
# CONFIG_USB_NET_CH9200 is not set
# CONFIG_USB_NET_AQC111 is not set
CONFIG_WLAN=y
CONFIG_WLAN_VENDOR_ADMTEK=y
# CONFIG_ADM8211 is not set
CONFIG_WLAN_VENDOR_ATH=y
# CONFIG_ATH_DEBUG is not set
# CONFIG_ATH5K is not set
# CONFIG_ATH5K_PCI is not set
# CONFIG_ATH9K is not set
# CONFIG_ATH9K_HTC is not set
# CONFIG_CARL9170 is not set
# CONFIG_ATH6KL is not set
# CONFIG_AR5523 is not set
# CONFIG_WIL6210 is not set
# CONFIG_ATH10K is not set
# CONFIG_WCN36XX is not set
# CONFIG_ATH11K is not set
CONFIG_WLAN_VENDOR_ATMEL=y
# CONFIG_ATMEL is not set
# CONFIG_AT76C50X_USB is not set
CONFIG_WLAN_VENDOR_BROADCOM=y
# CONFIG_B43 is not set
# CONFIG_B43LEGACY is not set
# CONFIG_BRCMSMAC is not set
# CONFIG_BRCMFMAC is not set
CONFIG_WLAN_VENDOR_CISCO=y
# CONFIG_AIRO is not set
CONFIG_WLAN_VENDOR_INTEL=y
# CONFIG_IPW2100 is not set
# CONFIG_IPW2200 is not set
# CONFIG_IWL4965 is not set
# CONFIG_IWL3945 is not set
# CONFIG_IWLWIFI is not set
CONFIG_WLAN_VENDOR_INTERSIL=y
# CONFIG_HOSTAP is not set
# CONFIG_HERMES is not set
# CONFIG_P54_COMMON is not set
# CONFIG_PRISM54 is not set
CONFIG_WLAN_VENDOR_MARVELL=y
# CONFIG_LIBERTAS is not set
# CONFIG_LIBERTAS_THINFIRM is not set
# CONFIG_MWIFIEX is not set
# CONFIG_MWL8K is not set
CONFIG_WLAN_VENDOR_MEDIATEK=y
# CONFIG_MT7601U is not set
# CONFIG_MT76x0U is not set
# CONFIG_MT76x0E is not set
# CONFIG_MT76x2E is not set
# CONFIG_MT76x2U is not set
# CONFIG_MT7603E is not set
# CONFIG_MT7615E is not set
# CONFIG_MT7663U is not set
# CONFIG_MT7663S is not set
# CONFIG_MT7915E is not set
CONFIG_WLAN_VENDOR_MICROCHIP=y
# CONFIG_WILC1000_SDIO is not set
# CONFIG_WILC1000_SPI is not set
CONFIG_WLAN_VENDOR_RALINK=y
# CONFIG_RT2X00 is not set
CONFIG_WLAN_VENDOR_REALTEK=y
# CONFIG_RTL8180 is not set
# CONFIG_RTL8187 is not set
CONFIG_RTL_CARDS=m
# CONFIG_RTL8192CE is not set
# CONFIG_RTL8192SE is not set
# CONFIG_RTL8192DE is not set
# CONFIG_RTL8723AE is not set
# CONFIG_RTL8723BE is not set
# CONFIG_RTL8188EE is not set
# CONFIG_RTL8192EE is not set
# CONFIG_RTL8821AE is not set
# CONFIG_RTL8192CU is not set
# CONFIG_RTL8XXXU is not set
# CONFIG_RTW88 is not set
CONFIG_WLAN_VENDOR_RSI=y
# CONFIG_RSI_91X is not set
CONFIG_WLAN_VENDOR_ST=y
# CONFIG_CW1200 is not set
CONFIG_WLAN_VENDOR_TI=y
# CONFIG_WL1251 is not set
# CONFIG_WL12XX is not set
# CONFIG_WL18XX is not set
# CONFIG_WLCORE is not set
CONFIG_WLAN_VENDOR_ZYDAS=y
# CONFIG_USB_ZD1201 is not set
# CONFIG_ZD1211RW is not set
CONFIG_WLAN_VENDOR_QUANTENNA=y
# CONFIG_QTNFMAC_PCIE is not set
CONFIG_MAC80211_HWSIM=m
# CONFIG_USB_NET_RNDIS_WLAN is not set
# CONFIG_VIRT_WIFI is not set

#
# Enable WiMAX (Networking options) to see the WiMAX drivers
#
# CONFIG_WAN is not set
CONFIG_IEEE802154_DRIVERS=m
# CONFIG_IEEE802154_FAKELB is not set
# CONFIG_IEEE802154_AT86RF230 is not set
# CONFIG_IEEE802154_MRF24J40 is not set
# CONFIG_IEEE802154_CC2520 is not set
# CONFIG_IEEE802154_ATUSB is not set
# CONFIG_IEEE802154_ADF7242 is not set
# CONFIG_IEEE802154_CA8210 is not set
# CONFIG_IEEE802154_MCR20A is not set
# CONFIG_IEEE802154_HWSIM is not set
CONFIG_XEN_NETDEV_FRONTEND=y
# CONFIG_VMXNET3 is not set
# CONFIG_FUJITSU_ES is not set
# CONFIG_HYPERV_NET is not set
CONFIG_NETDEVSIM=m
CONFIG_NET_FAILOVER=m
# CONFIG_ISDN is not set
# CONFIG_NVM is not set

#
# Input device support
#
CONFIG_INPUT=y
CONFIG_INPUT_LEDS=y
CONFIG_INPUT_FF_MEMLESS=m
CONFIG_INPUT_POLLDEV=m
CONFIG_INPUT_SPARSEKMAP=m
# CONFIG_INPUT_MATRIXKMAP is not set

#
# Userland interfaces
#
CONFIG_INPUT_MOUSEDEV=y
# CONFIG_INPUT_MOUSEDEV_PSAUX is not set
CONFIG_INPUT_MOUSEDEV_SCREEN_X=1024
CONFIG_INPUT_MOUSEDEV_SCREEN_Y=768
CONFIG_INPUT_JOYDEV=m
CONFIG_INPUT_EVDEV=y
# CONFIG_INPUT_EVBUG is not set

#
# Input Device Drivers
#
CONFIG_INPUT_KEYBOARD=y
# CONFIG_KEYBOARD_ADP5588 is not set
# CONFIG_KEYBOARD_ADP5589 is not set
# CONFIG_KEYBOARD_APPLESPI is not set
CONFIG_KEYBOARD_ATKBD=y
# CONFIG_KEYBOARD_QT1050 is not set
# CONFIG_KEYBOARD_QT1070 is not set
# CONFIG_KEYBOARD_QT2160 is not set
# CONFIG_KEYBOARD_DLINK_DIR685 is not set
# CONFIG_KEYBOARD_LKKBD is not set
# CONFIG_KEYBOARD_GPIO is not set
# CONFIG_KEYBOARD_GPIO_POLLED is not set
# CONFIG_KEYBOARD_TCA6416 is not set
# CONFIG_KEYBOARD_TCA8418 is not set
# CONFIG_KEYBOARD_MATRIX is not set
# CONFIG_KEYBOARD_LM8323 is not set
# CONFIG_KEYBOARD_LM8333 is not set
# CONFIG_KEYBOARD_MAX7359 is not set
# CONFIG_KEYBOARD_MCS is not set
# CONFIG_KEYBOARD_MPR121 is not set
# CONFIG_KEYBOARD_NEWTON is not set
# CONFIG_KEYBOARD_OPENCORES is not set
# CONFIG_KEYBOARD_SAMSUNG is not set
# CONFIG_KEYBOARD_STOWAWAY is not set
# CONFIG_KEYBOARD_SUNKBD is not set
# CONFIG_KEYBOARD_TM2_TOUCHKEY is not set
# CONFIG_KEYBOARD_XTKBD is not set
CONFIG_INPUT_MOUSE=y
CONFIG_MOUSE_PS2=y
CONFIG_MOUSE_PS2_ALPS=y
CONFIG_MOUSE_PS2_BYD=y
CONFIG_MOUSE_PS2_LOGIPS2PP=y
CONFIG_MOUSE_PS2_SYNAPTICS=y
CONFIG_MOUSE_PS2_SYNAPTICS_SMBUS=y
CONFIG_MOUSE_PS2_CYPRESS=y
CONFIG_MOUSE_PS2_LIFEBOOK=y
CONFIG_MOUSE_PS2_TRACKPOINT=y
CONFIG_MOUSE_PS2_ELANTECH=y
CONFIG_MOUSE_PS2_ELANTECH_SMBUS=y
CONFIG_MOUSE_PS2_SENTELIC=y
# CONFIG_MOUSE_PS2_TOUCHKIT is not set
CONFIG_MOUSE_PS2_FOCALTECH=y
CONFIG_MOUSE_PS2_VMMOUSE=y
CONFIG_MOUSE_PS2_SMBUS=y
CONFIG_MOUSE_SERIAL=m
# CONFIG_MOUSE_APPLETOUCH is not set
# CONFIG_MOUSE_BCM5974 is not set
CONFIG_MOUSE_CYAPA=m
CONFIG_MOUSE_ELAN_I2C=m
CONFIG_MOUSE_ELAN_I2C_I2C=y
CONFIG_MOUSE_ELAN_I2C_SMBUS=y
CONFIG_MOUSE_VSXXXAA=m
# CONFIG_MOUSE_GPIO is not set
CONFIG_MOUSE_SYNAPTICS_I2C=m
# CONFIG_MOUSE_SYNAPTICS_USB is not set
# CONFIG_INPUT_JOYSTICK is not set
# CONFIG_INPUT_TABLET is not set
# CONFIG_INPUT_TOUCHSCREEN is not set
# CONFIG_INPUT_MISC is not set
CONFIG_RMI4_CORE=m
CONFIG_RMI4_I2C=m
CONFIG_RMI4_SPI=m
CONFIG_RMI4_SMB=m
CONFIG_RMI4_F03=y
CONFIG_RMI4_F03_SERIO=m
CONFIG_RMI4_2D_SENSOR=y
CONFIG_RMI4_F11=y
CONFIG_RMI4_F12=y
CONFIG_RMI4_F30=y
CONFIG_RMI4_F34=y
# CONFIG_RMI4_F3A is not set
# CONFIG_RMI4_F54 is not set
CONFIG_RMI4_F55=y

#
# Hardware I/O ports
#
CONFIG_SERIO=y
CONFIG_ARCH_MIGHT_HAVE_PC_SERIO=y
CONFIG_SERIO_I8042=y
CONFIG_SERIO_SERPORT=y
# CONFIG_SERIO_CT82C710 is not set
# CONFIG_SERIO_PARKBD is not set
# CONFIG_SERIO_PCIPS2 is not set
CONFIG_SERIO_LIBPS2=y
CONFIG_SERIO_RAW=m
CONFIG_SERIO_ALTERA_PS2=m
# CONFIG_SERIO_PS2MULT is not set
CONFIG_SERIO_ARC_PS2=m
CONFIG_HYPERV_KEYBOARD=m
# CONFIG_SERIO_GPIO_PS2 is not set
# CONFIG_USERIO is not set
# CONFIG_GAMEPORT is not set
# end of Hardware I/O ports
# end of Input device support

#
# Character devices
#
CONFIG_TTY=y
CONFIG_VT=y
CONFIG_CONSOLE_TRANSLATIONS=y
CONFIG_VT_CONSOLE=y
CONFIG_VT_CONSOLE_SLEEP=y
CONFIG_HW_CONSOLE=y
CONFIG_VT_HW_CONSOLE_BINDING=y
CONFIG_UNIX98_PTYS=y
# CONFIG_LEGACY_PTYS is not set
CONFIG_LDISC_AUTOLOAD=y

#
# Serial drivers
#
CONFIG_SERIAL_EARLYCON=y
CONFIG_SERIAL_8250=y
# CONFIG_SERIAL_8250_DEPRECATED_OPTIONS is not set
CONFIG_SERIAL_8250_PNP=y
# CONFIG_SERIAL_8250_16550A_VARIANTS is not set
# CONFIG_SERIAL_8250_FINTEK is not set
CONFIG_SERIAL_8250_CONSOLE=y
CONFIG_SERIAL_8250_DMA=y
CONFIG_SERIAL_8250_PCI=y
CONFIG_SERIAL_8250_EXAR=y
CONFIG_SERIAL_8250_NR_UARTS=64
CONFIG_SERIAL_8250_RUNTIME_UARTS=4
CONFIG_SERIAL_8250_EXTENDED=y
CONFIG_SERIAL_8250_MANY_PORTS=y
CONFIG_SERIAL_8250_SHARE_IRQ=y
# CONFIG_SERIAL_8250_DETECT_IRQ is not set
CONFIG_SERIAL_8250_RSA=y
CONFIG_SERIAL_8250_DWLIB=y
CONFIG_SERIAL_8250_DW=y
# CONFIG_SERIAL_8250_RT288X is not set
CONFIG_SERIAL_8250_LPSS=y
CONFIG_SERIAL_8250_MID=y

#
# Non-8250 serial port support
#
# CONFIG_SERIAL_MAX3100 is not set
# CONFIG_SERIAL_MAX310X is not set
# CONFIG_SERIAL_UARTLITE is not set
CONFIG_SERIAL_CORE=y
CONFIG_SERIAL_CORE_CONSOLE=y
CONFIG_SERIAL_JSM=m
# CONFIG_SERIAL_LANTIQ is not set
# CONFIG_SERIAL_SCCNXP is not set
# CONFIG_SERIAL_SC16IS7XX is not set
# CONFIG_SERIAL_ALTERA_JTAGUART is not set
# CONFIG_SERIAL_ALTERA_UART is not set
# CONFIG_SERIAL_IFX6X60 is not set
CONFIG_SERIAL_ARC=m
CONFIG_SERIAL_ARC_NR_PORTS=1
# CONFIG_SERIAL_RP2 is not set
# CONFIG_SERIAL_FSL_LPUART is not set
# CONFIG_SERIAL_FSL_LINFLEXUART is not set
# CONFIG_SERIAL_SPRD is not set
# end of Serial drivers

CONFIG_SERIAL_MCTRL_GPIO=y
CONFIG_SERIAL_NONSTANDARD=y
# CONFIG_ROCKETPORT is not set
CONFIG_CYCLADES=m
# CONFIG_CYZ_INTR is not set
# CONFIG_MOXA_INTELLIO is not set
# CONFIG_MOXA_SMARTIO is not set
CONFIG_SYNCLINK=m
CONFIG_SYNCLINKMP=m
CONFIG_SYNCLINK_GT=m
# CONFIG_ISI is not set
CONFIG_N_HDLC=m
CONFIG_N_GSM=m
CONFIG_NOZOMI=m
# CONFIG_NULL_TTY is not set
# CONFIG_TRACE_SINK is not set
CONFIG_HVC_DRIVER=y
CONFIG_HVC_IRQ=y
CONFIG_HVC_XEN=y
CONFIG_HVC_XEN_FRONTEND=y
# CONFIG_SERIAL_DEV_BUS is not set
CONFIG_PRINTER=m
# CONFIG_LP_CONSOLE is not set
CONFIG_PPDEV=m
CONFIG_VIRTIO_CONSOLE=m
CONFIG_IPMI_HANDLER=m
CONFIG_IPMI_DMI_DECODE=y
CONFIG_IPMI_PLAT_DATA=y
CONFIG_IPMI_PANIC_EVENT=y
CONFIG_IPMI_PANIC_STRING=y
CONFIG_IPMI_DEVICE_INTERFACE=m
CONFIG_IPMI_SI=m
CONFIG_IPMI_SSIF=m
CONFIG_IPMI_WATCHDOG=m
CONFIG_IPMI_POWEROFF=m
CONFIG_HW_RANDOM=y
CONFIG_HW_RANDOM_TIMERIOMEM=m
CONFIG_HW_RANDOM_INTEL=m
CONFIG_HW_RANDOM_AMD=m
# CONFIG_HW_RANDOM_BA431 is not set
CONFIG_HW_RANDOM_VIA=m
CONFIG_HW_RANDOM_VIRTIO=y
# CONFIG_HW_RANDOM_XIPHERA is not set
# CONFIG_APPLICOM is not set
# CONFIG_MWAVE is not set
CONFIG_DEVMEM=y
# CONFIG_DEVKMEM is not set
CONFIG_NVRAM=y
CONFIG_RAW_DRIVER=y
CONFIG_MAX_RAW_DEVS=8192
CONFIG_DEVPORT=y
CONFIG_HPET=y
CONFIG_HPET_MMAP=y
# CONFIG_HPET_MMAP_DEFAULT is not set
CONFIG_HANGCHECK_TIMER=m
CONFIG_UV_MMTIMER=m
CONFIG_TCG_TPM=y
CONFIG_HW_RANDOM_TPM=y
CONFIG_TCG_TIS_CORE=y
CONFIG_TCG_TIS=y
# CONFIG_TCG_TIS_SPI is not set
CONFIG_TCG_TIS_I2C_ATMEL=m
CONFIG_TCG_TIS_I2C_INFINEON=m
CONFIG_TCG_TIS_I2C_NUVOTON=m
CONFIG_TCG_NSC=m
CONFIG_TCG_ATMEL=m
CONFIG_TCG_INFINEON=m
# CONFIG_TCG_XEN is not set
CONFIG_TCG_CRB=y
# CONFIG_TCG_VTPM_PROXY is not set
CONFIG_TCG_TIS_ST33ZP24=m
CONFIG_TCG_TIS_ST33ZP24_I2C=m
# CONFIG_TCG_TIS_ST33ZP24_SPI is not set
CONFIG_TELCLOCK=m
# CONFIG_XILLYBUS is not set
# end of Character devices

# CONFIG_RANDOM_TRUST_CPU is not set
# CONFIG_RANDOM_TRUST_BOOTLOADER is not set

#
# I2C support
#
CONFIG_I2C=y
CONFIG_ACPI_I2C_OPREGION=y
CONFIG_I2C_BOARDINFO=y
CONFIG_I2C_COMPAT=y
CONFIG_I2C_CHARDEV=m
CONFIG_I2C_MUX=m

#
# Multiplexer I2C Chip support
#
# CONFIG_I2C_MUX_GPIO is not set
# CONFIG_I2C_MUX_LTC4306 is not set
# CONFIG_I2C_MUX_PCA9541 is not set
# CONFIG_I2C_MUX_PCA954x is not set
# CONFIG_I2C_MUX_REG is not set
CONFIG_I2C_MUX_MLXCPLD=m
# end of Multiplexer I2C Chip support

CONFIG_I2C_HELPER_AUTO=y
CONFIG_I2C_SMBUS=y
CONFIG_I2C_ALGOBIT=y
CONFIG_I2C_ALGOPCA=m

#
# I2C Hardware Bus support
#

#
# PC SMBus host controller drivers
#
# CONFIG_I2C_ALI1535 is not set
# CONFIG_I2C_ALI1563 is not set
# CONFIG_I2C_ALI15X3 is not set
CONFIG_I2C_AMD756=m
CONFIG_I2C_AMD756_S4882=m
CONFIG_I2C_AMD8111=m
# CONFIG_I2C_AMD_MP2 is not set
CONFIG_I2C_I801=y
CONFIG_I2C_ISCH=m
CONFIG_I2C_ISMT=m
CONFIG_I2C_PIIX4=m
CONFIG_I2C_NFORCE2=m
CONFIG_I2C_NFORCE2_S4985=m
# CONFIG_I2C_NVIDIA_GPU is not set
# CONFIG_I2C_SIS5595 is not set
# CONFIG_I2C_SIS630 is not set
CONFIG_I2C_SIS96X=m
CONFIG_I2C_VIA=m
CONFIG_I2C_VIAPRO=m

#
# ACPI drivers
#
CONFIG_I2C_SCMI=m

#
# I2C system bus drivers (mostly embedded / system-on-chip)
#
# CONFIG_I2C_CBUS_GPIO is not set
CONFIG_I2C_DESIGNWARE_CORE=m
# CONFIG_I2C_DESIGNWARE_SLAVE is not set
CONFIG_I2C_DESIGNWARE_PLATFORM=m
CONFIG_I2C_DESIGNWARE_BAYTRAIL=y
# CONFIG_I2C_DESIGNWARE_PCI is not set
# CONFIG_I2C_EMEV2 is not set
# CONFIG_I2C_GPIO is not set
# CONFIG_I2C_OCORES is not set
CONFIG_I2C_PCA_PLATFORM=m
CONFIG_I2C_SIMTEC=m
# CONFIG_I2C_XILINX is not set

#
# External I2C/SMBus adapter drivers
#
# CONFIG_I2C_DIOLAN_U2C is not set
CONFIG_I2C_PARPORT=m
# CONFIG_I2C_ROBOTFUZZ_OSIF is not set
# CONFIG_I2C_TAOS_EVM is not set
# CONFIG_I2C_TINY_USB is not set

#
# Other I2C/SMBus bus drivers
#
CONFIG_I2C_MLXCPLD=m
# end of I2C Hardware Bus support

CONFIG_I2C_STUB=m
# CONFIG_I2C_SLAVE is not set
# CONFIG_I2C_DEBUG_CORE is not set
# CONFIG_I2C_DEBUG_ALGO is not set
# CONFIG_I2C_DEBUG_BUS is not set
# end of I2C support

# CONFIG_I3C is not set
CONFIG_SPI=y
# CONFIG_SPI_DEBUG is not set
CONFIG_SPI_MASTER=y
# CONFIG_SPI_MEM is not set

#
# SPI Master Controller Drivers
#
# CONFIG_SPI_ALTERA is not set
# CONFIG_SPI_AXI_SPI_ENGINE is not set
# CONFIG_SPI_BITBANG is not set
# CONFIG_SPI_BUTTERFLY is not set
# CONFIG_SPI_CADENCE is not set
# CONFIG_SPI_DESIGNWARE is not set
# CONFIG_SPI_NXP_FLEXSPI is not set
# CONFIG_SPI_GPIO is not set
# CONFIG_SPI_LM70_LLP is not set
# CONFIG_SPI_LANTIQ_SSC is not set
# CONFIG_SPI_OC_TINY is not set
# CONFIG_SPI_PXA2XX is not set
# CONFIG_SPI_ROCKCHIP is not set
# CONFIG_SPI_SC18IS602 is not set
# CONFIG_SPI_SIFIVE is not set
# CONFIG_SPI_MXIC is not set
# CONFIG_SPI_XCOMM is not set
# CONFIG_SPI_XILINX is not set
# CONFIG_SPI_ZYNQMP_GQSPI is not set
# CONFIG_SPI_AMD is not set

#
# SPI Multiplexer support
#
# CONFIG_SPI_MUX is not set

#
# SPI Protocol Masters
#
# CONFIG_SPI_SPIDEV is not set
# CONFIG_SPI_LOOPBACK_TEST is not set
# CONFIG_SPI_TLE62X0 is not set
# CONFIG_SPI_SLAVE is not set
CONFIG_SPI_DYNAMIC=y
# CONFIG_SPMI is not set
# CONFIG_HSI is not set
CONFIG_PPS=y
# CONFIG_PPS_DEBUG is not set

#
# PPS clients support
#
# CONFIG_PPS_CLIENT_KTIMER is not set
CONFIG_PPS_CLIENT_LDISC=m
CONFIG_PPS_CLIENT_PARPORT=m
CONFIG_PPS_CLIENT_GPIO=m

#
# PPS generators support
#

#
# PTP clock support
#
CONFIG_PTP_1588_CLOCK=y
# CONFIG_DP83640_PHY is not set
# CONFIG_PTP_1588_CLOCK_INES is not set
CONFIG_PTP_1588_CLOCK_KVM=m
# CONFIG_PTP_1588_CLOCK_IDT82P33 is not set
# CONFIG_PTP_1588_CLOCK_IDTCM is not set
# CONFIG_PTP_1588_CLOCK_VMW is not set
# end of PTP clock support

CONFIG_PINCTRL=y
CONFIG_PINMUX=y
CONFIG_PINCONF=y
CONFIG_GENERIC_PINCONF=y
# CONFIG_DEBUG_PINCTRL is not set
CONFIG_PINCTRL_AMD=m
# CONFIG_PINCTRL_MCP23S08 is not set
# CONFIG_PINCTRL_SX150X is not set
CONFIG_PINCTRL_BAYTRAIL=y
# CONFIG_PINCTRL_CHERRYVIEW is not set
# CONFIG_PINCTRL_LYNXPOINT is not set
CONFIG_PINCTRL_INTEL=y
CONFIG_PINCTRL_BROXTON=m
CONFIG_PINCTRL_CANNONLAKE=m
CONFIG_PINCTRL_CEDARFORK=m
CONFIG_PINCTRL_DENVERTON=m
# CONFIG_PINCTRL_EMMITSBURG is not set
CONFIG_PINCTRL_GEMINILAKE=m
# CONFIG_PINCTRL_ICELAKE is not set
# CONFIG_PINCTRL_JASPERLAKE is not set
CONFIG_PINCTRL_LEWISBURG=m
CONFIG_PINCTRL_SUNRISEPOINT=m
# CONFIG_PINCTRL_TIGERLAKE is not set

#
# Renesas pinctrl drivers
#
# end of Renesas pinctrl drivers

CONFIG_GPIOLIB=y
CONFIG_GPIOLIB_FASTPATH_LIMIT=512
CONFIG_GPIO_ACPI=y
CONFIG_GPIOLIB_IRQCHIP=y
# CONFIG_DEBUG_GPIO is not set
CONFIG_GPIO_SYSFS=y
CONFIG_GPIO_CDEV=y
CONFIG_GPIO_CDEV_V1=y
CONFIG_GPIO_GENERIC=m

#
# Memory mapped GPIO drivers
#
CONFIG_GPIO_AMDPT=m
# CONFIG_GPIO_DWAPB is not set
# CONFIG_GPIO_EXAR is not set
# CONFIG_GPIO_GENERIC_PLATFORM is not set
CONFIG_GPIO_ICH=m
# CONFIG_GPIO_MB86S7X is not set
# CONFIG_GPIO_VX855 is not set
# CONFIG_GPIO_XILINX is not set
# CONFIG_GPIO_AMD_FCH is not set
# end of Memory mapped GPIO drivers

#
# Port-mapped I/O GPIO drivers
#
# CONFIG_GPIO_F7188X is not set
# CONFIG_GPIO_IT87 is not set
# CONFIG_GPIO_SCH is not set
# CONFIG_GPIO_SCH311X is not set
# CONFIG_GPIO_WINBOND is not set
# CONFIG_GPIO_WS16C48 is not set
# end of Port-mapped I/O GPIO drivers

#
# I2C GPIO expanders
#
# CONFIG_GPIO_ADP5588 is not set
# CONFIG_GPIO_MAX7300 is not set
# CONFIG_GPIO_MAX732X is not set
# CONFIG_GPIO_PCA953X is not set
# CONFIG_GPIO_PCA9570 is not set
# CONFIG_GPIO_PCF857X is not set
# CONFIG_GPIO_TPIC2810 is not set
# end of I2C GPIO expanders

#
# MFD GPIO expanders
#
# end of MFD GPIO expanders

#
# PCI GPIO expanders
#
# CONFIG_GPIO_AMD8111 is not set
# CONFIG_GPIO_BT8XX is not set
# CONFIG_GPIO_ML_IOH is not set
# CONFIG_GPIO_PCI_IDIO_16 is not set
# CONFIG_GPIO_PCIE_IDIO_24 is not set
# CONFIG_GPIO_RDC321X is not set
# end of PCI GPIO expanders

#
# SPI GPIO expanders
#
# CONFIG_GPIO_MAX3191X is not set
# CONFIG_GPIO_MAX7301 is not set
# CONFIG_GPIO_MC33880 is not set
# CONFIG_GPIO_PISOSR is not set
# CONFIG_GPIO_XRA1403 is not set
# end of SPI GPIO expanders

#
# USB GPIO expanders
#
# end of USB GPIO expanders

# CONFIG_GPIO_AGGREGATOR is not set
# CONFIG_GPIO_MOCKUP is not set
# CONFIG_W1 is not set
CONFIG_POWER_RESET=y
# CONFIG_POWER_RESET_RESTART is not set
CONFIG_POWER_SUPPLY=y
# CONFIG_POWER_SUPPLY_DEBUG is not set
CONFIG_POWER_SUPPLY_HWMON=y
# CONFIG_PDA_POWER is not set
# CONFIG_TEST_POWER is not set
# CONFIG_CHARGER_ADP5061 is not set
# CONFIG_BATTERY_CW2015 is not set
# CONFIG_BATTERY_DS2780 is not set
# CONFIG_BATTERY_DS2781 is not set
# CONFIG_BATTERY_DS2782 is not set
# CONFIG_BATTERY_SBS is not set
# CONFIG_CHARGER_SBS is not set
# CONFIG_MANAGER_SBS is not set
# CONFIG_BATTERY_BQ27XXX is not set
# CONFIG_BATTERY_MAX17040 is not set
# CONFIG_BATTERY_MAX17042 is not set
# CONFIG_CHARGER_MAX8903 is not set
# CONFIG_CHARGER_LP8727 is not set
# CONFIG_CHARGER_GPIO is not set
# CONFIG_CHARGER_LT3651 is not set
# CONFIG_CHARGER_BQ2415X is not set
# CONFIG_CHARGER_BQ24257 is not set
# CONFIG_CHARGER_BQ24735 is not set
# CONFIG_CHARGER_BQ2515X is not set
# CONFIG_CHARGER_BQ25890 is not set
# CONFIG_CHARGER_BQ25980 is not set
CONFIG_CHARGER_SMB347=m
# CONFIG_BATTERY_GAUGE_LTC2941 is not set
# CONFIG_CHARGER_RT9455 is not set
# CONFIG_CHARGER_BD99954 is not set
CONFIG_HWMON=y
CONFIG_HWMON_VID=m
# CONFIG_HWMON_DEBUG_CHIP is not set

#
# Native drivers
#
CONFIG_SENSORS_ABITUGURU=m
CONFIG_SENSORS_ABITUGURU3=m
# CONFIG_SENSORS_AD7314 is not set
CONFIG_SENSORS_AD7414=m
CONFIG_SENSORS_AD7418=m
CONFIG_SENSORS_ADM1021=m
CONFIG_SENSORS_ADM1025=m
CONFIG_SENSORS_ADM1026=m
CONFIG_SENSORS_ADM1029=m
CONFIG_SENSORS_ADM1031=m
# CONFIG_SENSORS_ADM1177 is not set
CONFIG_SENSORS_ADM9240=m
CONFIG_SENSORS_ADT7X10=m
# CONFIG_SENSORS_ADT7310 is not set
CONFIG_SENSORS_ADT7410=m
CONFIG_SENSORS_ADT7411=m
CONFIG_SENSORS_ADT7462=m
CONFIG_SENSORS_ADT7470=m
CONFIG_SENSORS_ADT7475=m
# CONFIG_SENSORS_AS370 is not set
CONFIG_SENSORS_ASC7621=m
# CONFIG_SENSORS_AXI_FAN_CONTROL is not set
CONFIG_SENSORS_K8TEMP=m
CONFIG_SENSORS_K10TEMP=m
CONFIG_SENSORS_FAM15H_POWER=m
# CONFIG_SENSORS_AMD_ENERGY is not set
CONFIG_SENSORS_APPLESMC=m
CONFIG_SENSORS_ASB100=m
# CONFIG_SENSORS_ASPEED is not set
CONFIG_SENSORS_ATXP1=m
# CONFIG_SENSORS_CORSAIR_CPRO is not set
# CONFIG_SENSORS_DRIVETEMP is not set
CONFIG_SENSORS_DS620=m
CONFIG_SENSORS_DS1621=m
CONFIG_SENSORS_DELL_SMM=m
CONFIG_SENSORS_I5K_AMB=m
CONFIG_SENSORS_F71805F=m
CONFIG_SENSORS_F71882FG=m
CONFIG_SENSORS_F75375S=m
CONFIG_SENSORS_FSCHMD=m
# CONFIG_SENSORS_FTSTEUTATES is not set
CONFIG_SENSORS_GL518SM=m
CONFIG_SENSORS_GL520SM=m
CONFIG_SENSORS_G760A=m
# CONFIG_SENSORS_G762 is not set
# CONFIG_SENSORS_HIH6130 is not set
CONFIG_SENSORS_IBMAEM=m
CONFIG_SENSORS_IBMPEX=m
CONFIG_SENSORS_I5500=m
CONFIG_SENSORS_CORETEMP=m
CONFIG_SENSORS_IT87=m
CONFIG_SENSORS_JC42=m
# CONFIG_SENSORS_POWR1220 is not set
CONFIG_SENSORS_LINEAGE=m
# CONFIG_SENSORS_LTC2945 is not set
# CONFIG_SENSORS_LTC2947_I2C is not set
# CONFIG_SENSORS_LTC2947_SPI is not set
# CONFIG_SENSORS_LTC2990 is not set
CONFIG_SENSORS_LTC4151=m
CONFIG_SENSORS_LTC4215=m
# CONFIG_SENSORS_LTC4222 is not set
CONFIG_SENSORS_LTC4245=m
# CONFIG_SENSORS_LTC4260 is not set
CONFIG_SENSORS_LTC4261=m
# CONFIG_SENSORS_MAX1111 is not set
CONFIG_SENSORS_MAX16065=m
CONFIG_SENSORS_MAX1619=m
CONFIG_SENSORS_MAX1668=m
CONFIG_SENSORS_MAX197=m
# CONFIG_SENSORS_MAX31722 is not set
# CONFIG_SENSORS_MAX31730 is not set
# CONFIG_SENSORS_MAX6621 is not set
CONFIG_SENSORS_MAX6639=m
CONFIG_SENSORS_MAX6642=m
CONFIG_SENSORS_MAX6650=m
CONFIG_SENSORS_MAX6697=m
# CONFIG_SENSORS_MAX31790 is not set
CONFIG_SENSORS_MCP3021=m
# CONFIG_SENSORS_MLXREG_FAN is not set
# CONFIG_SENSORS_TC654 is not set
# CONFIG_SENSORS_MR75203 is not set
# CONFIG_SENSORS_ADCXX is not set
CONFIG_SENSORS_LM63=m
# CONFIG_SENSORS_LM70 is not set
CONFIG_SENSORS_LM73=m
CONFIG_SENSORS_LM75=m
CONFIG_SENSORS_LM77=m
CONFIG_SENSORS_LM78=m
CONFIG_SENSORS_LM80=m
CONFIG_SENSORS_LM83=m
CONFIG_SENSORS_LM85=m
CONFIG_SENSORS_LM87=m
CONFIG_SENSORS_LM90=m
CONFIG_SENSORS_LM92=m
CONFIG_SENSORS_LM93=m
CONFIG_SENSORS_LM95234=m
CONFIG_SENSORS_LM95241=m
CONFIG_SENSORS_LM95245=m
CONFIG_SENSORS_PC87360=m
CONFIG_SENSORS_PC87427=m
CONFIG_SENSORS_NTC_THERMISTOR=m
# CONFIG_SENSORS_NCT6683 is not set
CONFIG_SENSORS_NCT6775=m
# CONFIG_SENSORS_NCT7802 is not set
# CONFIG_SENSORS_NCT7904 is not set
# CONFIG_SENSORS_NPCM7XX is not set
CONFIG_SENSORS_PCF8591=m
CONFIG_PMBUS=m
CONFIG_SENSORS_PMBUS=m
# CONFIG_SENSORS_ADM1266 is not set
CONFIG_SENSORS_ADM1275=m
# CONFIG_SENSORS_BEL_PFE is not set
# CONFIG_SENSORS_IBM_CFFPS is not set
# CONFIG_SENSORS_INSPUR_IPSPS is not set
# CONFIG_SENSORS_IR35221 is not set
# CONFIG_SENSORS_IR38064 is not set
# CONFIG_SENSORS_IRPS5401 is not set
# CONFIG_SENSORS_ISL68137 is not set
CONFIG_SENSORS_LM25066=m
CONFIG_SENSORS_LTC2978=m
# CONFIG_SENSORS_LTC3815 is not set
CONFIG_SENSORS_MAX16064=m
# CONFIG_SENSORS_MAX16601 is not set
# CONFIG_SENSORS_MAX20730 is not set
# CONFIG_SENSORS_MAX20751 is not set
# CONFIG_SENSORS_MAX31785 is not set
CONFIG_SENSORS_MAX34440=m
CONFIG_SENSORS_MAX8688=m
# CONFIG_SENSORS_MP2975 is not set
# CONFIG_SENSORS_PXE1610 is not set
# CONFIG_SENSORS_TPS40422 is not set
# CONFIG_SENSORS_TPS53679 is not set
CONFIG_SENSORS_UCD9000=m
CONFIG_SENSORS_UCD9200=m
# CONFIG_SENSORS_XDPE122 is not set
CONFIG_SENSORS_ZL6100=m
CONFIG_SENSORS_SHT15=m
CONFIG_SENSORS_SHT21=m
# CONFIG_SENSORS_SHT3x is not set
# CONFIG_SENSORS_SHTC1 is not set
CONFIG_SENSORS_SIS5595=m
CONFIG_SENSORS_DME1737=m
CONFIG_SENSORS_EMC1403=m
# CONFIG_SENSORS_EMC2103 is not set
CONFIG_SENSORS_EMC6W201=m
CONFIG_SENSORS_SMSC47M1=m
CONFIG_SENSORS_SMSC47M192=m
CONFIG_SENSORS_SMSC47B397=m
CONFIG_SENSORS_SCH56XX_COMMON=m
CONFIG_SENSORS_SCH5627=m
CONFIG_SENSORS_SCH5636=m
# CONFIG_SENSORS_STTS751 is not set
# CONFIG_SENSORS_SMM665 is not set
# CONFIG_SENSORS_ADC128D818 is not set
CONFIG_SENSORS_ADS7828=m
# CONFIG_SENSORS_ADS7871 is not set
CONFIG_SENSORS_AMC6821=m
CONFIG_SENSORS_INA209=m
CONFIG_SENSORS_INA2XX=m
# CONFIG_SENSORS_INA3221 is not set
# CONFIG_SENSORS_TC74 is not set
CONFIG_SENSORS_THMC50=m
CONFIG_SENSORS_TMP102=m
# CONFIG_SENSORS_TMP103 is not set
# CONFIG_SENSORS_TMP108 is not set
CONFIG_SENSORS_TMP401=m
CONFIG_SENSORS_TMP421=m
# CONFIG_SENSORS_TMP513 is not set
CONFIG_SENSORS_VIA_CPUTEMP=m
CONFIG_SENSORS_VIA686A=m
CONFIG_SENSORS_VT1211=m
CONFIG_SENSORS_VT8231=m
# CONFIG_SENSORS_W83773G is not set
CONFIG_SENSORS_W83781D=m
CONFIG_SENSORS_W83791D=m
CONFIG_SENSORS_W83792D=m
CONFIG_SENSORS_W83793=m
CONFIG_SENSORS_W83795=m
# CONFIG_SENSORS_W83795_FANCTRL is not set
CONFIG_SENSORS_W83L785TS=m
CONFIG_SENSORS_W83L786NG=m
CONFIG_SENSORS_W83627HF=m
CONFIG_SENSORS_W83627EHF=m
# CONFIG_SENSORS_XGENE is not set

#
# ACPI drivers
#
CONFIG_SENSORS_ACPI_POWER=m
CONFIG_SENSORS_ATK0110=m
CONFIG_THERMAL=y
# CONFIG_THERMAL_NETLINK is not set
# CONFIG_THERMAL_STATISTICS is not set
CONFIG_THERMAL_EMERGENCY_POWEROFF_DELAY_MS=0
CONFIG_THERMAL_HWMON=y
CONFIG_THERMAL_WRITABLE_TRIPS=y
CONFIG_THERMAL_DEFAULT_GOV_STEP_WISE=y
# CONFIG_THERMAL_DEFAULT_GOV_FAIR_SHARE is not set
# CONFIG_THERMAL_DEFAULT_GOV_USER_SPACE is not set
CONFIG_THERMAL_GOV_FAIR_SHARE=y
CONFIG_THERMAL_GOV_STEP_WISE=y
CONFIG_THERMAL_GOV_BANG_BANG=y
CONFIG_THERMAL_GOV_USER_SPACE=y
# CONFIG_THERMAL_EMULATION is not set

#
# Intel thermal drivers
#
CONFIG_INTEL_POWERCLAMP=m
CONFIG_X86_PKG_TEMP_THERMAL=m
CONFIG_INTEL_SOC_DTS_IOSF_CORE=m
# CONFIG_INTEL_SOC_DTS_THERMAL is not set

#
# ACPI INT340X thermal drivers
#
CONFIG_INT340X_THERMAL=m
CONFIG_ACPI_THERMAL_REL=m
# CONFIG_INT3406_THERMAL is not set
CONFIG_PROC_THERMAL_MMIO_RAPL=y
# end of ACPI INT340X thermal drivers

CONFIG_INTEL_PCH_THERMAL=m
# end of Intel thermal drivers

CONFIG_WATCHDOG=y
CONFIG_WATCHDOG_CORE=y
# CONFIG_WATCHDOG_NOWAYOUT is not set
CONFIG_WATCHDOG_HANDLE_BOOT_ENABLED=y
CONFIG_WATCHDOG_OPEN_TIMEOUT=0
CONFIG_WATCHDOG_SYSFS=y

#
# Watchdog Pretimeout Governors
#
# CONFIG_WATCHDOG_PRETIMEOUT_GOV is not set

#
# Watchdog Device Drivers
#
CONFIG_SOFT_WATCHDOG=m
CONFIG_WDAT_WDT=m
# CONFIG_XILINX_WATCHDOG is not set
# CONFIG_ZIIRAVE_WATCHDOG is not set
# CONFIG_MLX_WDT is not set
# CONFIG_CADENCE_WATCHDOG is not set
# CONFIG_DW_WATCHDOG is not set
# CONFIG_MAX63XX_WATCHDOG is not set
# CONFIG_ACQUIRE_WDT is not set
# CONFIG_ADVANTECH_WDT is not set
CONFIG_ALIM1535_WDT=m
CONFIG_ALIM7101_WDT=m
# CONFIG_EBC_C384_WDT is not set
CONFIG_F71808E_WDT=m
CONFIG_SP5100_TCO=m
CONFIG_SBC_FITPC2_WATCHDOG=m
# CONFIG_EUROTECH_WDT is not set
CONFIG_IB700_WDT=m
CONFIG_IBMASR=m
# CONFIG_WAFER_WDT is not set
CONFIG_I6300ESB_WDT=y
CONFIG_IE6XX_WDT=m
CONFIG_ITCO_WDT=y
CONFIG_ITCO_VENDOR_SUPPORT=y
CONFIG_IT8712F_WDT=m
CONFIG_IT87_WDT=m
CONFIG_HP_WATCHDOG=m
CONFIG_HPWDT_NMI_DECODING=y
# CONFIG_SC1200_WDT is not set
# CONFIG_PC87413_WDT is not set
CONFIG_NV_TCO=m
# CONFIG_60XX_WDT is not set
# CONFIG_CPU5_WDT is not set
CONFIG_SMSC_SCH311X_WDT=m
# CONFIG_SMSC37B787_WDT is not set
# CONFIG_TQMX86_WDT is not set
CONFIG_VIA_WDT=m
CONFIG_W83627HF_WDT=m
CONFIG_W83877F_WDT=m
CONFIG_W83977F_WDT=m
CONFIG_MACHZ_WDT=m
# CONFIG_SBC_EPX_C3_WATCHDOG is not set
CONFIG_INTEL_MEI_WDT=m
# CONFIG_NI903X_WDT is not set
# CONFIG_NIC7018_WDT is not set
# CONFIG_MEN_A21_WDT is not set
CONFIG_XEN_WDT=m

#
# PCI-based Watchdog Cards
#
CONFIG_PCIPCWATCHDOG=m
CONFIG_WDTPCI=m

#
# USB-based Watchdog Cards
#
# CONFIG_USBPCWATCHDOG is not set
CONFIG_SSB_POSSIBLE=y
# CONFIG_SSB is not set
CONFIG_BCMA_POSSIBLE=y
CONFIG_BCMA=m
CONFIG_BCMA_HOST_PCI_POSSIBLE=y
CONFIG_BCMA_HOST_PCI=y
# CONFIG_BCMA_HOST_SOC is not set
CONFIG_BCMA_DRIVER_PCI=y
CONFIG_BCMA_DRIVER_GMAC_CMN=y
CONFIG_BCMA_DRIVER_GPIO=y
# CONFIG_BCMA_DEBUG is not set

#
# Multifunction device drivers
#
CONFIG_MFD_CORE=y
# CONFIG_MFD_AS3711 is not set
# CONFIG_PMIC_ADP5520 is not set
# CONFIG_MFD_AAT2870_CORE is not set
# CONFIG_MFD_BCM590XX is not set
# CONFIG_MFD_BD9571MWV is not set
# CONFIG_MFD_AXP20X_I2C is not set
# CONFIG_MFD_MADERA is not set
# CONFIG_PMIC_DA903X is not set
# CONFIG_MFD_DA9052_SPI is not set
# CONFIG_MFD_DA9052_I2C is not set
# CONFIG_MFD_DA9055 is not set
# CONFIG_MFD_DA9062 is not set
# CONFIG_MFD_DA9063 is not set
# CONFIG_MFD_DA9150 is not set
# CONFIG_MFD_DLN2 is not set
# CONFIG_MFD_MC13XXX_SPI is not set
# CONFIG_MFD_MC13XXX_I2C is not set
# CONFIG_MFD_MP2629 is not set
# CONFIG_HTC_PASIC3 is not set
# CONFIG_HTC_I2CPLD is not set
# CONFIG_MFD_INTEL_QUARK_I2C_GPIO is not set
CONFIG_LPC_ICH=y
CONFIG_LPC_SCH=m
# CONFIG_INTEL_SOC_PMIC_CHTDC_TI is not set
CONFIG_MFD_INTEL_LPSS=y
CONFIG_MFD_INTEL_LPSS_ACPI=y
CONFIG_MFD_INTEL_LPSS_PCI=y
# CONFIG_MFD_INTEL_PMC_BXT is not set
# CONFIG_MFD_IQS62X is not set
# CONFIG_MFD_JANZ_CMODIO is not set
# CONFIG_MFD_KEMPLD is not set
# CONFIG_MFD_88PM800 is not set
# CONFIG_MFD_88PM805 is not set
# CONFIG_MFD_88PM860X is not set
# CONFIG_MFD_MAX14577 is not set
# CONFIG_MFD_MAX77693 is not set
# CONFIG_MFD_MAX77843 is not set
# CONFIG_MFD_MAX8907 is not set
# CONFIG_MFD_MAX8925 is not set
# CONFIG_MFD_MAX8997 is not set
# CONFIG_MFD_MAX8998 is not set
# CONFIG_MFD_MT6360 is not set
# CONFIG_MFD_MT6397 is not set
# CONFIG_MFD_MENF21BMC is not set
# CONFIG_EZX_PCAP is not set
# CONFIG_MFD_VIPERBOARD is not set
# CONFIG_MFD_RETU is not set
# CONFIG_MFD_PCF50633 is not set
# CONFIG_MFD_RDC321X is not set
# CONFIG_MFD_RT5033 is not set
# CONFIG_MFD_RC5T583 is not set
# CONFIG_MFD_SEC_CORE is not set
# CONFIG_MFD_SI476X_CORE is not set
# CONFIG_MFD_SL28CPLD is not set
CONFIG_MFD_SM501=m
CONFIG_MFD_SM501_GPIO=y
# CONFIG_MFD_SKY81452 is not set
# CONFIG_ABX500_CORE is not set
# CONFIG_MFD_SYSCON is not set
# CONFIG_MFD_TI_AM335X_TSCADC is not set
# CONFIG_MFD_LP3943 is not set
# CONFIG_MFD_LP8788 is not set
# CONFIG_MFD_TI_LMU is not set
# CONFIG_MFD_PALMAS is not set
# CONFIG_TPS6105X is not set
# CONFIG_TPS65010 is not set
# CONFIG_TPS6507X is not set
# CONFIG_MFD_TPS65086 is not set
# CONFIG_MFD_TPS65090 is not set
# CONFIG_MFD_TI_LP873X is not set
# CONFIG_MFD_TPS6586X is not set
# CONFIG_MFD_TPS65910 is not set
# CONFIG_MFD_TPS65912_I2C is not set
# CONFIG_MFD_TPS65912_SPI is not set
# CONFIG_MFD_TPS80031 is not set
# CONFIG_TWL4030_CORE is not set
# CONFIG_TWL6040_CORE is not set
# CONFIG_MFD_WL1273_CORE is not set
# CONFIG_MFD_LM3533 is not set
# CONFIG_MFD_TQMX86 is not set
CONFIG_MFD_VX855=m
# CONFIG_MFD_ARIZONA_I2C is not set
# CONFIG_MFD_ARIZONA_SPI is not set
# CONFIG_MFD_WM8400 is not set
# CONFIG_MFD_WM831X_I2C is not set
# CONFIG_MFD_WM831X_SPI is not set
# CONFIG_MFD_WM8350_I2C is not set
# CONFIG_MFD_WM8994 is not set
# CONFIG_MFD_INTEL_M10_BMC is not set
# end of Multifunction device drivers

# CONFIG_REGULATOR is not set
CONFIG_RC_CORE=m
CONFIG_RC_MAP=m
CONFIG_LIRC=y
CONFIG_RC_DECODERS=y
CONFIG_IR_NEC_DECODER=m
CONFIG_IR_RC5_DECODER=m
CONFIG_IR_RC6_DECODER=m
CONFIG_IR_JVC_DECODER=m
CONFIG_IR_SONY_DECODER=m
CONFIG_IR_SANYO_DECODER=m
# CONFIG_IR_SHARP_DECODER is not set
CONFIG_IR_MCE_KBD_DECODER=m
# CONFIG_IR_XMP_DECODER is not set
CONFIG_IR_IMON_DECODER=m
# CONFIG_IR_RCMM_DECODER is not set
CONFIG_RC_DEVICES=y
# CONFIG_RC_ATI_REMOTE is not set
CONFIG_IR_ENE=m
# CONFIG_IR_IMON is not set
# CONFIG_IR_IMON_RAW is not set
# CONFIG_IR_MCEUSB is not set
CONFIG_IR_ITE_CIR=m
CONFIG_IR_FINTEK=m
CONFIG_IR_NUVOTON=m
# CONFIG_IR_REDRAT3 is not set
# CONFIG_IR_STREAMZAP is not set
CONFIG_IR_WINBOND_CIR=m
# CONFIG_IR_IGORPLUGUSB is not set
# CONFIG_IR_IGUANA is not set
# CONFIG_IR_TTUSBIR is not set
# CONFIG_RC_LOOPBACK is not set
CONFIG_IR_SERIAL=m
CONFIG_IR_SERIAL_TRANSMITTER=y
CONFIG_IR_SIR=m
# CONFIG_RC_XBOX_DVD is not set
# CONFIG_IR_TOY is not set
CONFIG_MEDIA_CEC_SUPPORT=y
# CONFIG_CEC_CH7322 is not set
# CONFIG_CEC_SECO is not set
# CONFIG_USB_PULSE8_CEC is not set
# CONFIG_USB_RAINSHADOW_CEC is not set
CONFIG_MEDIA_SUPPORT=m
# CONFIG_MEDIA_SUPPORT_FILTER is not set
# CONFIG_MEDIA_SUBDRV_AUTOSELECT is not set

#
# Media device types
#
CONFIG_MEDIA_CAMERA_SUPPORT=y
CONFIG_MEDIA_ANALOG_TV_SUPPORT=y
CONFIG_MEDIA_DIGITAL_TV_SUPPORT=y
CONFIG_MEDIA_RADIO_SUPPORT=y
CONFIG_MEDIA_SDR_SUPPORT=y
CONFIG_MEDIA_PLATFORM_SUPPORT=y
CONFIG_MEDIA_TEST_SUPPORT=y
# end of Media device types

#
# Media core support
#
CONFIG_VIDEO_DEV=m
CONFIG_MEDIA_CONTROLLER=y
CONFIG_DVB_CORE=m
# end of Media core support

#
# Video4Linux options
#
CONFIG_VIDEO_V4L2=m
CONFIG_VIDEO_V4L2_I2C=y
CONFIG_VIDEO_V4L2_SUBDEV_API=y
# CONFIG_VIDEO_ADV_DEBUG is not set
# CONFIG_VIDEO_FIXED_MINOR_RANGES is not set
# end of Video4Linux options

#
# Media controller options
#
# CONFIG_MEDIA_CONTROLLER_DVB is not set
# end of Media controller options

#
# Digital TV options
#
# CONFIG_DVB_MMAP is not set
CONFIG_DVB_NET=y
CONFIG_DVB_MAX_ADAPTERS=16
CONFIG_DVB_DYNAMIC_MINORS=y
# CONFIG_DVB_DEMUX_SECTION_LOSS_LOG is not set
# CONFIG_DVB_ULE_DEBUG is not set
# end of Digital TV options

#
# Media drivers
#
# CONFIG_MEDIA_USB_SUPPORT is not set
# CONFIG_MEDIA_PCI_SUPPORT is not set
CONFIG_RADIO_ADAPTERS=y
# CONFIG_RADIO_SI470X is not set
# CONFIG_RADIO_SI4713 is not set
# CONFIG_USB_MR800 is not set
# CONFIG_USB_DSBR is not set
# CONFIG_RADIO_MAXIRADIO is not set
# CONFIG_RADIO_SHARK is not set
# CONFIG_RADIO_SHARK2 is not set
# CONFIG_USB_KEENE is not set
# CONFIG_USB_RAREMONO is not set
# CONFIG_USB_MA901 is not set
# CONFIG_RADIO_TEA5764 is not set
# CONFIG_RADIO_SAA7706H is not set
# CONFIG_RADIO_TEF6862 is not set
# CONFIG_RADIO_WL1273 is not set
CONFIG_VIDEOBUF2_CORE=m
CONFIG_VIDEOBUF2_V4L2=m
CONFIG_VIDEOBUF2_MEMOPS=m
CONFIG_VIDEOBUF2_VMALLOC=m
# CONFIG_V4L_PLATFORM_DRIVERS is not set
# CONFIG_V4L_MEM2MEM_DRIVERS is not set
# CONFIG_DVB_PLATFORM_DRIVERS is not set
# CONFIG_SDR_PLATFORM_DRIVERS is not set

#
# MMC/SDIO DVB adapters
#
# CONFIG_SMS_SDIO_DRV is not set
# CONFIG_V4L_TEST_DRIVERS is not set
# CONFIG_DVB_TEST_DRIVERS is not set

#
# FireWire (IEEE 1394) Adapters
#
# CONFIG_DVB_FIREDTV is not set
# end of Media drivers

#
# Media ancillary drivers
#
CONFIG_MEDIA_ATTACH=y
CONFIG_VIDEO_IR_I2C=m

#
# Audio decoders, processors and mixers
#
# CONFIG_VIDEO_TVAUDIO is not set
# CONFIG_VIDEO_TDA7432 is not set
# CONFIG_VIDEO_TDA9840 is not set
# CONFIG_VIDEO_TEA6415C is not set
# CONFIG_VIDEO_TEA6420 is not set
# CONFIG_VIDEO_MSP3400 is not set
# CONFIG_VIDEO_CS3308 is not set
# CONFIG_VIDEO_CS5345 is not set
# CONFIG_VIDEO_CS53L32A is not set
# CONFIG_VIDEO_TLV320AIC23B is not set
# CONFIG_VIDEO_UDA1342 is not set
# CONFIG_VIDEO_WM8775 is not set
# CONFIG_VIDEO_WM8739 is not set
# CONFIG_VIDEO_VP27SMPX is not set
# CONFIG_VIDEO_SONY_BTF_MPX is not set
# end of Audio decoders, processors and mixers

#
# RDS decoders
#
# CONFIG_VIDEO_SAA6588 is not set
# end of RDS decoders

#
# Video decoders
#
# CONFIG_VIDEO_ADV7180 is not set
# CONFIG_VIDEO_ADV7183 is not set
# CONFIG_VIDEO_ADV7604 is not set
# CONFIG_VIDEO_ADV7842 is not set
# CONFIG_VIDEO_BT819 is not set
# CONFIG_VIDEO_BT856 is not set
# CONFIG_VIDEO_BT866 is not set
# CONFIG_VIDEO_KS0127 is not set
# CONFIG_VIDEO_ML86V7667 is not set
# CONFIG_VIDEO_SAA7110 is not set
# CONFIG_VIDEO_SAA711X is not set
# CONFIG_VIDEO_TC358743 is not set
# CONFIG_VIDEO_TVP514X is not set
# CONFIG_VIDEO_TVP5150 is not set
# CONFIG_VIDEO_TVP7002 is not set
# CONFIG_VIDEO_TW2804 is not set
# CONFIG_VIDEO_TW9903 is not set
# CONFIG_VIDEO_TW9906 is not set
# CONFIG_VIDEO_TW9910 is not set
# CONFIG_VIDEO_VPX3220 is not set

#
# Video and audio decoders
#
# CONFIG_VIDEO_SAA717X is not set
# CONFIG_VIDEO_CX25840 is not set
# end of Video decoders

#
# Video encoders
#
# CONFIG_VIDEO_SAA7127 is not set
# CONFIG_VIDEO_SAA7185 is not set
# CONFIG_VIDEO_ADV7170 is not set
# CONFIG_VIDEO_ADV7175 is not set
# CONFIG_VIDEO_ADV7343 is not set
# CONFIG_VIDEO_ADV7393 is not set
# CONFIG_VIDEO_ADV7511 is not set
# CONFIG_VIDEO_AD9389B is not set
# CONFIG_VIDEO_AK881X is not set
# CONFIG_VIDEO_THS8200 is not set
# end of Video encoders

#
# Video improvement chips
#
# CONFIG_VIDEO_UPD64031A is not set
# CONFIG_VIDEO_UPD64083 is not set
# end of Video improvement chips

#
# Audio/Video compression chips
#
# CONFIG_VIDEO_SAA6752HS is not set
# end of Audio/Video compression chips

#
# SDR tuner chips
#
# CONFIG_SDR_MAX2175 is not set
# end of SDR tuner chips

#
# Miscellaneous helper chips
#
# CONFIG_VIDEO_THS7303 is not set
# CONFIG_VIDEO_M52790 is not set
# CONFIG_VIDEO_I2C is not set
# CONFIG_VIDEO_ST_MIPID02 is not set
# end of Miscellaneous helper chips

#
# Camera sensor devices
#
# CONFIG_VIDEO_HI556 is not set
# CONFIG_VIDEO_IMX214 is not set
# CONFIG_VIDEO_IMX219 is not set
# CONFIG_VIDEO_IMX258 is not set
# CONFIG_VIDEO_IMX274 is not set
# CONFIG_VIDEO_IMX290 is not set
# CONFIG_VIDEO_IMX319 is not set
# CONFIG_VIDEO_IMX355 is not set
# CONFIG_VIDEO_OV2640 is not set
# CONFIG_VIDEO_OV2659 is not set
# CONFIG_VIDEO_OV2680 is not set
# CONFIG_VIDEO_OV2685 is not set
# CONFIG_VIDEO_OV2740 is not set
# CONFIG_VIDEO_OV5647 is not set
# CONFIG_VIDEO_OV6650 is not set
# CONFIG_VIDEO_OV5670 is not set
# CONFIG_VIDEO_OV5675 is not set
# CONFIG_VIDEO_OV5695 is not set
# CONFIG_VIDEO_OV7251 is not set
# CONFIG_VIDEO_OV772X is not set
# CONFIG_VIDEO_OV7640 is not set
# CONFIG_VIDEO_OV7670 is not set
# CONFIG_VIDEO_OV7740 is not set
# CONFIG_VIDEO_OV8856 is not set
# CONFIG_VIDEO_OV9640 is not set
# CONFIG_VIDEO_OV9650 is not set
# CONFIG_VIDEO_OV13858 is not set
# CONFIG_VIDEO_VS6624 is not set
# CONFIG_VIDEO_MT9M001 is not set
# CONFIG_VIDEO_MT9M032 is not set
# CONFIG_VIDEO_MT9M111 is not set
# CONFIG_VIDEO_MT9P031 is not set
# CONFIG_VIDEO_MT9T001 is not set
# CONFIG_VIDEO_MT9T112 is not set
# CONFIG_VIDEO_MT9V011 is not set
# CONFIG_VIDEO_MT9V032 is not set
# CONFIG_VIDEO_MT9V111 is not set
# CONFIG_VIDEO_SR030PC30 is not set
# CONFIG_VIDEO_NOON010PC30 is not set
# CONFIG_VIDEO_M5MOLS is not set
# CONFIG_VIDEO_RDACM20 is not set
# CONFIG_VIDEO_RJ54N1 is not set
# CONFIG_VIDEO_S5K6AA is not set
# CONFIG_VIDEO_S5K6A3 is not set
# CONFIG_VIDEO_S5K4ECGX is not set
# CONFIG_VIDEO_S5K5BAF is not set
# CONFIG_VIDEO_SMIAPP is not set
# CONFIG_VIDEO_ET8EK8 is not set
# CONFIG_VIDEO_S5C73M3 is not set
# end of Camera sensor devices

#
# Lens drivers
#
# CONFIG_VIDEO_AD5820 is not set
# CONFIG_VIDEO_AK7375 is not set
# CONFIG_VIDEO_DW9714 is not set
# CONFIG_VIDEO_DW9768 is not set
# CONFIG_VIDEO_DW9807_VCM is not set
# end of Lens drivers

#
# Flash devices
#
# CONFIG_VIDEO_ADP1653 is not set
# CONFIG_VIDEO_LM3560 is not set
# CONFIG_VIDEO_LM3646 is not set
# end of Flash devices

#
# SPI helper chips
#
# CONFIG_VIDEO_GS1662 is not set
# end of SPI helper chips

#
# Media SPI Adapters
#
CONFIG_CXD2880_SPI_DRV=m
# end of Media SPI Adapters

CONFIG_MEDIA_TUNER=m

#
# Customize TV tuners
#
CONFIG_MEDIA_TUNER_SIMPLE=m
CONFIG_MEDIA_TUNER_TDA18250=m
CONFIG_MEDIA_TUNER_TDA8290=m
CONFIG_MEDIA_TUNER_TDA827X=m
CONFIG_MEDIA_TUNER_TDA18271=m
CONFIG_MEDIA_TUNER_TDA9887=m
CONFIG_MEDIA_TUNER_TEA5761=m
CONFIG_MEDIA_TUNER_TEA5767=m
CONFIG_MEDIA_TUNER_MSI001=m
CONFIG_MEDIA_TUNER_MT20XX=m
CONFIG_MEDIA_TUNER_MT2060=m
CONFIG_MEDIA_TUNER_MT2063=m
CONFIG_MEDIA_TUNER_MT2266=m
CONFIG_MEDIA_TUNER_MT2131=m
CONFIG_MEDIA_TUNER_QT1010=m
CONFIG_MEDIA_TUNER_XC2028=m
CONFIG_MEDIA_TUNER_XC5000=m
CONFIG_MEDIA_TUNER_XC4000=m
CONFIG_MEDIA_TUNER_MXL5005S=m
CONFIG_MEDIA_TUNER_MXL5007T=m
CONFIG_MEDIA_TUNER_MC44S803=m
CONFIG_MEDIA_TUNER_MAX2165=m
CONFIG_MEDIA_TUNER_TDA18218=m
CONFIG_MEDIA_TUNER_FC0011=m
CONFIG_MEDIA_TUNER_FC0012=m
CONFIG_MEDIA_TUNER_FC0013=m
CONFIG_MEDIA_TUNER_TDA18212=m
CONFIG_MEDIA_TUNER_E4000=m
CONFIG_MEDIA_TUNER_FC2580=m
CONFIG_MEDIA_TUNER_M88RS6000T=m
CONFIG_MEDIA_TUNER_TUA9001=m
CONFIG_MEDIA_TUNER_SI2157=m
CONFIG_MEDIA_TUNER_IT913X=m
CONFIG_MEDIA_TUNER_R820T=m
CONFIG_MEDIA_TUNER_MXL301RF=m
CONFIG_MEDIA_TUNER_QM1D1C0042=m
CONFIG_MEDIA_TUNER_QM1D1B0004=m
# end of Customize TV tuners

#
# Customise DVB Frontends
#

#
# Multistandard (satellite) frontends
#
CONFIG_DVB_STB0899=m
CONFIG_DVB_STB6100=m
CONFIG_DVB_STV090x=m
CONFIG_DVB_STV0910=m
CONFIG_DVB_STV6110x=m
CONFIG_DVB_STV6111=m
CONFIG_DVB_MXL5XX=m
CONFIG_DVB_M88DS3103=m

#
# Multistandard (cable + terrestrial) frontends
#
CONFIG_DVB_DRXK=m
CONFIG_DVB_TDA18271C2DD=m
CONFIG_DVB_SI2165=m
CONFIG_DVB_MN88472=m
CONFIG_DVB_MN88473=m

#
# DVB-S (satellite) frontends
#
CONFIG_DVB_CX24110=m
CONFIG_DVB_CX24123=m
CONFIG_DVB_MT312=m
CONFIG_DVB_ZL10036=m
CONFIG_DVB_ZL10039=m
CONFIG_DVB_S5H1420=m
CONFIG_DVB_STV0288=m
CONFIG_DVB_STB6000=m
CONFIG_DVB_STV0299=m
CONFIG_DVB_STV6110=m
CONFIG_DVB_STV0900=m
CONFIG_DVB_TDA8083=m
CONFIG_DVB_TDA10086=m
CONFIG_DVB_TDA8261=m
CONFIG_DVB_VES1X93=m
CONFIG_DVB_TUNER_ITD1000=m
CONFIG_DVB_TUNER_CX24113=m
CONFIG_DVB_TDA826X=m
CONFIG_DVB_TUA6100=m
CONFIG_DVB_CX24116=m
CONFIG_DVB_CX24117=m
CONFIG_DVB_CX24120=m
CONFIG_DVB_SI21XX=m
CONFIG_DVB_TS2020=m
CONFIG_DVB_DS3000=m
CONFIG_DVB_MB86A16=m
CONFIG_DVB_TDA10071=m

#
# DVB-T (terrestrial) frontends
#
CONFIG_DVB_SP8870=m
CONFIG_DVB_SP887X=m
CONFIG_DVB_CX22700=m
CONFIG_DVB_CX22702=m
CONFIG_DVB_S5H1432=m
CONFIG_DVB_DRXD=m
CONFIG_DVB_L64781=m
CONFIG_DVB_TDA1004X=m
CONFIG_DVB_NXT6000=m
CONFIG_DVB_MT352=m
CONFIG_DVB_ZL10353=m
CONFIG_DVB_DIB3000MB=m
CONFIG_DVB_DIB3000MC=m
CONFIG_DVB_DIB7000M=m
CONFIG_DVB_DIB7000P=m
CONFIG_DVB_DIB9000=m
CONFIG_DVB_TDA10048=m
CONFIG_DVB_AF9013=m
CONFIG_DVB_EC100=m
CONFIG_DVB_STV0367=m
CONFIG_DVB_CXD2820R=m
CONFIG_DVB_CXD2841ER=m
CONFIG_DVB_RTL2830=m
CONFIG_DVB_RTL2832=m
CONFIG_DVB_RTL2832_SDR=m
CONFIG_DVB_SI2168=m
CONFIG_DVB_ZD1301_DEMOD=m
CONFIG_DVB_CXD2880=m

#
# DVB-C (cable) frontends
#
CONFIG_DVB_VES1820=m
CONFIG_DVB_TDA10021=m
CONFIG_DVB_TDA10023=m
CONFIG_DVB_STV0297=m

#
# ATSC (North American/Korean Terrestrial/Cable DTV) frontends
#
CONFIG_DVB_NXT200X=m
CONFIG_DVB_OR51211=m
CONFIG_DVB_OR51132=m
CONFIG_DVB_BCM3510=m
CONFIG_DVB_LGDT330X=m
CONFIG_DVB_LGDT3305=m
CONFIG_DVB_LGDT3306A=m
CONFIG_DVB_LG2160=m
CONFIG_DVB_S5H1409=m
CONFIG_DVB_AU8522=m
CONFIG_DVB_AU8522_DTV=m
CONFIG_DVB_AU8522_V4L=m
CONFIG_DVB_S5H1411=m

#
# ISDB-T (terrestrial) frontends
#
CONFIG_DVB_S921=m
CONFIG_DVB_DIB8000=m
CONFIG_DVB_MB86A20S=m

#
# ISDB-S (satellite) & ISDB-T (terrestrial) frontends
#
CONFIG_DVB_TC90522=m
CONFIG_DVB_MN88443X=m

#
# Digital terrestrial only tuners/PLL
#
CONFIG_DVB_PLL=m
CONFIG_DVB_TUNER_DIB0070=m
CONFIG_DVB_TUNER_DIB0090=m

#
# SEC control devices for DVB-S
#
CONFIG_DVB_DRX39XYJ=m
CONFIG_DVB_LNBH25=m
CONFIG_DVB_LNBH29=m
CONFIG_DVB_LNBP21=m
CONFIG_DVB_LNBP22=m
CONFIG_DVB_ISL6405=m
CONFIG_DVB_ISL6421=m
CONFIG_DVB_ISL6423=m
CONFIG_DVB_A8293=m
CONFIG_DVB_LGS8GL5=m
CONFIG_DVB_LGS8GXX=m
CONFIG_DVB_ATBM8830=m
CONFIG_DVB_TDA665x=m
CONFIG_DVB_IX2505V=m
CONFIG_DVB_M88RS2000=m
CONFIG_DVB_AF9033=m
CONFIG_DVB_HORUS3A=m
CONFIG_DVB_ASCOT2E=m
CONFIG_DVB_HELENE=m

#
# Common Interface (EN50221) controller drivers
#
CONFIG_DVB_CXD2099=m
CONFIG_DVB_SP2=m
# end of Customise DVB Frontends

#
# Tools to develop new frontends
#
# CONFIG_DVB_DUMMY_FE is not set
# end of Media ancillary drivers

#
# Graphics support
#
# CONFIG_AGP is not set
CONFIG_INTEL_GTT=m
CONFIG_VGA_ARB=y
CONFIG_VGA_ARB_MAX_GPUS=64
CONFIG_VGA_SWITCHEROO=y
CONFIG_DRM=m
CONFIG_DRM_MIPI_DSI=y
CONFIG_DRM_DP_AUX_CHARDEV=y
# CONFIG_DRM_DEBUG_SELFTEST is not set
CONFIG_DRM_KMS_HELPER=m
CONFIG_DRM_KMS_FB_HELPER=y
CONFIG_DRM_FBDEV_EMULATION=y
CONFIG_DRM_FBDEV_OVERALLOC=100
CONFIG_DRM_LOAD_EDID_FIRMWARE=y
# CONFIG_DRM_DP_CEC is not set
CONFIG_DRM_TTM=m
CONFIG_DRM_VRAM_HELPER=m
CONFIG_DRM_TTM_HELPER=m
CONFIG_DRM_GEM_SHMEM_HELPER=y

#
# I2C encoder or helper chips
#
CONFIG_DRM_I2C_CH7006=m
CONFIG_DRM_I2C_SIL164=m
# CONFIG_DRM_I2C_NXP_TDA998X is not set
# CONFIG_DRM_I2C_NXP_TDA9950 is not set
# end of I2C encoder or helper chips

#
# ARM devices
#
# end of ARM devices

# CONFIG_DRM_RADEON is not set
# CONFIG_DRM_AMDGPU is not set
# CONFIG_DRM_NOUVEAU is not set
CONFIG_DRM_I915=m
CONFIG_DRM_I915_FORCE_PROBE=""
CONFIG_DRM_I915_CAPTURE_ERROR=y
CONFIG_DRM_I915_COMPRESS_ERROR=y
CONFIG_DRM_I915_USERPTR=y
CONFIG_DRM_I915_GVT=y
CONFIG_DRM_I915_GVT_KVMGT=m
CONFIG_DRM_I915_FENCE_TIMEOUT=10000
CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND=250
CONFIG_DRM_I915_HEARTBEAT_INTERVAL=2500
CONFIG_DRM_I915_PREEMPT_TIMEOUT=640
CONFIG_DRM_I915_MAX_REQUEST_BUSYWAIT=8000
CONFIG_DRM_I915_STOP_TIMEOUT=100
CONFIG_DRM_I915_TIMESLICE_DURATION=1
# CONFIG_DRM_VGEM is not set
# CONFIG_DRM_VKMS is not set
CONFIG_DRM_VMWGFX=m
CONFIG_DRM_VMWGFX_FBCON=y
CONFIG_DRM_GMA500=m
CONFIG_DRM_GMA600=y
CONFIG_DRM_GMA3600=y
# CONFIG_DRM_UDL is not set
CONFIG_DRM_AST=m
CONFIG_DRM_MGAG200=m
CONFIG_DRM_QXL=m
CONFIG_DRM_BOCHS=m
CONFIG_DRM_VIRTIO_GPU=m
CONFIG_DRM_PANEL=y

#
# Display Panels
#
# CONFIG_DRM_PANEL_RASPBERRYPI_TOUCHSCREEN is not set
# end of Display Panels

CONFIG_DRM_BRIDGE=y
CONFIG_DRM_PANEL_BRIDGE=y

#
# Display Interface Bridges
#
# CONFIG_DRM_ANALOGIX_ANX78XX is not set
# end of Display Interface Bridges

# CONFIG_DRM_ETNAVIV is not set
CONFIG_DRM_CIRRUS_QEMU=m
# CONFIG_DRM_GM12U320 is not set
# CONFIG_TINYDRM_HX8357D is not set
# CONFIG_TINYDRM_ILI9225 is not set
# CONFIG_TINYDRM_ILI9341 is not set
# CONFIG_TINYDRM_ILI9486 is not set
# CONFIG_TINYDRM_MI0283QT is not set
# CONFIG_TINYDRM_REPAPER is not set
# CONFIG_TINYDRM_ST7586 is not set
# CONFIG_TINYDRM_ST7735R is not set
# CONFIG_DRM_XEN is not set
# CONFIG_DRM_VBOXVIDEO is not set
# CONFIG_DRM_LEGACY is not set
CONFIG_DRM_PANEL_ORIENTATION_QUIRKS=y

#
# Frame buffer Devices
#
CONFIG_FB_CMDLINE=y
CONFIG_FB_NOTIFY=y
CONFIG_FB=y
# CONFIG_FIRMWARE_EDID is not set
CONFIG_FB_BOOT_VESA_SUPPORT=y
CONFIG_FB_CFB_FILLRECT=y
CONFIG_FB_CFB_COPYAREA=y
CONFIG_FB_CFB_IMAGEBLIT=y
CONFIG_FB_SYS_FILLRECT=m
CONFIG_FB_SYS_COPYAREA=m
CONFIG_FB_SYS_IMAGEBLIT=m
# CONFIG_FB_FOREIGN_ENDIAN is not set
CONFIG_FB_SYS_FOPS=m
CONFIG_FB_DEFERRED_IO=y
# CONFIG_FB_MODE_HELPERS is not set
CONFIG_FB_TILEBLITTING=y

#
# Frame buffer hardware drivers
#
# CONFIG_FB_CIRRUS is not set
# CONFIG_FB_PM2 is not set
# CONFIG_FB_CYBER2000 is not set
# CONFIG_FB_ARC is not set
# CONFIG_FB_ASILIANT is not set
# CONFIG_FB_IMSTT is not set
# CONFIG_FB_VGA16 is not set
# CONFIG_FB_UVESA is not set
CONFIG_FB_VESA=y
CONFIG_FB_EFI=y
# CONFIG_FB_N411 is not set
# CONFIG_FB_HGA is not set
# CONFIG_FB_OPENCORES is not set
# CONFIG_FB_S1D13XXX is not set
# CONFIG_FB_NVIDIA is not set
# CONFIG_FB_RIVA is not set
# CONFIG_FB_I740 is not set
# CONFIG_FB_LE80578 is not set
# CONFIG_FB_MATROX is not set
# CONFIG_FB_RADEON is not set
# CONFIG_FB_ATY128 is not set
# CONFIG_FB_ATY is not set
# CONFIG_FB_S3 is not set
# CONFIG_FB_SAVAGE is not set
# CONFIG_FB_SIS is not set
# CONFIG_FB_VIA is not set
# CONFIG_FB_NEOMAGIC is not set
# CONFIG_FB_KYRO is not set
# CONFIG_FB_3DFX is not set
# CONFIG_FB_VOODOO1 is not set
# CONFIG_FB_VT8623 is not set
# CONFIG_FB_TRIDENT is not set
# CONFIG_FB_ARK is not set
# CONFIG_FB_PM3 is not set
# CONFIG_FB_CARMINE is not set
# CONFIG_FB_SM501 is not set
# CONFIG_FB_SMSCUFX is not set
# CONFIG_FB_UDL is not set
# CONFIG_FB_IBM_GXT4500 is not set
# CONFIG_FB_VIRTUAL is not set
# CONFIG_XEN_FBDEV_FRONTEND is not set
# CONFIG_FB_METRONOME is not set
# CONFIG_FB_MB862XX is not set
CONFIG_FB_HYPERV=m
# CONFIG_FB_SIMPLE is not set
# CONFIG_FB_SM712 is not set
# end of Frame buffer Devices

#
# Backlight & LCD device support
#
CONFIG_LCD_CLASS_DEVICE=m
# CONFIG_LCD_L4F00242T03 is not set
# CONFIG_LCD_LMS283GF05 is not set
# CONFIG_LCD_LTV350QV is not set
# CONFIG_LCD_ILI922X is not set
# CONFIG_LCD_ILI9320 is not set
# CONFIG_LCD_TDO24M is not set
# CONFIG_LCD_VGG2432A4 is not set
CONFIG_LCD_PLATFORM=m
# CONFIG_LCD_AMS369FG06 is not set
# CONFIG_LCD_LMS501KF03 is not set
# CONFIG_LCD_HX8357 is not set
# CONFIG_LCD_OTM3225A is not set
CONFIG_BACKLIGHT_CLASS_DEVICE=y
# CONFIG_BACKLIGHT_KTD253 is not set
# CONFIG_BACKLIGHT_PWM is not set
CONFIG_BACKLIGHT_APPLE=m
# CONFIG_BACKLIGHT_QCOM_WLED is not set
# CONFIG_BACKLIGHT_SAHARA is not set
# CONFIG_BACKLIGHT_ADP8860 is not set
# CONFIG_BACKLIGHT_ADP8870 is not set
# CONFIG_BACKLIGHT_LM3630A is not set
# CONFIG_BACKLIGHT_LM3639 is not set
CONFIG_BACKLIGHT_LP855X=m
# CONFIG_BACKLIGHT_GPIO is not set
# CONFIG_BACKLIGHT_LV5207LP is not set
# CONFIG_BACKLIGHT_BD6107 is not set
# CONFIG_BACKLIGHT_ARCXCNN is not set
# end of Backlight & LCD device support

CONFIG_HDMI=y

#
# Console display driver support
#
CONFIG_VGA_CONSOLE=y
CONFIG_DUMMY_CONSOLE=y
CONFIG_DUMMY_CONSOLE_COLUMNS=80
CONFIG_DUMMY_CONSOLE_ROWS=25
CONFIG_FRAMEBUFFER_CONSOLE=y
CONFIG_FRAMEBUFFER_CONSOLE_DETECT_PRIMARY=y
CONFIG_FRAMEBUFFER_CONSOLE_ROTATION=y
# CONFIG_FRAMEBUFFER_CONSOLE_DEFERRED_TAKEOVER is not set
# end of Console display driver support

CONFIG_LOGO=y
# CONFIG_LOGO_LINUX_MONO is not set
# CONFIG_LOGO_LINUX_VGA16 is not set
CONFIG_LOGO_LINUX_CLUT224=y
# end of Graphics support

# CONFIG_SOUND is not set

#
# HID support
#
CONFIG_HID=y
CONFIG_HID_BATTERY_STRENGTH=y
CONFIG_HIDRAW=y
CONFIG_UHID=m
CONFIG_HID_GENERIC=y

#
# Special HID drivers
#
CONFIG_HID_A4TECH=m
# CONFIG_HID_ACCUTOUCH is not set
CONFIG_HID_ACRUX=m
# CONFIG_HID_ACRUX_FF is not set
CONFIG_HID_APPLE=m
# CONFIG_HID_APPLEIR is not set
CONFIG_HID_ASUS=m
CONFIG_HID_AUREAL=m
CONFIG_HID_BELKIN=m
# CONFIG_HID_BETOP_FF is not set
# CONFIG_HID_BIGBEN_FF is not set
CONFIG_HID_CHERRY=m
CONFIG_HID_CHICONY=m
# CONFIG_HID_CORSAIR is not set
# CONFIG_HID_COUGAR is not set
# CONFIG_HID_MACALLY is not set
CONFIG_HID_CMEDIA=m
# CONFIG_HID_CP2112 is not set
# CONFIG_HID_CREATIVE_SB0540 is not set
CONFIG_HID_CYPRESS=m
CONFIG_HID_DRAGONRISE=m
# CONFIG_DRAGONRISE_FF is not set
# CONFIG_HID_EMS_FF is not set
# CONFIG_HID_ELAN is not set
CONFIG_HID_ELECOM=m
# CONFIG_HID_ELO is not set
CONFIG_HID_EZKEY=m
CONFIG_HID_GEMBIRD=m
CONFIG_HID_GFRM=m
# CONFIG_HID_GLORIOUS is not set
# CONFIG_HID_HOLTEK is not set
# CONFIG_HID_VIVALDI is not set
# CONFIG_HID_GT683R is not set
CONFIG_HID_KEYTOUCH=m
CONFIG_HID_KYE=m
# CONFIG_HID_UCLOGIC is not set
CONFIG_HID_WALTOP=m
# CONFIG_HID_VIEWSONIC is not set
CONFIG_HID_GYRATION=m
CONFIG_HID_ICADE=m
CONFIG_HID_ITE=m
CONFIG_HID_JABRA=m
CONFIG_HID_TWINHAN=m
CONFIG_HID_KENSINGTON=m
CONFIG_HID_LCPOWER=m
CONFIG_HID_LED=m
CONFIG_HID_LENOVO=m
CONFIG_HID_LOGITECH=m
CONFIG_HID_LOGITECH_DJ=m
CONFIG_HID_LOGITECH_HIDPP=m
# CONFIG_LOGITECH_FF is not set
# CONFIG_LOGIRUMBLEPAD2_FF is not set
# CONFIG_LOGIG940_FF is not set
# CONFIG_LOGIWHEELS_FF is not set
CONFIG_HID_MAGICMOUSE=y
# CONFIG_HID_MALTRON is not set
# CONFIG_HID_MAYFLASH is not set
# CONFIG_HID_REDRAGON is not set
CONFIG_HID_MICROSOFT=m
CONFIG_HID_MONTEREY=m
CONFIG_HID_MULTITOUCH=m
CONFIG_HID_NTI=m
# CONFIG_HID_NTRIG is not set
CONFIG_HID_ORTEK=m
CONFIG_HID_PANTHERLORD=m
# CONFIG_PANTHERLORD_FF is not set
# CONFIG_HID_PENMOUNT is not set
CONFIG_HID_PETALYNX=m
CONFIG_HID_PICOLCD=m
CONFIG_HID_PICOLCD_FB=y
CONFIG_HID_PICOLCD_BACKLIGHT=y
CONFIG_HID_PICOLCD_LCD=y
CONFIG_HID_PICOLCD_LEDS=y
CONFIG_HID_PICOLCD_CIR=y
CONFIG_HID_PLANTRONICS=m
CONFIG_HID_PRIMAX=m
# CONFIG_HID_RETRODE is not set
# CONFIG_HID_ROCCAT is not set
CONFIG_HID_SAITEK=m
CONFIG_HID_SAMSUNG=m
# CONFIG_HID_SONY is not set
CONFIG_HID_SPEEDLINK=m
# CONFIG_HID_STEAM is not set
CONFIG_HID_STEELSERIES=m
CONFIG_HID_SUNPLUS=m
CONFIG_HID_RMI=m
CONFIG_HID_GREENASIA=m
# CONFIG_GREENASIA_FF is not set
CONFIG_HID_HYPERV_MOUSE=m
CONFIG_HID_SMARTJOYPLUS=m
# CONFIG_SMARTJOYPLUS_FF is not set
CONFIG_HID_TIVO=m
CONFIG_HID_TOPSEED=m
CONFIG_HID_THINGM=m
CONFIG_HID_THRUSTMASTER=m
# CONFIG_THRUSTMASTER_FF is not set
# CONFIG_HID_UDRAW_PS3 is not set
# CONFIG_HID_U2FZERO is not set
# CONFIG_HID_WACOM is not set
CONFIG_HID_WIIMOTE=m
CONFIG_HID_XINMO=m
CONFIG_HID_ZEROPLUS=m
# CONFIG_ZEROPLUS_FF is not set
CONFIG_HID_ZYDACRON=m
CONFIG_HID_SENSOR_HUB=y
CONFIG_HID_SENSOR_CUSTOM_SENSOR=m
CONFIG_HID_ALPS=m
# CONFIG_HID_MCP2221 is not set
# end of Special HID drivers

#
# USB HID support
#
CONFIG_USB_HID=y
# CONFIG_HID_PID is not set
# CONFIG_USB_HIDDEV is not set
# end of USB HID support

#
# I2C HID support
#
CONFIG_I2C_HID=m
# end of I2C HID support

#
# Intel ISH HID support
#
CONFIG_INTEL_ISH_HID=m
# CONFIG_INTEL_ISH_FIRMWARE_DOWNLOADER is not set
# end of Intel ISH HID support
# end of HID support

CONFIG_USB_OHCI_LITTLE_ENDIAN=y
CONFIG_USB_SUPPORT=y
CONFIG_USB_COMMON=y
# CONFIG_USB_LED_TRIG is not set
# CONFIG_USB_ULPI_BUS is not set
# CONFIG_USB_CONN_GPIO is not set
CONFIG_USB_ARCH_HAS_HCD=y
CONFIG_USB=y
CONFIG_USB_PCI=y
CONFIG_USB_ANNOUNCE_NEW_DEVICES=y

#
# Miscellaneous USB options
#
CONFIG_USB_DEFAULT_PERSIST=y
# CONFIG_USB_FEW_INIT_RETRIES is not set
# CONFIG_USB_DYNAMIC_MINORS is not set
# CONFIG_USB_OTG is not set
# CONFIG_USB_OTG_PRODUCTLIST is not set
CONFIG_USB_LEDS_TRIGGER_USBPORT=y
CONFIG_USB_AUTOSUSPEND_DELAY=2
CONFIG_USB_MON=y

#
# USB Host Controller Drivers
#
# CONFIG_USB_C67X00_HCD is not set
CONFIG_USB_XHCI_HCD=y
# CONFIG_USB_XHCI_DBGCAP is not set
CONFIG_USB_XHCI_PCI=y
# CONFIG_USB_XHCI_PCI_RENESAS is not set
# CONFIG_USB_XHCI_PLATFORM is not set
CONFIG_USB_EHCI_HCD=y
CONFIG_USB_EHCI_ROOT_HUB_TT=y
CONFIG_USB_EHCI_TT_NEWSCHED=y
CONFIG_USB_EHCI_PCI=y
# CONFIG_USB_EHCI_FSL is not set
# CONFIG_USB_EHCI_HCD_PLATFORM is not set
# CONFIG_USB_OXU210HP_HCD is not set
# CONFIG_USB_ISP116X_HCD is not set
# CONFIG_USB_FOTG210_HCD is not set
# CONFIG_USB_MAX3421_HCD is not set
CONFIG_USB_OHCI_HCD=y
CONFIG_USB_OHCI_HCD_PCI=y
# CONFIG_USB_OHCI_HCD_PLATFORM is not set
CONFIG_USB_UHCI_HCD=y
# CONFIG_USB_SL811_HCD is not set
# CONFIG_USB_R8A66597_HCD is not set
# CONFIG_USB_HCD_BCMA is not set
# CONFIG_USB_HCD_TEST_MODE is not set

#
# USB Device Class drivers
#
# CONFIG_USB_ACM is not set
# CONFIG_USB_PRINTER is not set
# CONFIG_USB_WDM is not set
# CONFIG_USB_TMC is not set

#
# NOTE: USB_STORAGE depends on SCSI but BLK_DEV_SD may
#

#
# also be needed; see USB_STORAGE Help for more info
#
CONFIG_USB_STORAGE=m
# CONFIG_USB_STORAGE_DEBUG is not set
# CONFIG_USB_STORAGE_REALTEK is not set
# CONFIG_USB_STORAGE_DATAFAB is not set
# CONFIG_USB_STORAGE_FREECOM is not set
# CONFIG_USB_STORAGE_ISD200 is not set
# CONFIG_USB_STORAGE_USBAT is not set
# CONFIG_USB_STORAGE_SDDR09 is not set
# CONFIG_USB_STORAGE_SDDR55 is not set
# CONFIG_USB_STORAGE_JUMPSHOT is not set
# CONFIG_USB_STORAGE_ALAUDA is not set
# CONFIG_USB_STORAGE_ONETOUCH is not set
# CONFIG_USB_STORAGE_KARMA is not set
# CONFIG_USB_STORAGE_CYPRESS_ATACB is not set
# CONFIG_USB_STORAGE_ENE_UB6250 is not set
# CONFIG_USB_UAS is not set

#
# USB Imaging devices
#
# CONFIG_USB_MDC800 is not set
# CONFIG_USB_MICROTEK is not set
# CONFIG_USBIP_CORE is not set
# CONFIG_USB_CDNS3 is not set
# CONFIG_USB_MUSB_HDRC is not set
# CONFIG_USB_DWC3 is not set
# CONFIG_USB_DWC2 is not set
# CONFIG_USB_CHIPIDEA is not set
# CONFIG_USB_ISP1760 is not set

#
# USB port drivers
#
# CONFIG_USB_USS720 is not set
CONFIG_USB_SERIAL=m
CONFIG_USB_SERIAL_GENERIC=y
# CONFIG_USB_SERIAL_SIMPLE is not set
# CONFIG_USB_SERIAL_AIRCABLE is not set
# CONFIG_USB_SERIAL_ARK3116 is not set
# CONFIG_USB_SERIAL_BELKIN is not set
# CONFIG_USB_SERIAL_CH341 is not set
# CONFIG_USB_SERIAL_WHITEHEAT is not set
# CONFIG_USB_SERIAL_DIGI_ACCELEPORT is not set
# CONFIG_USB_SERIAL_CP210X is not set
# CONFIG_USB_SERIAL_CYPRESS_M8 is not set
# CONFIG_USB_SERIAL_EMPEG is not set
# CONFIG_USB_SERIAL_FTDI_SIO is not set
# CONFIG_USB_SERIAL_VISOR is not set
# CONFIG_USB_SERIAL_IPAQ is not set
# CONFIG_USB_SERIAL_IR is not set
# CONFIG_USB_SERIAL_EDGEPORT is not set
# CONFIG_USB_SERIAL_EDGEPORT_TI is not set
# CONFIG_USB_SERIAL_F81232 is not set
# CONFIG_USB_SERIAL_F8153X is not set
# CONFIG_USB_SERIAL_GARMIN is not set
# CONFIG_USB_SERIAL_IPW is not set
# CONFIG_USB_SERIAL_IUU is not set
# CONFIG_USB_SERIAL_KEYSPAN_PDA is not set
# CONFIG_USB_SERIAL_KEYSPAN is not set
# CONFIG_USB_SERIAL_KLSI is not set
# CONFIG_USB_SERIAL_KOBIL_SCT is not set
# CONFIG_USB_SERIAL_MCT_U232 is not set
# CONFIG_USB_SERIAL_METRO is not set
# CONFIG_USB_SERIAL_MOS7720 is not set
# CONFIG_USB_SERIAL_MOS7840 is not set
# CONFIG_USB_SERIAL_MXUPORT is not set
# CONFIG_USB_SERIAL_NAVMAN is not set
# CONFIG_USB_SERIAL_PL2303 is not set
# CONFIG_USB_SERIAL_OTI6858 is not set
# CONFIG_USB_SERIAL_QCAUX is not set
# CONFIG_USB_SERIAL_QUALCOMM is not set
# CONFIG_USB_SERIAL_SPCP8X5 is not set
# CONFIG_USB_SERIAL_SAFE is not set
# CONFIG_USB_SERIAL_SIERRAWIRELESS is not set
# CONFIG_USB_SERIAL_SYMBOL is not set
# CONFIG_USB_SERIAL_TI is not set
# CONFIG_USB_SERIAL_CYBERJACK is not set
# CONFIG_USB_SERIAL_XIRCOM is not set
# CONFIG_USB_SERIAL_OPTION is not set
# CONFIG_USB_SERIAL_OMNINET is not set
# CONFIG_USB_SERIAL_OPTICON is not set
# CONFIG_USB_SERIAL_XSENS_MT is not set
# CONFIG_USB_SERIAL_WISHBONE is not set
# CONFIG_USB_SERIAL_SSU100 is not set
# CONFIG_USB_SERIAL_QT2 is not set
# CONFIG_USB_SERIAL_UPD78F0730 is not set
CONFIG_USB_SERIAL_DEBUG=m

#
# USB Miscellaneous drivers
#
# CONFIG_USB_EMI62 is not set
# CONFIG_USB_EMI26 is not set
# CONFIG_USB_ADUTUX is not set
# CONFIG_USB_SEVSEG is not set
# CONFIG_USB_LEGOTOWER is not set
# CONFIG_USB_LCD is not set
# CONFIG_USB_CYPRESS_CY7C63 is not set
# CONFIG_USB_CYTHERM is not set
# CONFIG_USB_IDMOUSE is not set
# CONFIG_USB_FTDI_ELAN is not set
# CONFIG_USB_APPLEDISPLAY is not set
# CONFIG_APPLE_MFI_FASTCHARGE is not set
# CONFIG_USB_SISUSBVGA is not set
# CONFIG_USB_LD is not set
# CONFIG_USB_TRANCEVIBRATOR is not set
# CONFIG_USB_IOWARRIOR is not set
# CONFIG_USB_TEST is not set
# CONFIG_USB_EHSET_TEST_FIXTURE is not set
# CONFIG_USB_ISIGHTFW is not set
# CONFIG_USB_YUREX is not set
# CONFIG_USB_EZUSB_FX2 is not set
# CONFIG_USB_HUB_USB251XB is not set
# CONFIG_USB_HSIC_USB3503 is not set
# CONFIG_USB_HSIC_USB4604 is not set
# CONFIG_USB_LINK_LAYER_TEST is not set
# CONFIG_USB_CHAOSKEY is not set
# CONFIG_USB_ATM is not set

#
# USB Physical Layer drivers
#
# CONFIG_NOP_USB_XCEIV is not set
# CONFIG_USB_GPIO_VBUS is not set
# CONFIG_USB_ISP1301 is not set
# end of USB Physical Layer drivers

# CONFIG_USB_GADGET is not set
CONFIG_TYPEC=y
# CONFIG_TYPEC_TCPM is not set
CONFIG_TYPEC_UCSI=y
# CONFIG_UCSI_CCG is not set
CONFIG_UCSI_ACPI=y
# CONFIG_TYPEC_TPS6598X is not set
# CONFIG_TYPEC_STUSB160X is not set

#
# USB Type-C Multiplexer/DeMultiplexer Switch support
#
# CONFIG_TYPEC_MUX_PI3USB30532 is not set
# end of USB Type-C Multiplexer/DeMultiplexer Switch support

#
# USB Type-C Alternate Mode drivers
#
# CONFIG_TYPEC_DP_ALTMODE is not set
# end of USB Type-C Alternate Mode drivers

# CONFIG_USB_ROLE_SWITCH is not set
CONFIG_MMC=m
CONFIG_MMC_BLOCK=m
CONFIG_MMC_BLOCK_MINORS=8
CONFIG_SDIO_UART=m
# CONFIG_MMC_TEST is not set

#
# MMC/SD/SDIO Host Controller Drivers
#
# CONFIG_MMC_DEBUG is not set
CONFIG_MMC_SDHCI=m
CONFIG_MMC_SDHCI_IO_ACCESSORS=y
CONFIG_MMC_SDHCI_PCI=m
CONFIG_MMC_RICOH_MMC=y
CONFIG_MMC_SDHCI_ACPI=m
CONFIG_MMC_SDHCI_PLTFM=m
# CONFIG_MMC_SDHCI_F_SDH30 is not set
# CONFIG_MMC_WBSD is not set
# CONFIG_MMC_TIFM_SD is not set
# CONFIG_MMC_SPI is not set
# CONFIG_MMC_CB710 is not set
# CONFIG_MMC_VIA_SDMMC is not set
# CONFIG_MMC_VUB300 is not set
# CONFIG_MMC_USHC is not set
# CONFIG_MMC_USDHI6ROL0 is not set
# CONFIG_MMC_REALTEK_PCI is not set
CONFIG_MMC_CQHCI=m
# CONFIG_MMC_HSQ is not set
# CONFIG_MMC_TOSHIBA_PCI is not set
# CONFIG_MMC_MTK is not set
# CONFIG_MMC_SDHCI_XENON is not set
# CONFIG_MEMSTICK is not set
CONFIG_NEW_LEDS=y
CONFIG_LEDS_CLASS=y
# CONFIG_LEDS_CLASS_FLASH is not set
# CONFIG_LEDS_CLASS_MULTICOLOR is not set
# CONFIG_LEDS_BRIGHTNESS_HW_CHANGED is not set

#
# LED drivers
#
# CONFIG_LEDS_APU is not set
CONFIG_LEDS_LM3530=m
# CONFIG_LEDS_LM3532 is not set
# CONFIG_LEDS_LM3642 is not set
# CONFIG_LEDS_PCA9532 is not set
# CONFIG_LEDS_GPIO is not set
CONFIG_LEDS_LP3944=m
# CONFIG_LEDS_LP3952 is not set
# CONFIG_LEDS_LP50XX is not set
CONFIG_LEDS_CLEVO_MAIL=m
# CONFIG_LEDS_PCA955X is not set
# CONFIG_LEDS_PCA963X is not set
# CONFIG_LEDS_DAC124S085 is not set
# CONFIG_LEDS_PWM is not set
# CONFIG_LEDS_BD2802 is not set
CONFIG_LEDS_INTEL_SS4200=m
# CONFIG_LEDS_TCA6507 is not set
# CONFIG_LEDS_TLC591XX is not set
# CONFIG_LEDS_LM355x is not set

#
# LED driver for blink(1) USB RGB LED is under Special HID drivers (HID_THINGM)
#
CONFIG_LEDS_BLINKM=m
CONFIG_LEDS_MLXCPLD=m
# CONFIG_LEDS_MLXREG is not set
# CONFIG_LEDS_USER is not set
# CONFIG_LEDS_NIC78BX is not set
# CONFIG_LEDS_TI_LMU_COMMON is not set

#
# LED Triggers
#
CONFIG_LEDS_TRIGGERS=y
CONFIG_LEDS_TRIGGER_TIMER=m
CONFIG_LEDS_TRIGGER_ONESHOT=m
# CONFIG_LEDS_TRIGGER_DISK is not set
CONFIG_LEDS_TRIGGER_HEARTBEAT=m
CONFIG_LEDS_TRIGGER_BACKLIGHT=m
# CONFIG_LEDS_TRIGGER_CPU is not set
# CONFIG_LEDS_TRIGGER_ACTIVITY is not set
CONFIG_LEDS_TRIGGER_GPIO=m
CONFIG_LEDS_TRIGGER_DEFAULT_ON=m

#
# iptables trigger is under Netfilter config (LED target)
#
CONFIG_LEDS_TRIGGER_TRANSIENT=m
CONFIG_LEDS_TRIGGER_CAMERA=m
# CONFIG_LEDS_TRIGGER_PANIC is not set
# CONFIG_LEDS_TRIGGER_NETDEV is not set
# CONFIG_LEDS_TRIGGER_PATTERN is not set
CONFIG_LEDS_TRIGGER_AUDIO=m
# CONFIG_ACCESSIBILITY is not set
CONFIG_INFINIBAND=m
CONFIG_INFINIBAND_USER_MAD=m
CONFIG_INFINIBAND_USER_ACCESS=m
CONFIG_INFINIBAND_USER_MEM=y
CONFIG_INFINIBAND_ON_DEMAND_PAGING=y
CONFIG_INFINIBAND_ADDR_TRANS=y
CONFIG_INFINIBAND_ADDR_TRANS_CONFIGFS=y
CONFIG_INFINIBAND_VIRT_DMA=y
# CONFIG_INFINIBAND_MTHCA is not set
# CONFIG_INFINIBAND_EFA is not set
# CONFIG_INFINIBAND_I40IW is not set
# CONFIG_MLX4_INFINIBAND is not set
# CONFIG_INFINIBAND_OCRDMA is not set
# CONFIG_INFINIBAND_USNIC is not set
# CONFIG_INFINIBAND_BNXT_RE is not set
# CONFIG_INFINIBAND_RDMAVT is not set
CONFIG_RDMA_RXE=m
CONFIG_RDMA_SIW=m
CONFIG_INFINIBAND_IPOIB=m
# CONFIG_INFINIBAND_IPOIB_CM is not set
CONFIG_INFINIBAND_IPOIB_DEBUG=y
# CONFIG_INFINIBAND_IPOIB_DEBUG_DATA is not set
CONFIG_INFINIBAND_SRP=m
CONFIG_INFINIBAND_SRPT=m
# CONFIG_INFINIBAND_ISER is not set
# CONFIG_INFINIBAND_ISERT is not set
# CONFIG_INFINIBAND_RTRS_CLIENT is not set
# CONFIG_INFINIBAND_RTRS_SERVER is not set
# CONFIG_INFINIBAND_OPA_VNIC is not set
CONFIG_EDAC_ATOMIC_SCRUB=y
CONFIG_EDAC_SUPPORT=y
CONFIG_EDAC=y
CONFIG_EDAC_LEGACY_SYSFS=y
# CONFIG_EDAC_DEBUG is not set
CONFIG_EDAC_DECODE_MCE=m
CONFIG_EDAC_GHES=y
CONFIG_EDAC_AMD64=m
# CONFIG_EDAC_AMD64_ERROR_INJECTION is not set
CONFIG_EDAC_E752X=m
CONFIG_EDAC_I82975X=m
CONFIG_EDAC_I3000=m
CONFIG_EDAC_I3200=m
CONFIG_EDAC_IE31200=m
CONFIG_EDAC_X38=m
CONFIG_EDAC_I5400=m
CONFIG_EDAC_I7CORE=m
CONFIG_EDAC_I5000=m
CONFIG_EDAC_I5100=m
CONFIG_EDAC_I7300=m
CONFIG_EDAC_SBRIDGE=m
CONFIG_EDAC_SKX=m
# CONFIG_EDAC_I10NM is not set
CONFIG_EDAC_PND2=m
CONFIG_RTC_LIB=y
CONFIG_RTC_MC146818_LIB=y
CONFIG_RTC_CLASS=y
CONFIG_RTC_HCTOSYS=y
CONFIG_RTC_HCTOSYS_DEVICE="rtc0"
# CONFIG_RTC_SYSTOHC is not set
# CONFIG_RTC_DEBUG is not set
CONFIG_RTC_NVMEM=y

#
# RTC interfaces
#
CONFIG_RTC_INTF_SYSFS=y
CONFIG_RTC_INTF_PROC=y
CONFIG_RTC_INTF_DEV=y
# CONFIG_RTC_INTF_DEV_UIE_EMUL is not set
# CONFIG_RTC_DRV_TEST is not set

#
# I2C RTC drivers
#
# CONFIG_RTC_DRV_ABB5ZES3 is not set
# CONFIG_RTC_DRV_ABEOZ9 is not set
# CONFIG_RTC_DRV_ABX80X is not set
CONFIG_RTC_DRV_DS1307=m
# CONFIG_RTC_DRV_DS1307_CENTURY is not set
CONFIG_RTC_DRV_DS1374=m
# CONFIG_RTC_DRV_DS1374_WDT is not set
CONFIG_RTC_DRV_DS1672=m
CONFIG_RTC_DRV_MAX6900=m
CONFIG_RTC_DRV_RS5C372=m
CONFIG_RTC_DRV_ISL1208=m
CONFIG_RTC_DRV_ISL12022=m
CONFIG_RTC_DRV_X1205=m
CONFIG_RTC_DRV_PCF8523=m
# CONFIG_RTC_DRV_PCF85063 is not set
# CONFIG_RTC_DRV_PCF85363 is not set
CONFIG_RTC_DRV_PCF8563=m
CONFIG_RTC_DRV_PCF8583=m
CONFIG_RTC_DRV_M41T80=m
CONFIG_RTC_DRV_M41T80_WDT=y
CONFIG_RTC_DRV_BQ32K=m
# CONFIG_RTC_DRV_S35390A is not set
CONFIG_RTC_DRV_FM3130=m
# CONFIG_RTC_DRV_RX8010 is not set
CONFIG_RTC_DRV_RX8581=m
CONFIG_RTC_DRV_RX8025=m
CONFIG_RTC_DRV_EM3027=m
# CONFIG_RTC_DRV_RV3028 is not set
# CONFIG_RTC_DRV_RV3032 is not set
# CONFIG_RTC_DRV_RV8803 is not set
# CONFIG_RTC_DRV_SD3078 is not set

#
# SPI RTC drivers
#
# CONFIG_RTC_DRV_M41T93 is not set
# CONFIG_RTC_DRV_M41T94 is not set
# CONFIG_RTC_DRV_DS1302 is not set
# CONFIG_RTC_DRV_DS1305 is not set
# CONFIG_RTC_DRV_DS1343 is not set
# CONFIG_RTC_DRV_DS1347 is not set
# CONFIG_RTC_DRV_DS1390 is not set
# CONFIG_RTC_DRV_MAX6916 is not set
# CONFIG_RTC_DRV_R9701 is not set
CONFIG_RTC_DRV_RX4581=m
# CONFIG_RTC_DRV_RX6110 is not set
# CONFIG_RTC_DRV_RS5C348 is not set
# CONFIG_RTC_DRV_MAX6902 is not set
# CONFIG_RTC_DRV_PCF2123 is not set
# CONFIG_RTC_DRV_MCP795 is not set
CONFIG_RTC_I2C_AND_SPI=y

#
# SPI and I2C RTC drivers
#
CONFIG_RTC_DRV_DS3232=m
CONFIG_RTC_DRV_DS3232_HWMON=y
# CONFIG_RTC_DRV_PCF2127 is not set
CONFIG_RTC_DRV_RV3029C2=m
# CONFIG_RTC_DRV_RV3029_HWMON is not set

#
# Platform RTC drivers
#
CONFIG_RTC_DRV_CMOS=y
CONFIG_RTC_DRV_DS1286=m
CONFIG_RTC_DRV_DS1511=m
CONFIG_RTC_DRV_DS1553=m
# CONFIG_RTC_DRV_DS1685_FAMILY is not set
CONFIG_RTC_DRV_DS1742=m
CONFIG_RTC_DRV_DS2404=m
CONFIG_RTC_DRV_STK17TA8=m
# CONFIG_RTC_DRV_M48T86 is not set
CONFIG_RTC_DRV_M48T35=m
CONFIG_RTC_DRV_M48T59=m
CONFIG_RTC_DRV_MSM6242=m
CONFIG_RTC_DRV_BQ4802=m
CONFIG_RTC_DRV_RP5C01=m
CONFIG_RTC_DRV_V3020=m

#
# on-CPU RTC drivers
#
# CONFIG_RTC_DRV_FTRTC010 is not set

#
# HID Sensor RTC drivers
#
CONFIG_DMADEVICES=y
# CONFIG_DMADEVICES_DEBUG is not set

#
# DMA Devices
#
CONFIG_DMA_ENGINE=y
CONFIG_DMA_VIRTUAL_CHANNELS=y
CONFIG_DMA_ACPI=y
# CONFIG_ALTERA_MSGDMA is not set
CONFIG_INTEL_IDMA64=m
# CONFIG_INTEL_IDXD is not set
CONFIG_INTEL_IOATDMA=m
# CONFIG_PLX_DMA is not set
# CONFIG_XILINX_ZYNQMP_DPDMA is not set
# CONFIG_QCOM_HIDMA_MGMT is not set
# CONFIG_QCOM_HIDMA is not set
CONFIG_DW_DMAC_CORE=y
CONFIG_DW_DMAC=m
CONFIG_DW_DMAC_PCI=y
# CONFIG_DW_EDMA is not set
# CONFIG_DW_EDMA_PCIE is not set
CONFIG_HSU_DMA=y
# CONFIG_SF_PDMA is not set

#
# DMA Clients
#
CONFIG_ASYNC_TX_DMA=y
CONFIG_DMATEST=m
CONFIG_DMA_ENGINE_RAID=y

#
# DMABUF options
#
CONFIG_SYNC_FILE=y
# CONFIG_SW_SYNC is not set
# CONFIG_UDMABUF is not set
# CONFIG_DMABUF_MOVE_NOTIFY is not set
# CONFIG_DMABUF_SELFTESTS is not set
# CONFIG_DMABUF_HEAPS is not set
# end of DMABUF options

CONFIG_DCA=m
# CONFIG_AUXDISPLAY is not set
# CONFIG_PANEL is not set
CONFIG_UIO=m
CONFIG_UIO_CIF=m
CONFIG_UIO_PDRV_GENIRQ=m
# CONFIG_UIO_DMEM_GENIRQ is not set
CONFIG_UIO_AEC=m
CONFIG_UIO_SERCOS3=m
CONFIG_UIO_PCI_GENERIC=m
# CONFIG_UIO_NETX is not set
# CONFIG_UIO_PRUSS is not set
# CONFIG_UIO_MF624 is not set
CONFIG_UIO_HV_GENERIC=m
CONFIG_VFIO_IOMMU_TYPE1=m
CONFIG_VFIO_VIRQFD=m
CONFIG_VFIO=m
CONFIG_VFIO_NOIOMMU=y
CONFIG_VFIO_PCI=m
# CONFIG_VFIO_PCI_VGA is not set
CONFIG_VFIO_PCI_MMAP=y
CONFIG_VFIO_PCI_INTX=y
# CONFIG_VFIO_PCI_IGD is not set
CONFIG_VFIO_MDEV=m
CONFIG_VFIO_MDEV_DEVICE=m
CONFIG_IRQ_BYPASS_MANAGER=m
# CONFIG_VIRT_DRIVERS is not set
CONFIG_VIRTIO=y
CONFIG_VIRTIO_MENU=y
CONFIG_VIRTIO_PCI=y
CONFIG_VIRTIO_PCI_LEGACY=y
# CONFIG_VIRTIO_PMEM is not set
CONFIG_VIRTIO_BALLOON=m
CONFIG_VIRTIO_MEM=m
CONFIG_VIRTIO_INPUT=m
# CONFIG_VIRTIO_MMIO is not set
CONFIG_VIRTIO_DMA_SHARED_BUFFER=m
# CONFIG_VDPA is not set
CONFIG_VHOST_IOTLB=m
CONFIG_VHOST=m
CONFIG_VHOST_MENU=y
CONFIG_VHOST_NET=m
# CONFIG_VHOST_SCSI is not set
CONFIG_VHOST_VSOCK=m
# CONFIG_VHOST_CROSS_ENDIAN_LEGACY is not set

#
# Microsoft Hyper-V guest support
#
CONFIG_HYPERV=m
CONFIG_HYPERV_TIMER=y
CONFIG_HYPERV_UTILS=m
CONFIG_HYPERV_BALLOON=m
# end of Microsoft Hyper-V guest support

#
# Xen driver support
#
# CONFIG_XEN_BALLOON is not set
CONFIG_XEN_DEV_EVTCHN=m
# CONFIG_XEN_BACKEND is not set
CONFIG_XENFS=m
CONFIG_XEN_COMPAT_XENFS=y
CONFIG_XEN_SYS_HYPERVISOR=y
CONFIG_XEN_XENBUS_FRONTEND=y
# CONFIG_XEN_GNTDEV is not set
# CONFIG_XEN_GRANT_DEV_ALLOC is not set
# CONFIG_XEN_GRANT_DMA_ALLOC is not set
CONFIG_SWIOTLB_XEN=y
# CONFIG_XEN_PVCALLS_FRONTEND is not set
CONFIG_XEN_PRIVCMD=m
CONFIG_XEN_EFI=y
CONFIG_XEN_AUTO_XLATE=y
CONFIG_XEN_ACPI=y
# CONFIG_XEN_UNPOPULATED_ALLOC is not set
# end of Xen driver support

# CONFIG_GREYBUS is not set
# CONFIG_STAGING is not set
CONFIG_X86_PLATFORM_DEVICES=y
CONFIG_ACPI_WMI=m
CONFIG_WMI_BMOF=m
# CONFIG_ALIENWARE_WMI is not set
# CONFIG_HUAWEI_WMI is not set
# CONFIG_INTEL_WMI_SBL_FW_UPDATE is not set
CONFIG_INTEL_WMI_THUNDERBOLT=m
CONFIG_MXM_WMI=m
# CONFIG_PEAQ_WMI is not set
# CONFIG_XIAOMI_WMI is not set
CONFIG_ACERHDF=m
# CONFIG_ACER_WIRELESS is not set
CONFIG_ACER_WMI=m
CONFIG_APPLE_GMUX=m
CONFIG_ASUS_LAPTOP=m
# CONFIG_ASUS_WIRELESS is not set
CONFIG_ASUS_WMI=m
CONFIG_ASUS_NB_WMI=m
CONFIG_EEEPC_LAPTOP=m
CONFIG_EEEPC_WMI=m
CONFIG_DCDBAS=m
CONFIG_DELL_SMBIOS=m
CONFIG_DELL_SMBIOS_WMI=y
# CONFIG_DELL_SMBIOS_SMM is not set
CONFIG_DELL_LAPTOP=m
CONFIG_DELL_RBTN=m
CONFIG_DELL_RBU=m
CONFIG_DELL_SMO8800=m
CONFIG_DELL_WMI=m
CONFIG_DELL_WMI_DESCRIPTOR=m
CONFIG_DELL_WMI_AIO=m
CONFIG_DELL_WMI_LED=m
CONFIG_AMILO_RFKILL=m
CONFIG_FUJITSU_LAPTOP=m
CONFIG_FUJITSU_TABLET=m
# CONFIG_GPD_POCKET_FAN is not set
CONFIG_HP_ACCEL=m
CONFIG_HP_WIRELESS=m
CONFIG_HP_WMI=m
# CONFIG_IBM_RTL is not set
CONFIG_IDEAPAD_LAPTOP=m
CONFIG_SENSORS_HDAPS=m
CONFIG_THINKPAD_ACPI=m
# CONFIG_THINKPAD_ACPI_DEBUGFACILITIES is not set
# CONFIG_THINKPAD_ACPI_DEBUG is not set
# CONFIG_THINKPAD_ACPI_UNSAFE_LEDS is not set
CONFIG_THINKPAD_ACPI_VIDEO=y
CONFIG_THINKPAD_ACPI_HOTKEY_POLL=y
# CONFIG_INTEL_ATOMISP2_PM is not set
CONFIG_INTEL_HID_EVENT=m
# CONFIG_INTEL_INT0002_VGPIO is not set
# CONFIG_INTEL_MENLOW is not set
CONFIG_INTEL_OAKTRAIL=m
CONFIG_INTEL_VBTN=m
# CONFIG_SURFACE3_WMI is not set
# CONFIG_SURFACE_3_POWER_OPREGION is not set
# CONFIG_SURFACE_PRO3_BUTTON is not set
CONFIG_MSI_LAPTOP=m
CONFIG_MSI_WMI=m
# CONFIG_PCENGINES_APU2 is not set
CONFIG_SAMSUNG_LAPTOP=m
CONFIG_SAMSUNG_Q10=m
CONFIG_TOSHIBA_BT_RFKILL=m
# CONFIG_TOSHIBA_HAPS is not set
# CONFIG_TOSHIBA_WMI is not set
CONFIG_ACPI_CMPC=m
CONFIG_COMPAL_LAPTOP=m
# CONFIG_LG_LAPTOP is not set
CONFIG_PANASONIC_LAPTOP=m
CONFIG_SONY_LAPTOP=m
CONFIG_SONYPI_COMPAT=y
# CONFIG_SYSTEM76_ACPI is not set
CONFIG_TOPSTAR_LAPTOP=m
# CONFIG_I2C_MULTI_INSTANTIATE is not set
CONFIG_MLX_PLATFORM=m
CONFIG_INTEL_IPS=m
CONFIG_INTEL_RST=m
# CONFIG_INTEL_SMARTCONNECT is not set

#
# Intel Speed Select Technology interface support
#
# CONFIG_INTEL_SPEED_SELECT_INTERFACE is not set
# end of Intel Speed Select Technology interface support

CONFIG_INTEL_TURBO_MAX_3=y
# CONFIG_INTEL_UNCORE_FREQ_CONTROL is not set
CONFIG_INTEL_PMC_CORE=m
# CONFIG_INTEL_PUNIT_IPC is not set
# CONFIG_INTEL_SCU_PCI is not set
# CONFIG_INTEL_SCU_PLATFORM is not set
CONFIG_PMC_ATOM=y
# CONFIG_CHROME_PLATFORMS is not set
CONFIG_MELLANOX_PLATFORM=y
CONFIG_MLXREG_HOTPLUG=m
# CONFIG_MLXREG_IO is not set
CONFIG_HAVE_CLK=y
CONFIG_CLKDEV_LOOKUP=y
CONFIG_HAVE_CLK_PREPARE=y
CONFIG_COMMON_CLK=y
# CONFIG_COMMON_CLK_MAX9485 is not set
# CONFIG_COMMON_CLK_SI5341 is not set
# CONFIG_COMMON_CLK_SI5351 is not set
# CONFIG_COMMON_CLK_SI544 is not set
# CONFIG_COMMON_CLK_CDCE706 is not set
# CONFIG_COMMON_CLK_CS2000_CP is not set
# CONFIG_COMMON_CLK_PWM is not set
CONFIG_HWSPINLOCK=y

#
# Clock Source drivers
#
CONFIG_CLKEVT_I8253=y
CONFIG_I8253_LOCK=y
CONFIG_CLKBLD_I8253=y
# end of Clock Source drivers

CONFIG_MAILBOX=y
CONFIG_PCC=y
# CONFIG_ALTERA_MBOX is not set
CONFIG_IOMMU_IOVA=y
CONFIG_IOASID=y
CONFIG_IOMMU_API=y
CONFIG_IOMMU_SUPPORT=y

#
# Generic IOMMU Pagetable Support
#
# end of Generic IOMMU Pagetable Support

# CONFIG_IOMMU_DEBUGFS is not set
# CONFIG_IOMMU_DEFAULT_PASSTHROUGH is not set
CONFIG_IOMMU_DMA=y
CONFIG_AMD_IOMMU=y
CONFIG_AMD_IOMMU_V2=m
CONFIG_DMAR_TABLE=y
CONFIG_INTEL_IOMMU=y
# CONFIG_INTEL_IOMMU_SVM is not set
# CONFIG_INTEL_IOMMU_DEFAULT_ON is not set
CONFIG_INTEL_IOMMU_FLOPPY_WA=y
# CONFIG_INTEL_IOMMU_SCALABLE_MODE_DEFAULT_ON is not set
CONFIG_IRQ_REMAP=y
CONFIG_HYPERV_IOMMU=y

#
# Remoteproc drivers
#
# CONFIG_REMOTEPROC is not set
# end of Remoteproc drivers

#
# Rpmsg drivers
#
# CONFIG_RPMSG_QCOM_GLINK_RPM is not set
# CONFIG_RPMSG_VIRTIO is not set
# end of Rpmsg drivers

# CONFIG_SOUNDWIRE is not set

#
# SOC (System On Chip) specific Drivers
#

#
# Amlogic SoC drivers
#
# end of Amlogic SoC drivers

#
# Aspeed SoC drivers
#
# end of Aspeed SoC drivers

#
# Broadcom SoC drivers
#
# end of Broadcom SoC drivers

#
# NXP/Freescale QorIQ SoC drivers
#
# end of NXP/Freescale QorIQ SoC drivers

#
# i.MX SoC drivers
#
# end of i.MX SoC drivers

#
# Qualcomm SoC drivers
#
# end of Qualcomm SoC drivers

# CONFIG_SOC_TI is not set

#
# Xilinx SoC drivers
#
# CONFIG_XILINX_VCU is not set
# end of Xilinx SoC drivers
# end of SOC (System On Chip) specific Drivers

# CONFIG_PM_DEVFREQ is not set
# CONFIG_EXTCON is not set
# CONFIG_MEMORY is not set
# CONFIG_IIO is not set
CONFIG_NTB=m
# CONFIG_NTB_MSI is not set
# CONFIG_NTB_AMD is not set
# CONFIG_NTB_IDT is not set
# CONFIG_NTB_INTEL is not set
# CONFIG_NTB_SWITCHTEC is not set
# CONFIG_NTB_PINGPONG is not set
# CONFIG_NTB_TOOL is not set
# CONFIG_NTB_PERF is not set
# CONFIG_NTB_TRANSPORT is not set
# CONFIG_VME_BUS is not set
CONFIG_PWM=y
CONFIG_PWM_SYSFS=y
# CONFIG_PWM_DEBUG is not set
CONFIG_PWM_LPSS=m
CONFIG_PWM_LPSS_PCI=m
CONFIG_PWM_LPSS_PLATFORM=m
# CONFIG_PWM_PCA9685 is not set

#
# IRQ chip support
#
# end of IRQ chip support

# CONFIG_IPACK_BUS is not set
# CONFIG_RESET_CONTROLLER is not set

#
# PHY Subsystem
#
# CONFIG_GENERIC_PHY is not set
# CONFIG_USB_LGM_PHY is not set
# CONFIG_BCM_KONA_USB2_PHY is not set
# CONFIG_PHY_PXA_28NM_HSIC is not set
# CONFIG_PHY_PXA_28NM_USB2 is not set
# CONFIG_PHY_INTEL_LGM_EMMC is not set
# end of PHY Subsystem

CONFIG_POWERCAP=y
CONFIG_INTEL_RAPL_CORE=m
CONFIG_INTEL_RAPL=m
# CONFIG_IDLE_INJECT is not set
# CONFIG_MCB is not set

#
# Performance monitor support
#
# end of Performance monitor support

CONFIG_RAS=y
# CONFIG_RAS_CEC is not set
# CONFIG_USB4 is not set

#
# Android
#
# CONFIG_ANDROID is not set
# end of Android

CONFIG_LIBNVDIMM=m
CONFIG_BLK_DEV_PMEM=m
CONFIG_ND_BLK=m
CONFIG_ND_CLAIM=y
CONFIG_ND_BTT=m
CONFIG_BTT=y
CONFIG_ND_PFN=m
CONFIG_NVDIMM_PFN=y
CONFIG_NVDIMM_DAX=y
CONFIG_NVDIMM_KEYS=y
CONFIG_DAX_DRIVER=y
CONFIG_DAX=y
CONFIG_DEV_DAX=m
CONFIG_DEV_DAX_PMEM=m
CONFIG_DEV_DAX_KMEM=m
CONFIG_DEV_DAX_PMEM_COMPAT=m
CONFIG_NVMEM=y
CONFIG_NVMEM_SYSFS=y

#
# HW tracing support
#
CONFIG_STM=m
# CONFIG_STM_PROTO_BASIC is not set
# CONFIG_STM_PROTO_SYS_T is not set
CONFIG_STM_DUMMY=m
CONFIG_STM_SOURCE_CONSOLE=m
CONFIG_STM_SOURCE_HEARTBEAT=m
CONFIG_STM_SOURCE_FTRACE=m
CONFIG_INTEL_TH=m
CONFIG_INTEL_TH_PCI=m
CONFIG_INTEL_TH_ACPI=m
CONFIG_INTEL_TH_GTH=m
CONFIG_INTEL_TH_STH=m
CONFIG_INTEL_TH_MSU=m
CONFIG_INTEL_TH_PTI=m
# CONFIG_INTEL_TH_DEBUG is not set
# end of HW tracing support

# CONFIG_FPGA is not set
# CONFIG_TEE is not set
# CONFIG_UNISYS_VISORBUS is not set
# CONFIG_SIOX is not set
# CONFIG_SLIMBUS is not set
# CONFIG_INTERCONNECT is not set
# CONFIG_COUNTER is not set
# CONFIG_MOST is not set
# end of Device Drivers

#
# File systems
#
CONFIG_DCACHE_WORD_ACCESS=y
# CONFIG_VALIDATE_FS_PARSER is not set
CONFIG_FS_IOMAP=y
CONFIG_EXT2_FS=m
CONFIG_EXT2_FS_XATTR=y
CONFIG_EXT2_FS_POSIX_ACL=y
CONFIG_EXT2_FS_SECURITY=y
# CONFIG_EXT3_FS is not set
CONFIG_EXT4_FS=y
CONFIG_EXT4_FS_POSIX_ACL=y
CONFIG_EXT4_FS_SECURITY=y
# CONFIG_EXT4_DEBUG is not set
CONFIG_EXT4_KUNIT_TESTS=m
CONFIG_JBD2=y
# CONFIG_JBD2_DEBUG is not set
CONFIG_FS_MBCACHE=y
# CONFIG_REISERFS_FS is not set
# CONFIG_JFS_FS is not set
CONFIG_XFS_FS=m
CONFIG_XFS_SUPPORT_V4=y
CONFIG_XFS_QUOTA=y
CONFIG_XFS_POSIX_ACL=y
CONFIG_XFS_RT=y
CONFIG_XFS_ONLINE_SCRUB=y
CONFIG_XFS_ONLINE_REPAIR=y
CONFIG_XFS_DEBUG=y
CONFIG_XFS_ASSERT_FATAL=y
CONFIG_GFS2_FS=m
CONFIG_GFS2_FS_LOCKING_DLM=y
CONFIG_OCFS2_FS=m
CONFIG_OCFS2_FS_O2CB=m
CONFIG_OCFS2_FS_USERSPACE_CLUSTER=m
CONFIG_OCFS2_FS_STATS=y
CONFIG_OCFS2_DEBUG_MASKLOG=y
# CONFIG_OCFS2_DEBUG_FS is not set
CONFIG_BTRFS_FS=m
CONFIG_BTRFS_FS_POSIX_ACL=y
# CONFIG_BTRFS_FS_CHECK_INTEGRITY is not set
# CONFIG_BTRFS_FS_RUN_SANITY_TESTS is not set
# CONFIG_BTRFS_DEBUG is not set
# CONFIG_BTRFS_ASSERT is not set
# CONFIG_BTRFS_FS_REF_VERIFY is not set
# CONFIG_NILFS2_FS is not set
CONFIG_F2FS_FS=m
CONFIG_F2FS_STAT_FS=y
CONFIG_F2FS_FS_XATTR=y
CONFIG_F2FS_FS_POSIX_ACL=y
CONFIG_F2FS_FS_SECURITY=y
# CONFIG_F2FS_CHECK_FS is not set
# CONFIG_F2FS_IO_TRACE is not set
# CONFIG_F2FS_FAULT_INJECTION is not set
# CONFIG_F2FS_FS_COMPRESSION is not set
# CONFIG_ZONEFS_FS is not set
CONFIG_FS_DAX=y
CONFIG_FS_DAX_PMD=y
CONFIG_FS_POSIX_ACL=y
CONFIG_EXPORTFS=y
CONFIG_EXPORTFS_BLOCK_OPS=y
CONFIG_FILE_LOCKING=y
CONFIG_MANDATORY_FILE_LOCKING=y
CONFIG_FS_ENCRYPTION=y
CONFIG_FS_ENCRYPTION_ALGS=y
# CONFIG_FS_VERITY is not set
CONFIG_FSNOTIFY=y
CONFIG_DNOTIFY=y
CONFIG_INOTIFY_USER=y
CONFIG_FANOTIFY=y
CONFIG_FANOTIFY_ACCESS_PERMISSIONS=y
CONFIG_QUOTA=y
CONFIG_QUOTA_NETLINK_INTERFACE=y
CONFIG_PRINT_QUOTA_WARNING=y
# CONFIG_QUOTA_DEBUG is not set
CONFIG_QUOTA_TREE=y
# CONFIG_QFMT_V1 is not set
CONFIG_QFMT_V2=y
CONFIG_QUOTACTL=y
CONFIG_AUTOFS4_FS=y
CONFIG_AUTOFS_FS=y
CONFIG_FUSE_FS=m
CONFIG_CUSE=m
# CONFIG_VIRTIO_FS is not set
CONFIG_OVERLAY_FS=m
# CONFIG_OVERLAY_FS_REDIRECT_DIR is not set
# CONFIG_OVERLAY_FS_REDIRECT_ALWAYS_FOLLOW is not set
# CONFIG_OVERLAY_FS_INDEX is not set
# CONFIG_OVERLAY_FS_XINO_AUTO is not set
# CONFIG_OVERLAY_FS_METACOPY is not set

#
# Caches
#
CONFIG_FSCACHE=m
CONFIG_FSCACHE_STATS=y
# CONFIG_FSCACHE_HISTOGRAM is not set
# CONFIG_FSCACHE_DEBUG is not set
# CONFIG_FSCACHE_OBJECT_LIST is not set
CONFIG_CACHEFILES=m
# CONFIG_CACHEFILES_DEBUG is not set
# CONFIG_CACHEFILES_HISTOGRAM is not set
# end of Caches

#
# CD-ROM/DVD Filesystems
#
CONFIG_ISO9660_FS=m
CONFIG_JOLIET=y
CONFIG_ZISOFS=y
CONFIG_UDF_FS=m
# end of CD-ROM/DVD Filesystems

#
# DOS/FAT/EXFAT/NT Filesystems
#
CONFIG_FAT_FS=m
CONFIG_MSDOS_FS=m
CONFIG_VFAT_FS=m
CONFIG_FAT_DEFAULT_CODEPAGE=437
CONFIG_FAT_DEFAULT_IOCHARSET="ascii"
# CONFIG_FAT_DEFAULT_UTF8 is not set
# CONFIG_EXFAT_FS is not set
# CONFIG_NTFS_FS is not set
# end of DOS/FAT/EXFAT/NT Filesystems

#
# Pseudo filesystems
#
CONFIG_PROC_FS=y
CONFIG_PROC_KCORE=y
CONFIG_PROC_VMCORE=y
CONFIG_PROC_VMCORE_DEVICE_DUMP=y
CONFIG_PROC_SYSCTL=y
CONFIG_PROC_PAGE_MONITOR=y
CONFIG_PROC_CHILDREN=y
CONFIG_PROC_PID_ARCH_STATUS=y
CONFIG_PROC_CPU_RESCTRL=y
CONFIG_KERNFS=y
CONFIG_SYSFS=y
CONFIG_TMPFS=y
CONFIG_TMPFS_POSIX_ACL=y
CONFIG_TMPFS_XATTR=y
# CONFIG_TMPFS_INODE64 is not set
CONFIG_HUGETLBFS=y
CONFIG_HUGETLB_PAGE=y
CONFIG_MEMFD_CREATE=y
CONFIG_ARCH_HAS_GIGANTIC_PAGE=y
CONFIG_CONFIGFS_FS=y
CONFIG_EFIVAR_FS=y
# end of Pseudo filesystems

CONFIG_MISC_FILESYSTEMS=y
# CONFIG_ORANGEFS_FS is not set
# CONFIG_ADFS_FS is not set
# CONFIG_AFFS_FS is not set
# CONFIG_ECRYPT_FS is not set
# CONFIG_HFS_FS is not set
# CONFIG_HFSPLUS_FS is not set
# CONFIG_BEFS_FS is not set
# CONFIG_BFS_FS is not set
# CONFIG_EFS_FS is not set
CONFIG_CRAMFS=m
CONFIG_CRAMFS_BLOCKDEV=y
CONFIG_SQUASHFS=m
# CONFIG_SQUASHFS_FILE_CACHE is not set
CONFIG_SQUASHFS_FILE_DIRECT=y
# CONFIG_SQUASHFS_DECOMP_SINGLE is not set
# CONFIG_SQUASHFS_DECOMP_MULTI is not set
CONFIG_SQUASHFS_DECOMP_MULTI_PERCPU=y
CONFIG_SQUASHFS_XATTR=y
CONFIG_SQUASHFS_ZLIB=y
# CONFIG_SQUASHFS_LZ4 is not set
CONFIG_SQUASHFS_LZO=y
CONFIG_SQUASHFS_XZ=y
# CONFIG_SQUASHFS_ZSTD is not set
# CONFIG_SQUASHFS_4K_DEVBLK_SIZE is not set
# CONFIG_SQUASHFS_EMBEDDED is not set
CONFIG_SQUASHFS_FRAGMENT_CACHE_SIZE=3
# CONFIG_VXFS_FS is not set
CONFIG_MINIX_FS=m
# CONFIG_OMFS_FS is not set
# CONFIG_HPFS_FS is not set
# CONFIG_QNX4FS_FS is not set
# CONFIG_QNX6FS_FS is not set
# CONFIG_ROMFS_FS is not set
CONFIG_PSTORE=y
CONFIG_PSTORE_DEFLATE_COMPRESS=y
# CONFIG_PSTORE_LZO_COMPRESS is not set
# CONFIG_PSTORE_LZ4_COMPRESS is not set
# CONFIG_PSTORE_LZ4HC_COMPRESS is not set
# CONFIG_PSTORE_842_COMPRESS is not set
# CONFIG_PSTORE_ZSTD_COMPRESS is not set
CONFIG_PSTORE_COMPRESS=y
CONFIG_PSTORE_DEFLATE_COMPRESS_DEFAULT=y
CONFIG_PSTORE_COMPRESS_DEFAULT="deflate"
# CONFIG_PSTORE_CONSOLE is not set
# CONFIG_PSTORE_PMSG is not set
# CONFIG_PSTORE_FTRACE is not set
CONFIG_PSTORE_RAM=m
# CONFIG_PSTORE_BLK is not set
# CONFIG_SYSV_FS is not set
# CONFIG_UFS_FS is not set
# CONFIG_EROFS_FS is not set
CONFIG_NETWORK_FILESYSTEMS=y
CONFIG_NFS_FS=y
# CONFIG_NFS_V2 is not set
CONFIG_NFS_V3=y
CONFIG_NFS_V3_ACL=y
CONFIG_NFS_V4=m
# CONFIG_NFS_SWAP is not set
CONFIG_NFS_V4_1=y
CONFIG_NFS_V4_2=y
CONFIG_PNFS_FILE_LAYOUT=m
CONFIG_PNFS_BLOCK=m
CONFIG_PNFS_FLEXFILE_LAYOUT=m
CONFIG_NFS_V4_1_IMPLEMENTATION_ID_DOMAIN="kernel.org"
# CONFIG_NFS_V4_1_MIGRATION is not set
CONFIG_NFS_V4_SECURITY_LABEL=y
CONFIG_ROOT_NFS=y
# CONFIG_NFS_USE_LEGACY_DNS is not set
CONFIG_NFS_USE_KERNEL_DNS=y
CONFIG_NFS_DEBUG=y
CONFIG_NFS_DISABLE_UDP_SUPPORT=y
# CONFIG_NFS_V4_2_READ_PLUS is not set
CONFIG_NFSD=m
CONFIG_NFSD_V2_ACL=y
CONFIG_NFSD_V3=y
CONFIG_NFSD_V3_ACL=y
CONFIG_NFSD_V4=y
CONFIG_NFSD_PNFS=y
# CONFIG_NFSD_BLOCKLAYOUT is not set
CONFIG_NFSD_SCSILAYOUT=y
# CONFIG_NFSD_FLEXFILELAYOUT is not set
# CONFIG_NFSD_V4_2_INTER_SSC is not set
CONFIG_NFSD_V4_SECURITY_LABEL=y
CONFIG_GRACE_PERIOD=y
CONFIG_LOCKD=y
CONFIG_LOCKD_V4=y
CONFIG_NFS_ACL_SUPPORT=y
CONFIG_NFS_COMMON=y
CONFIG_SUNRPC=y
CONFIG_SUNRPC_GSS=m
CONFIG_SUNRPC_BACKCHANNEL=y
CONFIG_RPCSEC_GSS_KRB5=m
# CONFIG_SUNRPC_DISABLE_INSECURE_ENCTYPES is not set
CONFIG_SUNRPC_DEBUG=y
CONFIG_SUNRPC_XPRT_RDMA=m
CONFIG_CEPH_FS=m
# CONFIG_CEPH_FSCACHE is not set
CONFIG_CEPH_FS_POSIX_ACL=y
# CONFIG_CEPH_FS_SECURITY_LABEL is not set
CONFIG_CIFS=m
# CONFIG_CIFS_STATS2 is not set
CONFIG_CIFS_ALLOW_INSECURE_LEGACY=y
CONFIG_CIFS_WEAK_PW_HASH=y
CONFIG_CIFS_UPCALL=y
CONFIG_CIFS_XATTR=y
CONFIG_CIFS_POSIX=y
CONFIG_CIFS_DEBUG=y
# CONFIG_CIFS_DEBUG2 is not set
# CONFIG_CIFS_DEBUG_DUMP_KEYS is not set
CONFIG_CIFS_DFS_UPCALL=y
# CONFIG_CIFS_SMB_DIRECT is not set
# CONFIG_CIFS_FSCACHE is not set
# CONFIG_CODA_FS is not set
# CONFIG_AFS_FS is not set
# CONFIG_9P_FS is not set
CONFIG_NLS=y
CONFIG_NLS_DEFAULT="utf8"
CONFIG_NLS_CODEPAGE_437=y
CONFIG_NLS_CODEPAGE_737=m
CONFIG_NLS_CODEPAGE_775=m
CONFIG_NLS_CODEPAGE_850=m
CONFIG_NLS_CODEPAGE_852=m
CONFIG_NLS_CODEPAGE_855=m
CONFIG_NLS_CODEPAGE_857=m
CONFIG_NLS_CODEPAGE_860=m
CONFIG_NLS_CODEPAGE_861=m
CONFIG_NLS_CODEPAGE_862=m
CONFIG_NLS_CODEPAGE_863=m
CONFIG_NLS_CODEPAGE_864=m
CONFIG_NLS_CODEPAGE_865=m
CONFIG_NLS_CODEPAGE_866=m
CONFIG_NLS_CODEPAGE_869=m
CONFIG_NLS_CODEPAGE_936=m
CONFIG_NLS_CODEPAGE_950=m
CONFIG_NLS_CODEPAGE_932=m
CONFIG_NLS_CODEPAGE_949=m
CONFIG_NLS_CODEPAGE_874=m
CONFIG_NLS_ISO8859_8=m
CONFIG_NLS_CODEPAGE_1250=m
CONFIG_NLS_CODEPAGE_1251=m
CONFIG_NLS_ASCII=y
CONFIG_NLS_ISO8859_1=m
CONFIG_NLS_ISO8859_2=m
CONFIG_NLS_ISO8859_3=m
CONFIG_NLS_ISO8859_4=m
CONFIG_NLS_ISO8859_5=m
CONFIG_NLS_ISO8859_6=m
CONFIG_NLS_ISO8859_7=m
CONFIG_NLS_ISO8859_9=m
CONFIG_NLS_ISO8859_13=m
CONFIG_NLS_ISO8859_14=m
CONFIG_NLS_ISO8859_15=m
CONFIG_NLS_KOI8_R=m
CONFIG_NLS_KOI8_U=m
CONFIG_NLS_MAC_ROMAN=m
CONFIG_NLS_MAC_CELTIC=m
CONFIG_NLS_MAC_CENTEURO=m
CONFIG_NLS_MAC_CROATIAN=m
CONFIG_NLS_MAC_CYRILLIC=m
CONFIG_NLS_MAC_GAELIC=m
CONFIG_NLS_MAC_GREEK=m
CONFIG_NLS_MAC_ICELAND=m
CONFIG_NLS_MAC_INUIT=m
CONFIG_NLS_MAC_ROMANIAN=m
CONFIG_NLS_MAC_TURKISH=m
CONFIG_NLS_UTF8=m
CONFIG_DLM=m
CONFIG_DLM_DEBUG=y
# CONFIG_UNICODE is not set
CONFIG_IO_WQ=y
# end of File systems

#
# Security options
#
CONFIG_KEYS=y
# CONFIG_KEYS_REQUEST_CACHE is not set
CONFIG_PERSISTENT_KEYRINGS=y
CONFIG_TRUSTED_KEYS=y
CONFIG_ENCRYPTED_KEYS=y
# CONFIG_KEY_DH_OPERATIONS is not set
# CONFIG_SECURITY_DMESG_RESTRICT is not set
CONFIG_SECURITY=y
CONFIG_SECURITY_WRITABLE_HOOKS=y
CONFIG_SECURITYFS=y
CONFIG_SECURITY_NETWORK=y
CONFIG_PAGE_TABLE_ISOLATION=y
# CONFIG_SECURITY_INFINIBAND is not set
CONFIG_SECURITY_NETWORK_XFRM=y
CONFIG_SECURITY_PATH=y
CONFIG_INTEL_TXT=y
CONFIG_LSM_MMAP_MIN_ADDR=65535
CONFIG_HAVE_HARDENED_USERCOPY_ALLOCATOR=y
CONFIG_HARDENED_USERCOPY=y
CONFIG_HARDENED_USERCOPY_FALLBACK=y
CONFIG_FORTIFY_SOURCE=y
# CONFIG_STATIC_USERMODEHELPER is not set
CONFIG_SECURITY_SELINUX=y
CONFIG_SECURITY_SELINUX_BOOTPARAM=y
CONFIG_SECURITY_SELINUX_DISABLE=y
CONFIG_SECURITY_SELINUX_DEVELOP=y
CONFIG_SECURITY_SELINUX_AVC_STATS=y
CONFIG_SECURITY_SELINUX_CHECKREQPROT_VALUE=1
CONFIG_SECURITY_SELINUX_SIDTAB_HASH_BITS=9
CONFIG_SECURITY_SELINUX_SID2STR_CACHE_SIZE=256
# CONFIG_SECURITY_SMACK is not set
# CONFIG_SECURITY_TOMOYO is not set
CONFIG_SECURITY_APPARMOR=y
CONFIG_SECURITY_APPARMOR_HASH=y
CONFIG_SECURITY_APPARMOR_HASH_DEFAULT=y
# CONFIG_SECURITY_APPARMOR_DEBUG is not set
# CONFIG_SECURITY_APPARMOR_KUNIT_TEST is not set
# CONFIG_SECURITY_LOADPIN is not set
CONFIG_SECURITY_YAMA=y
# CONFIG_SECURITY_SAFESETID is not set
# CONFIG_SECURITY_LOCKDOWN_LSM is not set
CONFIG_INTEGRITY=y
CONFIG_INTEGRITY_SIGNATURE=y
CONFIG_INTEGRITY_ASYMMETRIC_KEYS=y
CONFIG_INTEGRITY_TRUSTED_KEYRING=y
# CONFIG_INTEGRITY_PLATFORM_KEYRING is not set
CONFIG_INTEGRITY_AUDIT=y
CONFIG_IMA=y
CONFIG_IMA_MEASURE_PCR_IDX=10
CONFIG_IMA_LSM_RULES=y
# CONFIG_IMA_TEMPLATE is not set
CONFIG_IMA_NG_TEMPLATE=y
# CONFIG_IMA_SIG_TEMPLATE is not set
CONFIG_IMA_DEFAULT_TEMPLATE="ima-ng"
CONFIG_IMA_DEFAULT_HASH_SHA1=y
# CONFIG_IMA_DEFAULT_HASH_SHA256 is not set
# CONFIG_IMA_DEFAULT_HASH_SHA512 is not set
CONFIG_IMA_DEFAULT_HASH="sha1"
# CONFIG_IMA_WRITE_POLICY is not set
# CONFIG_IMA_READ_POLICY is not set
CONFIG_IMA_APPRAISE=y
# CONFIG_IMA_ARCH_POLICY is not set
# CONFIG_IMA_APPRAISE_BUILD_POLICY is not set
CONFIG_IMA_APPRAISE_BOOTPARAM=y
# CONFIG_IMA_APPRAISE_MODSIG is not set
CONFIG_IMA_TRUSTED_KEYRING=y
# CONFIG_IMA_BLACKLIST_KEYRING is not set
# CONFIG_IMA_LOAD_X509 is not set
CONFIG_IMA_MEASURE_ASYMMETRIC_KEYS=y
CONFIG_IMA_QUEUE_EARLY_BOOT_KEYS=y
# CONFIG_IMA_SECURE_AND_OR_TRUSTED_BOOT is not set
CONFIG_EVM=y
CONFIG_EVM_ATTR_FSUUID=y
# CONFIG_EVM_ADD_XATTRS is not set
# CONFIG_EVM_LOAD_X509 is not set
CONFIG_DEFAULT_SECURITY_SELINUX=y
# CONFIG_DEFAULT_SECURITY_APPARMOR is not set
# CONFIG_DEFAULT_SECURITY_DAC is not set
CONFIG_LSM="lockdown,yama,loadpin,safesetid,integrity,selinux,smack,tomoyo,apparmor,bpf"

#
# Kernel hardening options
#

#
# Memory initialization
#
CONFIG_INIT_STACK_NONE=y
# CONFIG_INIT_ON_ALLOC_DEFAULT_ON is not set
# CONFIG_INIT_ON_FREE_DEFAULT_ON is not set
# end of Memory initialization
# end of Kernel hardening options
# end of Security options

CONFIG_XOR_BLOCKS=m
CONFIG_ASYNC_CORE=m
CONFIG_ASYNC_MEMCPY=m
CONFIG_ASYNC_XOR=m
CONFIG_ASYNC_PQ=m
CONFIG_ASYNC_RAID6_RECOV=m
CONFIG_CRYPTO=y

#
# Crypto core or helper
#
CONFIG_CRYPTO_ALGAPI=y
CONFIG_CRYPTO_ALGAPI2=y
CONFIG_CRYPTO_AEAD=y
CONFIG_CRYPTO_AEAD2=y
CONFIG_CRYPTO_SKCIPHER=y
CONFIG_CRYPTO_SKCIPHER2=y
CONFIG_CRYPTO_HASH=y
CONFIG_CRYPTO_HASH2=y
CONFIG_CRYPTO_RNG=y
CONFIG_CRYPTO_RNG2=y
CONFIG_CRYPTO_RNG_DEFAULT=y
CONFIG_CRYPTO_AKCIPHER2=y
CONFIG_CRYPTO_AKCIPHER=y
CONFIG_CRYPTO_KPP2=y
CONFIG_CRYPTO_KPP=m
CONFIG_CRYPTO_ACOMP2=y
CONFIG_CRYPTO_MANAGER=y
CONFIG_CRYPTO_MANAGER2=y
CONFIG_CRYPTO_USER=m
CONFIG_CRYPTO_MANAGER_DISABLE_TESTS=y
CONFIG_CRYPTO_GF128MUL=y
CONFIG_CRYPTO_NULL=y
CONFIG_CRYPTO_NULL2=y
CONFIG_CRYPTO_PCRYPT=m
CONFIG_CRYPTO_CRYPTD=y
CONFIG_CRYPTO_AUTHENC=m
CONFIG_CRYPTO_TEST=m
CONFIG_CRYPTO_SIMD=y
CONFIG_CRYPTO_GLUE_HELPER_X86=y

#
# Public-key cryptography
#
CONFIG_CRYPTO_RSA=y
CONFIG_CRYPTO_DH=m
CONFIG_CRYPTO_ECC=m
CONFIG_CRYPTO_ECDH=m
# CONFIG_CRYPTO_ECRDSA is not set
# CONFIG_CRYPTO_SM2 is not set
# CONFIG_CRYPTO_CURVE25519 is not set
# CONFIG_CRYPTO_CURVE25519_X86 is not set

#
# Authenticated Encryption with Associated Data
#
CONFIG_CRYPTO_CCM=m
CONFIG_CRYPTO_GCM=y
CONFIG_CRYPTO_CHACHA20POLY1305=m
# CONFIG_CRYPTO_AEGIS128 is not set
# CONFIG_CRYPTO_AEGIS128_AESNI_SSE2 is not set
CONFIG_CRYPTO_SEQIV=y
CONFIG_CRYPTO_ECHAINIV=m

#
# Block modes
#
CONFIG_CRYPTO_CBC=y
CONFIG_CRYPTO_CFB=y
CONFIG_CRYPTO_CTR=y
CONFIG_CRYPTO_CTS=y
CONFIG_CRYPTO_ECB=y
CONFIG_CRYPTO_LRW=m
# CONFIG_CRYPTO_OFB is not set
CONFIG_CRYPTO_PCBC=m
CONFIG_CRYPTO_XTS=y
# CONFIG_CRYPTO_KEYWRAP is not set
# CONFIG_CRYPTO_NHPOLY1305_SSE2 is not set
# CONFIG_CRYPTO_NHPOLY1305_AVX2 is not set
# CONFIG_CRYPTO_ADIANTUM is not set
CONFIG_CRYPTO_ESSIV=m

#
# Hash modes
#
CONFIG_CRYPTO_CMAC=m
CONFIG_CRYPTO_HMAC=y
CONFIG_CRYPTO_XCBC=m
CONFIG_CRYPTO_VMAC=m

#
# Digest
#
CONFIG_CRYPTO_CRC32C=y
CONFIG_CRYPTO_CRC32C_INTEL=m
CONFIG_CRYPTO_CRC32=m
CONFIG_CRYPTO_CRC32_PCLMUL=m
CONFIG_CRYPTO_XXHASH=m
CONFIG_CRYPTO_BLAKE2B=m
# CONFIG_CRYPTO_BLAKE2S is not set
# CONFIG_CRYPTO_BLAKE2S_X86 is not set
CONFIG_CRYPTO_CRCT10DIF=y
CONFIG_CRYPTO_CRCT10DIF_PCLMUL=m
CONFIG_CRYPTO_GHASH=y
CONFIG_CRYPTO_POLY1305=m
CONFIG_CRYPTO_POLY1305_X86_64=m
CONFIG_CRYPTO_MD4=m
CONFIG_CRYPTO_MD5=y
CONFIG_CRYPTO_MICHAEL_MIC=m
CONFIG_CRYPTO_RMD128=m
CONFIG_CRYPTO_RMD160=m
CONFIG_CRYPTO_RMD256=m
CONFIG_CRYPTO_RMD320=m
CONFIG_CRYPTO_SHA1=y
CONFIG_CRYPTO_SHA1_SSSE3=y
CONFIG_CRYPTO_SHA256_SSSE3=y
CONFIG_CRYPTO_SHA512_SSSE3=m
CONFIG_CRYPTO_SHA256=y
CONFIG_CRYPTO_SHA512=y
CONFIG_CRYPTO_SHA3=m
# CONFIG_CRYPTO_SM3 is not set
# CONFIG_CRYPTO_STREEBOG is not set
CONFIG_CRYPTO_TGR192=m
CONFIG_CRYPTO_WP512=m
CONFIG_CRYPTO_GHASH_CLMUL_NI_INTEL=m

#
# Ciphers
#
CONFIG_CRYPTO_AES=y
# CONFIG_CRYPTO_AES_TI is not set
CONFIG_CRYPTO_AES_NI_INTEL=y
CONFIG_CRYPTO_ANUBIS=m
CONFIG_CRYPTO_ARC4=m
CONFIG_CRYPTO_BLOWFISH=m
CONFIG_CRYPTO_BLOWFISH_COMMON=m
CONFIG_CRYPTO_BLOWFISH_X86_64=m
CONFIG_CRYPTO_CAMELLIA=m
CONFIG_CRYPTO_CAMELLIA_X86_64=m
CONFIG_CRYPTO_CAMELLIA_AESNI_AVX_X86_64=m
CONFIG_CRYPTO_CAMELLIA_AESNI_AVX2_X86_64=m
CONFIG_CRYPTO_CAST_COMMON=m
CONFIG_CRYPTO_CAST5=m
CONFIG_CRYPTO_CAST5_AVX_X86_64=m
CONFIG_CRYPTO_CAST6=m
CONFIG_CRYPTO_CAST6_AVX_X86_64=m
CONFIG_CRYPTO_DES=m
CONFIG_CRYPTO_DES3_EDE_X86_64=m
CONFIG_CRYPTO_FCRYPT=m
CONFIG_CRYPTO_KHAZAD=m
CONFIG_CRYPTO_SALSA20=m
CONFIG_CRYPTO_CHACHA20=m
CONFIG_CRYPTO_CHACHA20_X86_64=m
CONFIG_CRYPTO_SEED=m
CONFIG_CRYPTO_SERPENT=m
CONFIG_CRYPTO_SERPENT_SSE2_X86_64=m
CONFIG_CRYPTO_SERPENT_AVX_X86_64=m
CONFIG_CRYPTO_SERPENT_AVX2_X86_64=m
# CONFIG_CRYPTO_SM4 is not set
CONFIG_CRYPTO_TEA=m
CONFIG_CRYPTO_TWOFISH=m
CONFIG_CRYPTO_TWOFISH_COMMON=m
CONFIG_CRYPTO_TWOFISH_X86_64=m
CONFIG_CRYPTO_TWOFISH_X86_64_3WAY=m
CONFIG_CRYPTO_TWOFISH_AVX_X86_64=m

#
# Compression
#
CONFIG_CRYPTO_DEFLATE=y
CONFIG_CRYPTO_LZO=y
# CONFIG_CRYPTO_842 is not set
# CONFIG_CRYPTO_LZ4 is not set
# CONFIG_CRYPTO_LZ4HC is not set
# CONFIG_CRYPTO_ZSTD is not set

#
# Random Number Generation
#
CONFIG_CRYPTO_ANSI_CPRNG=m
CONFIG_CRYPTO_DRBG_MENU=y
CONFIG_CRYPTO_DRBG_HMAC=y
CONFIG_CRYPTO_DRBG_HASH=y
CONFIG_CRYPTO_DRBG_CTR=y
CONFIG_CRYPTO_DRBG=y
CONFIG_CRYPTO_JITTERENTROPY=y
CONFIG_CRYPTO_USER_API=y
CONFIG_CRYPTO_USER_API_HASH=y
CONFIG_CRYPTO_USER_API_SKCIPHER=y
CONFIG_CRYPTO_USER_API_RNG=y
# CONFIG_CRYPTO_USER_API_RNG_CAVP is not set
CONFIG_CRYPTO_USER_API_AEAD=y
CONFIG_CRYPTO_USER_API_ENABLE_OBSOLETE=y
# CONFIG_CRYPTO_STATS is not set
CONFIG_CRYPTO_HASH_INFO=y

#
# Crypto library routines
#
CONFIG_CRYPTO_LIB_AES=y
CONFIG_CRYPTO_LIB_ARC4=m
# CONFIG_CRYPTO_LIB_BLAKE2S is not set
CONFIG_CRYPTO_ARCH_HAVE_LIB_CHACHA=m
CONFIG_CRYPTO_LIB_CHACHA_GENERIC=m
# CONFIG_CRYPTO_LIB_CHACHA is not set
# CONFIG_CRYPTO_LIB_CURVE25519 is not set
CONFIG_CRYPTO_LIB_DES=m
CONFIG_CRYPTO_LIB_POLY1305_RSIZE=11
CONFIG_CRYPTO_ARCH_HAVE_LIB_POLY1305=m
CONFIG_CRYPTO_LIB_POLY1305_GENERIC=m
# CONFIG_CRYPTO_LIB_POLY1305 is not set
# CONFIG_CRYPTO_LIB_CHACHA20POLY1305 is not set
CONFIG_CRYPTO_LIB_SHA256=y
CONFIG_CRYPTO_HW=y
CONFIG_CRYPTO_DEV_PADLOCK=m
CONFIG_CRYPTO_DEV_PADLOCK_AES=m
CONFIG_CRYPTO_DEV_PADLOCK_SHA=m
# CONFIG_CRYPTO_DEV_ATMEL_ECC is not set
# CONFIG_CRYPTO_DEV_ATMEL_SHA204A is not set
CONFIG_CRYPTO_DEV_CCP=y
CONFIG_CRYPTO_DEV_CCP_DD=m
CONFIG_CRYPTO_DEV_SP_CCP=y
CONFIG_CRYPTO_DEV_CCP_CRYPTO=m
CONFIG_CRYPTO_DEV_SP_PSP=y
# CONFIG_CRYPTO_DEV_CCP_DEBUGFS is not set
CONFIG_CRYPTO_DEV_QAT=m
CONFIG_CRYPTO_DEV_QAT_DH895xCC=m
CONFIG_CRYPTO_DEV_QAT_C3XXX=m
CONFIG_CRYPTO_DEV_QAT_C62X=m
CONFIG_CRYPTO_DEV_QAT_DH895xCCVF=m
CONFIG_CRYPTO_DEV_QAT_C3XXXVF=m
CONFIG_CRYPTO_DEV_QAT_C62XVF=m
CONFIG_CRYPTO_DEV_NITROX=m
CONFIG_CRYPTO_DEV_NITROX_CNN55XX=m
# CONFIG_CRYPTO_DEV_VIRTIO is not set
# CONFIG_CRYPTO_DEV_SAFEXCEL is not set
# CONFIG_CRYPTO_DEV_AMLOGIC_GXL is not set
CONFIG_ASYMMETRIC_KEY_TYPE=y
CONFIG_ASYMMETRIC_PUBLIC_KEY_SUBTYPE=y
# CONFIG_ASYMMETRIC_TPM_KEY_SUBTYPE is not set
CONFIG_X509_CERTIFICATE_PARSER=y
# CONFIG_PKCS8_PRIVATE_KEY_PARSER is not set
CONFIG_PKCS7_MESSAGE_PARSER=y
# CONFIG_PKCS7_TEST_KEY is not set
CONFIG_SIGNED_PE_FILE_VERIFICATION=y

#
# Certificates for signature checking
#
CONFIG_MODULE_SIG_KEY="certs/signing_key.pem"
CONFIG_SYSTEM_TRUSTED_KEYRING=y
CONFIG_SYSTEM_TRUSTED_KEYS=""
# CONFIG_SYSTEM_EXTRA_CERTIFICATE is not set
# CONFIG_SECONDARY_TRUSTED_KEYRING is not set
CONFIG_SYSTEM_BLACKLIST_KEYRING=y
CONFIG_SYSTEM_BLACKLIST_HASH_LIST=""
# end of Certificates for signature checking

CONFIG_BINARY_PRINTF=y

#
# Library routines
#
CONFIG_RAID6_PQ=m
CONFIG_RAID6_PQ_BENCHMARK=y
# CONFIG_PACKING is not set
CONFIG_BITREVERSE=y
CONFIG_GENERIC_STRNCPY_FROM_USER=y
CONFIG_GENERIC_STRNLEN_USER=y
CONFIG_GENERIC_NET_UTILS=y
CONFIG_GENERIC_FIND_FIRST_BIT=y
CONFIG_CORDIC=m
# CONFIG_PRIME_NUMBERS is not set
CONFIG_RATIONAL=y
CONFIG_GENERIC_PCI_IOMAP=y
CONFIG_GENERIC_IOMAP=y
CONFIG_ARCH_USE_CMPXCHG_LOCKREF=y
CONFIG_ARCH_HAS_FAST_MULTIPLIER=y
CONFIG_ARCH_USE_SYM_ANNOTATIONS=y
CONFIG_CRC_CCITT=y
CONFIG_CRC16=y
CONFIG_CRC_T10DIF=y
CONFIG_CRC_ITU_T=m
CONFIG_CRC32=y
# CONFIG_CRC32_SELFTEST is not set
CONFIG_CRC32_SLICEBY8=y
# CONFIG_CRC32_SLICEBY4 is not set
# CONFIG_CRC32_SARWATE is not set
# CONFIG_CRC32_BIT is not set
# CONFIG_CRC64 is not set
# CONFIG_CRC4 is not set
CONFIG_CRC7=m
CONFIG_LIBCRC32C=m
CONFIG_CRC8=m
CONFIG_XXHASH=y
# CONFIG_RANDOM32_SELFTEST is not set
CONFIG_ZLIB_INFLATE=y
CONFIG_ZLIB_DEFLATE=y
CONFIG_LZO_COMPRESS=y
CONFIG_LZO_DECOMPRESS=y
CONFIG_LZ4_DECOMPRESS=y
CONFIG_ZSTD_COMPRESS=m
CONFIG_ZSTD_DECOMPRESS=y
CONFIG_XZ_DEC=y
CONFIG_XZ_DEC_X86=y
CONFIG_XZ_DEC_POWERPC=y
CONFIG_XZ_DEC_IA64=y
CONFIG_XZ_DEC_ARM=y
CONFIG_XZ_DEC_ARMTHUMB=y
CONFIG_XZ_DEC_SPARC=y
CONFIG_XZ_DEC_BCJ=y
# CONFIG_XZ_DEC_TEST is not set
CONFIG_DECOMPRESS_GZIP=y
CONFIG_DECOMPRESS_BZIP2=y
CONFIG_DECOMPRESS_LZMA=y
CONFIG_DECOMPRESS_XZ=y
CONFIG_DECOMPRESS_LZO=y
CONFIG_DECOMPRESS_LZ4=y
CONFIG_DECOMPRESS_ZSTD=y
CONFIG_GENERIC_ALLOCATOR=y
CONFIG_REED_SOLOMON=m
CONFIG_REED_SOLOMON_ENC8=y
CONFIG_REED_SOLOMON_DEC8=y
CONFIG_TEXTSEARCH=y
CONFIG_TEXTSEARCH_KMP=m
CONFIG_TEXTSEARCH_BM=m
CONFIG_TEXTSEARCH_FSM=m
CONFIG_INTERVAL_TREE=y
CONFIG_XARRAY_MULTI=y
CONFIG_ASSOCIATIVE_ARRAY=y
CONFIG_HAS_IOMEM=y
CONFIG_HAS_IOPORT_MAP=y
CONFIG_HAS_DMA=y
CONFIG_DMA_OPS=y
CONFIG_NEED_SG_DMA_LENGTH=y
CONFIG_NEED_DMA_MAP_STATE=y
CONFIG_ARCH_DMA_ADDR_T_64BIT=y
CONFIG_ARCH_HAS_FORCE_DMA_UNENCRYPTED=y
CONFIG_DMA_VIRT_OPS=y
CONFIG_SWIOTLB=y
CONFIG_DMA_COHERENT_POOL=y
CONFIG_DMA_CMA=y
# CONFIG_DMA_PERNUMA_CMA is not set

#
# Default contiguous memory area size:
#
CONFIG_CMA_SIZE_MBYTES=200
CONFIG_CMA_SIZE_SEL_MBYTES=y
# CONFIG_CMA_SIZE_SEL_PERCENTAGE is not set
# CONFIG_CMA_SIZE_SEL_MIN is not set
# CONFIG_CMA_SIZE_SEL_MAX is not set
CONFIG_CMA_ALIGNMENT=8
# CONFIG_DMA_API_DEBUG is not set
CONFIG_SGL_ALLOC=y
CONFIG_CHECK_SIGNATURE=y
CONFIG_CPUMASK_OFFSTACK=y
CONFIG_CPU_RMAP=y
CONFIG_DQL=y
CONFIG_GLOB=y
# CONFIG_GLOB_SELFTEST is not set
CONFIG_NLATTR=y
CONFIG_CLZ_TAB=y
CONFIG_IRQ_POLL=y
CONFIG_MPILIB=y
CONFIG_SIGNATURE=y
CONFIG_DIMLIB=y
CONFIG_OID_REGISTRY=y
CONFIG_UCS2_STRING=y
CONFIG_HAVE_GENERIC_VDSO=y
CONFIG_GENERIC_GETTIMEOFDAY=y
CONFIG_GENERIC_VDSO_TIME_NS=y
CONFIG_FONT_SUPPORT=y
# CONFIG_FONTS is not set
CONFIG_FONT_8x8=y
CONFIG_FONT_8x16=y
CONFIG_SG_POOL=y
CONFIG_ARCH_HAS_PMEM_API=y
CONFIG_MEMREGION=y
CONFIG_ARCH_HAS_UACCESS_FLUSHCACHE=y
CONFIG_ARCH_HAS_COPY_MC=y
CONFIG_ARCH_STACKWALK=y
CONFIG_SBITMAP=y
# CONFIG_STRING_SELFTEST is not set
# end of Library routines

#
# Kernel hacking
#

#
# printk and dmesg options
#
CONFIG_PRINTK_TIME=y
# CONFIG_PRINTK_CALLER is not set
CONFIG_CONSOLE_LOGLEVEL_DEFAULT=7
CONFIG_CONSOLE_LOGLEVEL_QUIET=4
CONFIG_MESSAGE_LOGLEVEL_DEFAULT=4
CONFIG_BOOT_PRINTK_DELAY=y
CONFIG_DYNAMIC_DEBUG=y
CONFIG_DYNAMIC_DEBUG_CORE=y
CONFIG_SYMBOLIC_ERRNAME=y
CONFIG_DEBUG_BUGVERBOSE=y
# end of printk and dmesg options

#
# Compile-time checks and compiler options
#
CONFIG_DEBUG_INFO=y
CONFIG_DEBUG_INFO_REDUCED=y
# CONFIG_DEBUG_INFO_COMPRESSED is not set
# CONFIG_DEBUG_INFO_SPLIT is not set
CONFIG_DEBUG_INFO_DWARF4=y
# CONFIG_GDB_SCRIPTS is not set
CONFIG_ENABLE_MUST_CHECK=y
CONFIG_FRAME_WARN=2048
CONFIG_STRIP_ASM_SYMS=y
# CONFIG_READABLE_ASM is not set
# CONFIG_HEADERS_INSTALL is not set
CONFIG_DEBUG_SECTION_MISMATCH=y
CONFIG_SECTION_MISMATCH_WARN_ONLY=y
CONFIG_STACK_VALIDATION=y
# CONFIG_DEBUG_FORCE_WEAK_PER_CPU is not set
# end of Compile-time checks and compiler options

#
# Generic Kernel Debugging Instruments
#
CONFIG_MAGIC_SYSRQ=y
CONFIG_MAGIC_SYSRQ_DEFAULT_ENABLE=0x1
CONFIG_MAGIC_SYSRQ_SERIAL=y
CONFIG_MAGIC_SYSRQ_SERIAL_SEQUENCE=""
CONFIG_DEBUG_FS=y
CONFIG_DEBUG_FS_ALLOW_ALL=y
# CONFIG_DEBUG_FS_DISALLOW_MOUNT is not set
# CONFIG_DEBUG_FS_ALLOW_NONE is not set
CONFIG_HAVE_ARCH_KGDB=y
# CONFIG_KGDB is not set
CONFIG_ARCH_HAS_UBSAN_SANITIZE_ALL=y
# CONFIG_UBSAN is not set
CONFIG_HAVE_ARCH_KCSAN=y
# end of Generic Kernel Debugging Instruments

CONFIG_DEBUG_KERNEL=y
CONFIG_DEBUG_MISC=y

#
# Memory Debugging
#
# CONFIG_PAGE_EXTENSION is not set
# CONFIG_DEBUG_PAGEALLOC is not set
# CONFIG_PAGE_OWNER is not set
# CONFIG_PAGE_POISONING is not set
# CONFIG_DEBUG_PAGE_REF is not set
# CONFIG_DEBUG_RODATA_TEST is not set
CONFIG_ARCH_HAS_DEBUG_WX=y
# CONFIG_DEBUG_WX is not set
CONFIG_GENERIC_PTDUMP=y
# CONFIG_PTDUMP_DEBUGFS is not set
# CONFIG_DEBUG_OBJECTS is not set
# CONFIG_SLUB_DEBUG_ON is not set
# CONFIG_SLUB_STATS is not set
CONFIG_HAVE_DEBUG_KMEMLEAK=y
# CONFIG_DEBUG_KMEMLEAK is not set
# CONFIG_DEBUG_STACK_USAGE is not set
# CONFIG_SCHED_STACK_END_CHECK is not set
CONFIG_ARCH_HAS_DEBUG_VM_PGTABLE=y
# CONFIG_DEBUG_VM is not set
# CONFIG_DEBUG_VM_PGTABLE is not set
CONFIG_ARCH_HAS_DEBUG_VIRTUAL=y
# CONFIG_DEBUG_VIRTUAL is not set
CONFIG_DEBUG_MEMORY_INIT=y
# CONFIG_DEBUG_PER_CPU_MAPS is not set
CONFIG_HAVE_ARCH_KASAN=y
CONFIG_HAVE_ARCH_KASAN_VMALLOC=y
CONFIG_CC_HAS_KASAN_GENERIC=y
CONFIG_CC_HAS_WORKING_NOSANITIZE_ADDRESS=y
# CONFIG_KASAN is not set
# end of Memory Debugging

CONFIG_DEBUG_SHIRQ=y

#
# Debug Oops, Lockups and Hangs
#
CONFIG_PANIC_ON_OOPS=y
CONFIG_PANIC_ON_OOPS_VALUE=1
CONFIG_PANIC_TIMEOUT=0
CONFIG_LOCKUP_DETECTOR=y
CONFIG_SOFTLOCKUP_DETECTOR=y
# CONFIG_BOOTPARAM_SOFTLOCKUP_PANIC is not set
CONFIG_BOOTPARAM_SOFTLOCKUP_PANIC_VALUE=0
CONFIG_HARDLOCKUP_DETECTOR_PERF=y
CONFIG_HARDLOCKUP_CHECK_TIMESTAMP=y
CONFIG_HARDLOCKUP_DETECTOR=y
CONFIG_BOOTPARAM_HARDLOCKUP_PANIC=y
CONFIG_BOOTPARAM_HARDLOCKUP_PANIC_VALUE=1
# CONFIG_DETECT_HUNG_TASK is not set
# CONFIG_WQ_WATCHDOG is not set
# CONFIG_TEST_LOCKUP is not set
# end of Debug Oops, Lockups and Hangs

#
# Scheduler Debugging
#
CONFIG_SCHED_DEBUG=y
CONFIG_SCHED_INFO=y
CONFIG_SCHEDSTATS=y
# end of Scheduler Debugging

# CONFIG_DEBUG_TIMEKEEPING is not set

#
# Lock Debugging (spinlocks, mutexes, etc...)
#
CONFIG_LOCK_DEBUGGING_SUPPORT=y
# CONFIG_PROVE_LOCKING is not set
# CONFIG_LOCK_STAT is not set
# CONFIG_DEBUG_RT_MUTEXES is not set
# CONFIG_DEBUG_SPINLOCK is not set
# CONFIG_DEBUG_MUTEXES is not set
# CONFIG_DEBUG_WW_MUTEX_SLOWPATH is not set
# CONFIG_DEBUG_RWSEMS is not set
# CONFIG_DEBUG_LOCK_ALLOC is not set
CONFIG_DEBUG_ATOMIC_SLEEP=y
# CONFIG_DEBUG_LOCKING_API_SELFTESTS is not set
CONFIG_LOCK_TORTURE_TEST=m
# CONFIG_WW_MUTEX_SELFTEST is not set
# CONFIG_SCF_TORTURE_TEST is not set
# CONFIG_CSD_LOCK_WAIT_DEBUG is not set
# end of Lock Debugging (spinlocks, mutexes, etc...)

CONFIG_STACKTRACE=y
# CONFIG_WARN_ALL_UNSEEDED_RANDOM is not set
# CONFIG_DEBUG_KOBJECT is not set

#
# Debug kernel data structures
#
CONFIG_DEBUG_LIST=y
# CONFIG_DEBUG_PLIST is not set
# CONFIG_DEBUG_SG is not set
# CONFIG_DEBUG_NOTIFIERS is not set
CONFIG_BUG_ON_DATA_CORRUPTION=y
# end of Debug kernel data structures

# CONFIG_DEBUG_CREDENTIALS is not set

#
# RCU Debugging
#
CONFIG_TORTURE_TEST=m
CONFIG_RCU_SCALE_TEST=m
CONFIG_RCU_TORTURE_TEST=m
# CONFIG_RCU_REF_SCALE_TEST is not set
CONFIG_RCU_CPU_STALL_TIMEOUT=60
# CONFIG_RCU_TRACE is not set
# CONFIG_RCU_EQS_DEBUG is not set
# end of RCU Debugging

# CONFIG_DEBUG_WQ_FORCE_RR_CPU is not set
# CONFIG_DEBUG_BLOCK_EXT_DEVT is not set
# CONFIG_CPU_HOTPLUG_STATE_CONTROL is not set
CONFIG_LATENCYTOP=y
CONFIG_USER_STACKTRACE_SUPPORT=y
CONFIG_NOP_TRACER=y
CONFIG_HAVE_FUNCTION_TRACER=y
CONFIG_HAVE_FUNCTION_GRAPH_TRACER=y
CONFIG_HAVE_DYNAMIC_FTRACE=y
CONFIG_HAVE_DYNAMIC_FTRACE_WITH_REGS=y
CONFIG_HAVE_DYNAMIC_FTRACE_WITH_DIRECT_CALLS=y
CONFIG_HAVE_FTRACE_MCOUNT_RECORD=y
CONFIG_HAVE_SYSCALL_TRACEPOINTS=y
CONFIG_HAVE_FENTRY=y
CONFIG_HAVE_C_RECORDMCOUNT=y
CONFIG_TRACER_MAX_TRACE=y
CONFIG_TRACE_CLOCK=y
CONFIG_RING_BUFFER=y
CONFIG_EVENT_TRACING=y
CONFIG_CONTEXT_SWITCH_TRACER=y
CONFIG_RING_BUFFER_ALLOW_SWAP=y
CONFIG_TRACING=y
CONFIG_GLOBAL_TRACE_BUF_SIZE=1441792
CONFIG_GENERIC_TRACER=y
CONFIG_TRACING_SUPPORT=y
CONFIG_FTRACE=y
# CONFIG_BOOTTIME_TRACING is not set
CONFIG_FUNCTION_TRACER=y
CONFIG_FUNCTION_GRAPH_TRACER=y
CONFIG_DYNAMIC_FTRACE=y
CONFIG_DYNAMIC_FTRACE_WITH_REGS=y
CONFIG_DYNAMIC_FTRACE_WITH_DIRECT_CALLS=y
CONFIG_FUNCTION_PROFILER=y
CONFIG_STACK_TRACER=y
# CONFIG_IRQSOFF_TRACER is not set
CONFIG_SCHED_TRACER=y
CONFIG_HWLAT_TRACER=y
# CONFIG_MMIOTRACE is not set
CONFIG_FTRACE_SYSCALLS=y
CONFIG_TRACER_SNAPSHOT=y
# CONFIG_TRACER_SNAPSHOT_PER_CPU_SWAP is not set
CONFIG_BRANCH_PROFILE_NONE=y
# CONFIG_PROFILE_ANNOTATED_BRANCHES is not set
CONFIG_BLK_DEV_IO_TRACE=y
CONFIG_KPROBE_EVENTS=y
# CONFIG_KPROBE_EVENTS_ON_NOTRACE is not set
CONFIG_UPROBE_EVENTS=y
CONFIG_BPF_EVENTS=y
CONFIG_DYNAMIC_EVENTS=y
CONFIG_PROBE_EVENTS=y
# CONFIG_BPF_KPROBE_OVERRIDE is not set
CONFIG_FTRACE_MCOUNT_RECORD=y
CONFIG_TRACING_MAP=y
CONFIG_SYNTH_EVENTS=y
CONFIG_HIST_TRIGGERS=y
# CONFIG_TRACE_EVENT_INJECT is not set
# CONFIG_TRACEPOINT_BENCHMARK is not set
CONFIG_RING_BUFFER_BENCHMARK=m
# CONFIG_TRACE_EVAL_MAP_FILE is not set
# CONFIG_FTRACE_STARTUP_TEST is not set
# CONFIG_RING_BUFFER_STARTUP_TEST is not set
# CONFIG_PREEMPTIRQ_DELAY_TEST is not set
# CONFIG_SYNTH_EVENT_GEN_TEST is not set
# CONFIG_KPROBE_EVENT_GEN_TEST is not set
# CONFIG_HIST_TRIGGERS_DEBUG is not set
CONFIG_PROVIDE_OHCI1394_DMA_INIT=y
# CONFIG_SAMPLES is not set
CONFIG_ARCH_HAS_DEVMEM_IS_ALLOWED=y
CONFIG_STRICT_DEVMEM=y
# CONFIG_IO_STRICT_DEVMEM is not set

#
# x86 Debugging
#
CONFIG_TRACE_IRQFLAGS_SUPPORT=y
CONFIG_TRACE_IRQFLAGS_NMI_SUPPORT=y
CONFIG_EARLY_PRINTK_USB=y
CONFIG_X86_VERBOSE_BOOTUP=y
CONFIG_EARLY_PRINTK=y
CONFIG_EARLY_PRINTK_DBGP=y
CONFIG_EARLY_PRINTK_USB_XDBC=y
# CONFIG_EFI_PGT_DUMP is not set
# CONFIG_DEBUG_TLBFLUSH is not set
CONFIG_HAVE_MMIOTRACE_SUPPORT=y
CONFIG_X86_DECODER_SELFTEST=y
CONFIG_IO_DELAY_0X80=y
# CONFIG_IO_DELAY_0XED is not set
# CONFIG_IO_DELAY_UDELAY is not set
# CONFIG_IO_DELAY_NONE is not set
CONFIG_DEBUG_BOOT_PARAMS=y
# CONFIG_CPA_DEBUG is not set
# CONFIG_DEBUG_ENTRY is not set
# CONFIG_DEBUG_NMI_SELFTEST is not set
# CONFIG_X86_DEBUG_FPU is not set
# CONFIG_PUNIT_ATOM_DEBUG is not set
CONFIG_UNWINDER_ORC=y
# CONFIG_UNWINDER_FRAME_POINTER is not set
# end of x86 Debugging

#
# Kernel Testing and Coverage
#
CONFIG_KUNIT=y
# CONFIG_KUNIT_DEBUGFS is not set
CONFIG_KUNIT_TEST=m
CONFIG_KUNIT_EXAMPLE_TEST=m
# CONFIG_KUNIT_ALL_TESTS is not set
# CONFIG_NOTIFIER_ERROR_INJECTION is not set
CONFIG_FUNCTION_ERROR_INJECTION=y
CONFIG_FAULT_INJECTION=y
# CONFIG_FAILSLAB is not set
# CONFIG_FAIL_PAGE_ALLOC is not set
# CONFIG_FAULT_INJECTION_USERCOPY is not set
CONFIG_FAIL_MAKE_REQUEST=y
# CONFIG_FAIL_IO_TIMEOUT is not set
# CONFIG_FAIL_FUTEX is not set
CONFIG_FAULT_INJECTION_DEBUG_FS=y
# CONFIG_FAIL_FUNCTION is not set
# CONFIG_FAIL_MMC_REQUEST is not set
CONFIG_ARCH_HAS_KCOV=y
CONFIG_CC_HAS_SANCOV_TRACE_PC=y
# CONFIG_KCOV is not set
CONFIG_RUNTIME_TESTING_MENU=y
# CONFIG_LKDTM is not set
# CONFIG_TEST_LIST_SORT is not set
# CONFIG_TEST_MIN_HEAP is not set
# CONFIG_TEST_SORT is not set
# CONFIG_KPROBES_SANITY_TEST is not set
# CONFIG_BACKTRACE_SELF_TEST is not set
# CONFIG_RBTREE_TEST is not set
# CONFIG_REED_SOLOMON_TEST is not set
# CONFIG_INTERVAL_TREE_TEST is not set
# CONFIG_PERCPU_TEST is not set
CONFIG_ATOMIC64_SELFTEST=y
# CONFIG_ASYNC_RAID6_TEST is not set
# CONFIG_TEST_HEXDUMP is not set
# CONFIG_TEST_STRING_HELPERS is not set
# CONFIG_TEST_STRSCPY is not set
# CONFIG_TEST_KSTRTOX is not set
# CONFIG_TEST_PRINTF is not set
# CONFIG_TEST_BITMAP is not set
# CONFIG_TEST_UUID is not set
# CONFIG_TEST_XARRAY is not set
# CONFIG_TEST_OVERFLOW is not set
# CONFIG_TEST_RHASHTABLE is not set
# CONFIG_TEST_HASH is not set
# CONFIG_TEST_IDA is not set
# CONFIG_TEST_LKM is not set
# CONFIG_TEST_BITOPS is not set
# CONFIG_TEST_VMALLOC is not set
# CONFIG_TEST_USER_COPY is not set
CONFIG_TEST_BPF=m
# CONFIG_TEST_BLACKHOLE_DEV is not set
# CONFIG_FIND_BIT_BENCHMARK is not set
# CONFIG_TEST_FIRMWARE is not set
# CONFIG_TEST_SYSCTL is not set
# CONFIG_BITFIELD_KUNIT is not set
CONFIG_SYSCTL_KUNIT_TEST=m
CONFIG_LIST_KUNIT_TEST=m
# CONFIG_LINEAR_RANGES_TEST is not set
# CONFIG_BITS_TEST is not set
# CONFIG_TEST_UDELAY is not set
# CONFIG_TEST_STATIC_KEYS is not set
# CONFIG_TEST_KMOD is not set
# CONFIG_TEST_MEMCAT_P is not set
# CONFIG_TEST_LIVEPATCH is not set
# CONFIG_TEST_STACKINIT is not set
# CONFIG_TEST_MEMINIT is not set
# CONFIG_TEST_HMM is not set
# CONFIG_TEST_FREE_PAGES is not set
# CONFIG_TEST_FPU is not set
# CONFIG_MEMTEST is not set
# CONFIG_HYPERV_TESTING is not set
# end of Kernel Testing and Coverage
# end of Kernel hacking

--P+33d92oIH25kiaB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=job-script

#!/bin/sh

export_top_env()
{
	export suite='perf-sanity-tests'
	export testcase='perf-sanity-tests'
	export category='functional'
	export need_memory='2G'
	export job_origin='/lkp-src/allot/cyclic:p1:linux-devel:devel-hourly/lkp-skl-d04/perf-sanity-tests.yaml'
	export queue_cmdline_keys='branch
commit
queue_at_least_once'
	export queue='validate'
	export testbox='lkp-skl-d04'
	export tbox_group='lkp-skl-d04'
	export kconfig='x86_64-rhel-8.3'
	export submit_id='5fda7f0f888d22a5fd51af7f'
	export job_file='/lkp/jobs/scheduled/lkp-skl-d04/perf-sanity-tests-gcc-ucode=0xe2-debian-10.4-x86_64-20200603.cgz-c12b7a396ff758a262002b5b326d83efeae71140-20201217-42493-1avp7js-3.yaml'
	export id='dd7ab273d8329600409bbd987b04459ee8f78e5a'
	export queuer_version='/lkp-src'
	export model='Skylake'
	export nr_cpu=4
	export memory='32G'
	export nr_ssd_partitions=1
	export nr_hdd_partitions=4
	export hdd_partitions='/dev/disk/by-id/ata-ST1000DM003-1ER162_Z4YB7AEL-part*'
	export ssd_partitions='/dev/disk/by-id/wwn-0x55cd2e404b64c499-part2'
	export rootfs_partition='/dev/disk/by-id/wwn-0x55cd2e404b64c499-part1'
	export brand='Intel(R) Core(TM) i5-6500 CPU @ 3.20GHz'
	export need_linux_perf=true
	export commit='c12b7a396ff758a262002b5b326d83efeae71140'
	export need_kconfig_hw='CONFIG_E1000E=y
CONFIG_SATA_AHCI'
	export ucode='0xe2'
	export enqueue_time='2020-12-17 05:41:35 +0800'
	export _id='5fda7f11888d22a5fd51af81'
	export _rt='/result/perf-sanity-tests/gcc-ucode=0xe2/lkp-skl-d04/debian-10.4-x86_64-20200603.cgz/x86_64-rhel-8.3/gcc-9/c12b7a396ff758a262002b5b326d83efeae71140'
	export user='lkp'
	export compiler='gcc-9'
	export head_commit='5a790e0217a4dbbe9c287b7b7f2d3f32d4df0812'
	export base_commit='2c85ebc57b3e1817b6ce1a6b703928e113a90442'
	export branch='linux-review/Chris-Wilson/drm-i915-gt-Track-the-overall-awake-busy-time/20201215-234731'
	export rootfs='debian-10.4-x86_64-20200603.cgz'
	export result_root='/result/perf-sanity-tests/gcc-ucode=0xe2/lkp-skl-d04/debian-10.4-x86_64-20200603.cgz/x86_64-rhel-8.3/gcc-9/c12b7a396ff758a262002b5b326d83efeae71140/3'
	export scheduler_version='/lkp/lkp/.src-20201216-155149'
	export LKP_SERVER='internal-lkp-server'
	export arch='x86_64'
	export max_uptime=2100
	export initrd='/osimage/debian/debian-10.4-x86_64-20200603.cgz'
	export bootloader_append='root=/dev/ram0
user=lkp
job=/lkp/jobs/scheduled/lkp-skl-d04/perf-sanity-tests-gcc-ucode=0xe2-debian-10.4-x86_64-20200603.cgz-c12b7a396ff758a262002b5b326d83efeae71140-20201217-42493-1avp7js-3.yaml
ARCH=x86_64
kconfig=x86_64-rhel-8.3
branch=linux-review/Chris-Wilson/drm-i915-gt-Track-the-overall-awake-busy-time/20201215-234731
commit=c12b7a396ff758a262002b5b326d83efeae71140
BOOT_IMAGE=/pkg/linux/x86_64-rhel-8.3/gcc-9/c12b7a396ff758a262002b5b326d83efeae71140/vmlinuz-5.10.0-02717-gc12b7a396ff7
max_uptime=2100
RESULT_ROOT=/result/perf-sanity-tests/gcc-ucode=0xe2/lkp-skl-d04/debian-10.4-x86_64-20200603.cgz/x86_64-rhel-8.3/gcc-9/c12b7a396ff758a262002b5b326d83efeae71140/3
LKP_SERVER=internal-lkp-server
nokaslr
selinux=0
debug
apic=debug
sysrq_always_enabled
rcupdate.rcu_cpu_stall_timeout=100
net.ifnames=0
printk.devkmsg=on
panic=-1
softlockup_panic=1
nmi_watchdog=panic
oops=panic
load_ramdisk=2
prompt_ramdisk=0
drbd.minor_count=8
systemd.log_level=err
ignore_loglevel
console=tty0
earlyprintk=ttyS0,115200
console=ttyS0,115200
vga=normal
rw'
	export modules_initrd='/pkg/linux/x86_64-rhel-8.3/gcc-9/c12b7a396ff758a262002b5b326d83efeae71140/modules.cgz'
	export linux_perf_initrd='/pkg/linux/x86_64-rhel-8.3/gcc-9/c12b7a396ff758a262002b5b326d83efeae71140/linux-perf.cgz'
	export bm_initrd='/osimage/deps/debian-10.4-x86_64-20200603.cgz/run-ipconfig_20200608.cgz,/osimage/deps/debian-10.4-x86_64-20200603.cgz/lkp_20201211.cgz,/osimage/deps/debian-10.4-x86_64-20200603.cgz/rsync-rootfs_20200608.cgz,/osimage/deps/debian-10.4-x86_64-20200603.cgz/perf-sanity-tests_20201111.cgz,/osimage/pkg/debian-10.4-x86_64-20200603.cgz/perf-x86_64-fa02fcd94b0c-1_20201126.cgz,/osimage/deps/debian-10.4-x86_64-20200603.cgz/hw_20200715.cgz'
	export ucode_initrd='/osimage/ucode/intel-ucode-20201117.cgz'
	export lkp_initrd='/osimage/user/lkp/lkp-x86_64.cgz'
	export site='inn'
	export LKP_CGI_PORT=80
	export LKP_CIFS_PORT=139
	export last_kernel='5.10.0'
	export repeat_to=4
	export schedule_notify_address=
	export queue_at_least_once=1
	export kernel='/pkg/linux/x86_64-rhel-8.3/gcc-9/c12b7a396ff758a262002b5b326d83efeae71140/vmlinuz-5.10.0-02717-gc12b7a396ff7'
	export dequeue_time='2020-12-17 06:03:19 +0800'
	export job_initrd='/lkp/jobs/scheduled/lkp-skl-d04/perf-sanity-tests-gcc-ucode=0xe2-debian-10.4-x86_64-20200603.cgz-c12b7a396ff758a262002b5b326d83efeae71140-20201217-42493-1avp7js-3.cgz'

	[ -n "$LKP_SRC" ] ||
	export LKP_SRC=/lkp/${user:-lkp}/src
}

run_job()
{
	echo $$ > $TMP/run-job.pid

	. $LKP_SRC/lib/http.sh
	. $LKP_SRC/lib/job.sh
	. $LKP_SRC/lib/env.sh

	export_top_env

	run_monitor $LKP_SRC/monitors/wrapper kmsg
	run_monitor $LKP_SRC/monitors/wrapper heartbeat
	run_monitor $LKP_SRC/monitors/wrapper meminfo
	run_monitor $LKP_SRC/monitors/wrapper oom-killer
	run_monitor $LKP_SRC/monitors/plain/watchdog

	run_test perf_compiler='gcc' $LKP_SRC/tests/wrapper perf-sanity-tests
}

extract_stats()
{
	export stats_part_begin=
	export stats_part_end=

	$LKP_SRC/stats/wrapper perf-sanity-tests
	$LKP_SRC/stats/wrapper kmsg
	$LKP_SRC/stats/wrapper meminfo

	$LKP_SRC/stats/wrapper time perf-sanity-tests.time
	$LKP_SRC/stats/wrapper dmesg
	$LKP_SRC/stats/wrapper kmsg
	$LKP_SRC/stats/wrapper last_state
	$LKP_SRC/stats/wrapper stderr
	$LKP_SRC/stats/wrapper time
}

"$@"

--P+33d92oIH25kiaB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=dmesg
Content-Transfer-Encoding: quoted-printable

Decompressing Linux... Parsing ELF... No relocation needed... done.
Booting the kernel.
[    0.000000] Linux version 5.10.0-02717-gc12b7a396ff7 (kbuild@5d3a15abf86=
1) (gcc-9 (Debian 9.3.0-15) 9.3.0, GNU ld (GNU Binutils for Debian) 2.35) #=
2 SMP Wed Dec 16 02:29:00 CST 2020
[    0.000000] Command line: ip=3D::::lkp-skl-d04::dhcp root=3D/dev/ram0 us=
er=3Dlkp job=3D/lkp/jobs/scheduled/lkp-skl-d04/perf-sanity-tests-gcc-ucode=
=3D0xe2-debian-10.4-x86_64-20200603.cgz-c12b7a396ff758a262002b5b326d83efeae=
71140-20201217-40483-18lglgq-0.yaml ARCH=3Dx86_64 kconfig=3Dx86_64-rhel-8.3=
 branch=3Dlinux-devel/devel-hourly-2020121614 commit=3Dc12b7a396ff758a26200=
2b5b326d83efeae71140 BOOT_IMAGE=3D/pkg/linux/x86_64-rhel-8.3/gcc-9/c12b7a39=
6ff758a262002b5b326d83efeae71140/vmlinuz-5.10.0-02717-gc12b7a396ff7 max_upt=
ime=3D2100 RESULT_ROOT=3D/result/perf-sanity-tests/gcc-ucode=3D0xe2/lkp-skl=
-d04/debian-10.4-x86_64-20200603.cgz/x86_64-rhel-8.3/gcc-9/c12b7a396ff758a2=
62002b5b326d83efeae71140/0 LKP_SERVER=3Dinternal-lkp-server nokaslr selinux=
=3D0 debug apic=3Ddebug sysrq_always_enabled rcupdate.rcu_cpu_stall_timeout=
=3D100 net.ifnames=3D0 printk.devkmsg=3Don panic=3D-1 softlockup_panic=3D1 =
nmi_watchdog=3Dpanic oops=3Dpanic load_ramdisk=3D2 prompt_ramdisk=3D0 drbd.=
minor_count=3D8 systemd.log_level=3Derr ignore_loglevel console=3Dtty0 earl=
yprintk=3Dtty
[    0.000000] x86/fpu: Supporting XSAVE feature 0x001: 'x87 floating point=
 registers'
[    0.000000] x86/fpu: Supporting XSAVE feature 0x002: 'SSE registers'
[    0.000000] x86/fpu: Supporting XSAVE feature 0x004: 'AVX registers'
[    0.000000] x86/fpu: Supporting XSAVE feature 0x008: 'MPX bounds registe=
rs'
[    0.000000] x86/fpu: Supporting XSAVE feature 0x010: 'MPX CSR'
[    0.000000] x86/fpu: xstate_offset[2]:  576, xstate_sizes[2]:  256
[    0.000000] x86/fpu: xstate_offset[3]:  832, xstate_sizes[3]:   64
[    0.000000] x86/fpu: xstate_offset[4]:  896, xstate_sizes[4]:   64
[    0.000000] x86/fpu: Enabled xstate features 0x1f, context size is 960 b=
ytes, using 'compacted' format.
[    0.000000] BIOS-provided physical RAM map:
[    0.000000] BIOS-e820: [mem 0x0000000000000100-0x000000000009c7ff] usable
[    0.000000] BIOS-e820: [mem 0x000000000009c800-0x000000000009ffff] reser=
ved
[    0.000000] BIOS-e820: [mem 0x00000000000e0000-0x00000000000fffff] reser=
ved
[    0.000000] BIOS-e820: [mem 0x0000000000100000-0x000000007caa5fff] usable
[    0.000000] BIOS-e820: [mem 0x000000007caa6000-0x000000007caa6fff] ACPI =
NVS
[    0.000000] BIOS-e820: [mem 0x000000007caa7000-0x000000007cad0fff] reser=
ved
[    0.000000] BIOS-e820: [mem 0x000000007cad1000-0x000000007cb22fff] usable
[    0.000000] BIOS-e820: [mem 0x000000007cb23000-0x000000007d323fff] reser=
ved
[    0.000000] BIOS-e820: [mem 0x000000007d324000-0x0000000086f56fff] usable
[    0.000000] BIOS-e820: [mem 0x0000000086f57000-0x00000000872bcfff] reser=
ved
[    0.000000] BIOS-e820: [mem 0x00000000872bd000-0x0000000087309fff] ACPI =
data
[    0.000000] BIOS-e820: [mem 0x000000008730a000-0x0000000087abefff] ACPI =
NVS
[    0.000000] BIOS-e820: [mem 0x0000000087abf000-0x0000000087ffefff] reser=
ved
[    0.000000] BIOS-e820: [mem 0x0000000087fff000-0x0000000087ffffff] usable
[    0.000000] BIOS-e820: [mem 0x00000000e0000000-0x00000000efffffff] reser=
ved
[    0.000000] BIOS-e820: [mem 0x00000000fe000000-0x00000000fe010fff] reser=
ved
[    0.000000] BIOS-e820: [mem 0x00000000fec00000-0x00000000fec00fff] reser=
ved
[    0.000000] BIOS-e820: [mem 0x00000000fee00000-0x00000000fee00fff] reser=
ved
[    0.000000] BIOS-e820: [mem 0x00000000ff000000-0x00000000ffffffff] reser=
ved
[    0.000000] BIOS-e820: [mem 0x0000000100000000-0x0000000871ffffff] usable
[    0.000000] printk: debug: ignoring loglevel setting.
[    0.000000] printk: bootconsole [earlyser0] enabled
[    0.000000] NX (Execute Disable) protection: active
[    0.000000] SMBIOS 2.8 present.
[    0.000000] DMI: Dell Inc. OptiPlex 7040/0Y7WYT, BIOS 1.1.1 10/07/2015
[    0.000000] tsc: Detected 3200.000 MHz processor
[    0.000000] tsc: Detected 3199.980 MHz TSC
[    0.000661] e820: update [mem 0x00000000-0x00000fff] usable =3D=3D> rese=
rved
[    0.011166] e820: remove [mem 0x000a0000-0x000fffff] usable
[    0.016672] last_pfn =3D 0x872000 max_arch_pfn =3D 0x400000000
[    0.022088] MTRR default type: write-back
[    0.026040] MTRR fixed ranges enabled:
[    0.029738]   00000-9FFFF write-back
[    0.033263]   A0000-BFFFF uncachable
[    0.036789]   C0000-FFFFF write-protect
[    0.040571] MTRR variable ranges enabled:
[    0.044527]   0 base 00C0000000 mask 7FC0000000 uncachable
[    0.049944]   1 base 00A0000000 mask 7FE0000000 uncachable
[    0.055361]   2 base 0090000000 mask 7FF0000000 uncachable
[    0.060778]   3 base 008C000000 mask 7FFC000000 uncachable
[    0.066206]   4 base 008A000000 mask 7FFE000000 uncachable
[    0.071629]   5 base 0089800000 mask 7FFF800000 uncachable
[    0.077056]   6 disabled
[    0.079552]   7 disabled
[    0.082051]   8 disabled
[    0.084549]   9 disabled
[    0.087335] x86/PAT: Configuration [0-7]: WB  WC  UC- UC  WB  WP  UC- WT=
 =20
[    0.094431] last_pfn =3D 0x88000 max_arch_pfn =3D 0x400000000
[    0.099642] Scan for SMP in [mem 0x00000000-0x000003ff]
[    0.104814] Scan for SMP in [mem 0x0009fc00-0x0009ffff]
[    0.109972] Scan for SMP in [mem 0x000f0000-0x000fffff]
[    0.120626] found SMP MP-table at [mem 0x000fcde0-0x000fcdef]
[    0.126146]   mpc: fcbb0-fcd5c
[    0.129165] Using GB pages for direct mapping
[    0.133962] RAMDISK: [mem 0x83bb07000-0x86ebfffff]
[    0.138539] ACPI: Early table checksum verification disabled
[    0.144128] ACPI: RSDP 0x00000000000F05B0 000024 (v02 DELL  )
[    0.149801] ACPI: XSDT 0x00000000872DD0A0 0000C4 (v01 DELL   CBX3     01=
072009 AMI  00010013)
[    0.158229] ACPI: FACP 0x00000000872FE7C0 00010C (v05 DELL   CBX3     01=
072009 AMI  00010013)
[    0.166655] ACPI: DSDT 0x00000000872DD1F8 0215C8 (v02 DELL   CBX3     01=
072009 INTL 20120913)
[    0.175079] ACPI: FACS 0x0000000087ABEF80 000040
[    0.179636] ACPI: APIC 0x00000000872FE8D0 000084 (v03 DELL   CBX3     01=
072009 AMI  00010013)
[    0.188061] ACPI: FPDT 0x00000000872FE958 000044 (v01 DELL   CBX3     01=
072009 AMI  00010013)
[    0.196489] ACPI: FIDT 0x00000000872FE9A0 00009C (v01 DELL   CBX3     01=
072009 AMI  00010013)
[    0.204914] ACPI: MCFG 0x00000000872FEA40 00003C (v01 DELL   CBX3     01=
072009 MSFT 00000097)
[    0.213342] ACPI: HPET 0x00000000872FEA80 000038 (v01 DELL   CBX3     01=
072009 AMI. 0005000B)
[    0.221767] ACPI: SSDT 0x00000000872FEAB8 00036D (v01 SataRe SataTabl 00=
001000 INTL 20120913)
[    0.230194] ACPI: SSDT 0x00000000872FEE28 0053B2 (v02 SaSsdt SaSsdt   00=
003000 INTL 20120913)
[    0.238622] ACPI: UEFI 0x00000000873041E0 000042 (v01                 00=
000000      00000000)
[    0.247050] ACPI: LPIT 0x0000000087304228 000094 (v01 INTEL  SKL      00=
000000 MSFT 0000005F)
[    0.255478] ACPI: SSDT 0x00000000873042C0 000248 (v02 INTEL  sensrhub 00=
000000 INTL 20120913)
[    0.263907] ACPI: SSDT 0x0000000087304508 002BAE (v02 INTEL  PtidDevc 00=
001000 INTL 20120913)
[    0.272332] ACPI: SSDT 0x00000000873070B8 000C45 (v02 INTEL  Ther_Rvp 00=
001000 INTL 20120913)
[    0.280758] ACPI: DBGP 0x0000000087307D00 000034 (v01 INTEL           00=
000000 MSFT 0000005F)
[    0.289184] ACPI: DBG2 0x0000000087307D38 000054 (v00 INTEL           00=
000000 MSFT 0000005F)
[    0.297608] ACPI: SSDT 0x0000000087307D90 000613 (v02 INTEL  DELL__MT 00=
000000 INTL 20120913)
[    0.306051] ACPI: SSDT 0x00000000873083A8 000E58 (v02 CpuRef CpuSsdt  00=
003000 INTL 20120913)
[    0.314490] ACPI: SLIC 0x0000000087309200 000176 (v03 DELL   CBX3     01=
072009 MSFT 00010013)
[    0.322928] ACPI: DMAR 0x0000000087309378 0000A8 (v01 INTEL  SKL      00=
000001 INTL 00000001)
[    0.331365] ACPI: ASF! 0x0000000087309420 0000A5 (v32 INTEL   HCG     00=
000001 TFSM 000F4240)
[    0.339796] ACPI: Local APIC address 0xfee00000
[    0.344265] mapped APIC to ffffffffff5fc000 (        fee00000)
[    0.350162] No NUMA configuration found
[    0.353806] Faking a node at [mem 0x0000000000000000-0x0000000871ffffff]
[    0.360437] NODE_DATA(0) allocated [mem 0x871fd5000-0x871ffffff]
[    0.366557] cma: Reserved 200 MiB at 0x000000082f000000
[    0.371591] Zone ranges:
[    0.374055]   DMA      [mem 0x0000000000001000-0x0000000000ffffff]
[    0.380162]   DMA32    [mem 0x0000000001000000-0x00000000ffffffff]
[    0.386267]   Normal   [mem 0x0000000100000000-0x0000000871ffffff]
[    0.392373]   Device   empty
[    0.395211] Movable zone start for each node
[    0.399427] Early memory node ranges
[    0.402950]   node   0: [mem 0x0000000000001000-0x000000000009bfff]
[    0.409142]   node   0: [mem 0x0000000000100000-0x000000007caa5fff]
[    0.415334]   node   0: [mem 0x000000007cad1000-0x000000007cb22fff]
[    0.421523]   node   0: [mem 0x000000007d324000-0x0000000086f56fff]
[    0.427714]   node   0: [mem 0x0000000087fff000-0x0000000087ffffff]
[    0.433905]   node   0: [mem 0x0000000100000000-0x0000000871ffffff]
[    0.440338] Zeroed struct page in unavailable ranges: 31033 pages
[    0.440340] Initmem setup node 0 [mem 0x0000000000001000-0x0000000871fff=
fff]
[    0.453168] On node 0 totalpages: 8357575
[    0.457123]   DMA zone: 64 pages used for memmap
[    0.461678]   DMA zone: 21 pages reserved
[    0.465633]   DMA zone: 3995 pages, LIFO batch:0
[    0.470216]   DMA32 zone: 8541 pages used for memmap
[    0.475093]   DMA32 zone: 546604 pages, LIFO batch:63
[    0.483674]   Normal zone: 121984 pages used for memmap
[    0.488678]   Normal zone: 7806976 pages, LIFO batch:63
[    0.494069] Reserving Intel graphics memory at [mem 0x8a000000-0x8bfffff=
f]
[    0.500889] ACPI: PM-Timer IO Port: 0x1808
[    0.504775] ACPI: Local APIC address 0xfee00000
[    0.509251] ACPI: LAPIC_NMI (acpi_id[0x01] high edge lint[0x1])
[    0.515093] ACPI: LAPIC_NMI (acpi_id[0x02] high edge lint[0x1])
[    0.520942] ACPI: LAPIC_NMI (acpi_id[0x03] high edge lint[0x1])
[    0.526787] ACPI: LAPIC_NMI (acpi_id[0x04] high edge lint[0x1])
[    0.532660] IOAPIC[0]: apic_id 2, version 32, address 0xfec00000, GSI 0-=
119
[    0.539522] ACPI: INT_SRC_OVR (bus 0 bus_irq 0 global_irq 2 dfl dfl)
[    0.545809] Int: type 0, pol 0, trig 0, bus 00, IRQ 00, APIC ID 2, APIC =
INT 02
[    0.552958] ACPI: INT_SRC_OVR (bus 0 bus_irq 9 global_irq 9 high level)
[    0.559504] Int: type 0, pol 1, trig 3, bus 00, IRQ 09, APIC ID 2, APIC =
INT 09
[    0.566653] ACPI: IRQ0 used by override.
[    0.570522] Int: type 0, pol 0, trig 0, bus 00, IRQ 01, APIC ID 2, APIC =
INT 01
[    0.577659] Int: type 0, pol 0, trig 0, bus 00, IRQ 03, APIC ID 2, APIC =
INT 03
[    0.584797] Int: type 0, pol 0, trig 0, bus 00, IRQ 04, APIC ID 2, APIC =
INT 04
[    0.591935] Int: type 0, pol 0, trig 0, bus 00, IRQ 05, APIC ID 2, APIC =
INT 05
[    0.599075] Int: type 0, pol 0, trig 0, bus 00, IRQ 06, APIC ID 2, APIC =
INT 06
[    0.606213] Int: type 0, pol 0, trig 0, bus 00, IRQ 07, APIC ID 2, APIC =
INT 07
[    0.613349] Int: type 0, pol 0, trig 0, bus 00, IRQ 08, APIC ID 2, APIC =
INT 08
[    0.620488] ACPI: IRQ9 used by override.
[    0.624358] Int: type 0, pol 0, trig 0, bus 00, IRQ 0a, APIC ID 2, APIC =
INT 0a
[    0.631495] Int: type 0, pol 0, trig 0, bus 00, IRQ 0b, APIC ID 2, APIC =
INT 0b
[    0.638632] Int: type 0, pol 0, trig 0, bus 00, IRQ 0c, APIC ID 2, APIC =
INT 0c
[    0.645767] Int: type 0, pol 0, trig 0, bus 00, IRQ 0d, APIC ID 2, APIC =
INT 0d
[    0.652905] Int: type 0, pol 0, trig 0, bus 00, IRQ 0e, APIC ID 2, APIC =
INT 0e
[    0.660045] Int: type 0, pol 0, trig 0, bus 00, IRQ 0f, APIC ID 2, APIC =
INT 0f
[    0.667181] Using ACPI (MADT) for SMP configuration information
[    0.673027] ACPI: HPET id: 0x8086a701 base: 0xfed00000
[    0.678103] TSC deadline timer available
[    0.681972] smpboot: Allowing 4 CPUs, 0 hotplug CPUs
[    0.686875] mapped IOAPIC to ffffffffff5fb000 (fec00000)
[    0.692128] PM: hibernation: Registered nosave memory: [mem 0x00000000-0=
x00000fff]
[    0.699597] PM: hibernation: Registered nosave memory: [mem 0x0009c000-0=
x0009cfff]
[    0.707078] PM: hibernation: Registered nosave memory: [mem 0x0009d000-0=
x0009ffff]
[    0.714557] PM: hibernation: Registered nosave memory: [mem 0x000a0000-0=
x000dffff]
[    0.722038] PM: hibernation: Registered nosave memory: [mem 0x000e0000-0=
x000fffff]
[    0.729520] PM: hibernation: Registered nosave memory: [mem 0x7caa6000-0=
x7caa6fff]
[    0.736999] PM: hibernation: Registered nosave memory: [mem 0x7caa7000-0=
x7cad0fff]
[    0.744478] PM: hibernation: Registered nosave memory: [mem 0x7cb23000-0=
x7d323fff]
[    0.751960] PM: hibernation: Registered nosave memory: [mem 0x86f57000-0=
x872bcfff]
[    0.759440] PM: hibernation: Registered nosave memory: [mem 0x872bd000-0=
x87309fff]
[    0.766924] PM: hibernation: Registered nosave memory: [mem 0x8730a000-0=
x87abefff]
[    0.774402] PM: hibernation: Registered nosave memory: [mem 0x87abf000-0=
x87ffefff]
[    0.781898] PM: hibernation: Registered nosave memory: [mem 0x88000000-0=
x89ffffff]
[    0.789388] PM: hibernation: Registered nosave memory: [mem 0x8a000000-0=
x8bffffff]
[    0.796881] PM: hibernation: Registered nosave memory: [mem 0x8c000000-0=
xdfffffff]
[    0.804376] PM: hibernation: Registered nosave memory: [mem 0xe0000000-0=
xefffffff]
[    0.811859] PM: hibernation: Registered nosave memory: [mem 0xf0000000-0=
xfdffffff]
[    0.819341] PM: hibernation: Registered nosave memory: [mem 0xfe000000-0=
xfe010fff]
[    0.826823] PM: hibernation: Registered nosave memory: [mem 0xfe011000-0=
xfebfffff]
[    0.834305] PM: hibernation: Registered nosave memory: [mem 0xfec00000-0=
xfec00fff]
[    0.841786] PM: hibernation: Registered nosave memory: [mem 0xfec01000-0=
xfedfffff]
[    0.849266] PM: hibernation: Registered nosave memory: [mem 0xfee00000-0=
xfee00fff]
[    0.856749] PM: hibernation: Registered nosave memory: [mem 0xfee01000-0=
xfeffffff]
[    0.864230] PM: hibernation: Registered nosave memory: [mem 0xff000000-0=
xffffffff]
[    0.871713] [mem 0x8c000000-0xdfffffff] available for PCI devices
[    0.877733] Booting paravirtualized kernel on bare hardware
[    0.883236] clocksource: refined-jiffies: mask: 0xffffffff max_cycles: 0=
xffffffff, max_idle_ns: 1910969940391419 ns
[    0.897739] setup_percpu: NR_CPUS:8192 nr_cpumask_bits:4 nr_cpu_ids:4 nr=
_node_ids:1
[    0.905255] percpu: Embedded 55 pages/cpu s188416 r8192 d28672 u524288
[    0.911605] pcpu-alloc: s188416 r8192 d28672 u524288 alloc=3D1*2097152
[    0.917879] pcpu-alloc: [0] 0 1 2 3=20
[    0.921419] Built 1 zonelists, mobility grouping on.  Total pages: 82269=
65
[    0.928197] Policy zone: Normal
[    0.931294] Kernel command line: ip=3D::::lkp-skl-d04::dhcp root=3D/dev/=
ram0 user=3Dlkp job=3D/lkp/jobs/scheduled/lkp-skl-d04/perf-sanity-tests-gcc=
-ucode=3D0xe2-debian-10.4-x86_64-20200603.cgz-c12b7a396ff758a262002b5b326d8=
3efeae71140-20201217-40483-18lglgq-0.yaml ARCH=3Dx86_64 kconfig=3Dx86_64-rh=
el-8.3 branch=3Dlinux-devel/devel-hourly-2020121614 commit=3Dc12b7a396ff758=
a262002b5b326d83efeae71140 BOOT_IMAGE=3D/pkg/linux/x86_64-rhel-8.3/gcc-9/c1=
2b7a396ff758a262002b5b326d83efeae71140/vmlinuz-5.10.0-02717-gc12b7a396ff7 m=
ax_uptime=3D2100 RESULT_ROOT=3D/result/perf-sanity-tests/gcc-ucode=3D0xe2/l=
kp-skl-d04/debian-10.4-x86_64-20200603.cgz/x86_64-rhel-8.3/gcc-9/c12b7a396f=
f758a262002b5b326d83efeae71140/0 LKP_SERVER=3Dinternal-lkp-server nokaslr s=
elinux=3D0 debug apic=3Ddebug sysrq_always_enabled rcupdate.rcu_cpu_stall_t=
imeout=3D100 net.ifnames=3D0 printk.devkmsg=3Don panic=3D-1 softlockup_pani=
c=3D1 nmi_watchdog=3Dpanic oops=3Dpanic load_ramdisk=3D2 prompt_ramdisk=3D0=
 drbd.minor_count=3D8 systemd.log_level=3Derr ignore_loglevel console=3Dtty=
0 earlypri
[    0.931508] sysrq: sysrq always enabled.
[    1.021817] ignoring the deprecated load_ramdisk=3D option
[    1.028230] Dentry cache hash table entries: 4194304 (order: 13, 3355443=
2 bytes, linear)
[    1.036657] Inode-cache hash table entries: 2097152 (order: 12, 16777216=
 bytes, linear)
[    1.044456] mem auto-init: stack:off, heap alloc:off, heap free:off
[    1.074167] Memory: 2267592K/33430300K available (14347K kernel code, 61=
39K rwdata, 4788K rodata, 2436K init, 5292K bss, 1518156K reserved, 204800K=
 cma-reserved)
[    1.088317] random: get_random_u64 called from cache_random_seq_create+0=
x80/0x180 with crng_init=3D0
[    1.088367] SLUB: HWalign=3D64, Order=3D0-3, MinObjects=3D0, CPUs=3D4, N=
odes=3D1
[    1.103607] Kernel/User page tables isolation: enabled
[    1.108683] ftrace: allocating 45440 entries in 178 pages
[    1.126176] ftrace: allocated 178 pages with 4 groups
[    1.131063] rcu: Hierarchical RCU implementation.
[    1.135652] rcu: 	RCU restricting CPUs from NR_CPUS=3D8192 to nr_cpu_ids=
=3D4.
[    1.142358] 	RCU CPU stall warnings timeout set to 100 (rcu_cpu_stall_ti=
meout).
[    1.149580] 	Trampoline variant of Tasks RCU enabled.
[    1.154568] 	Rude variant of Tasks RCU enabled.
[    1.159040] 	Tracing variant of Tasks RCU enabled.
[    1.163768] rcu: RCU calculated value of scheduler-enlistment delay is 1=
00 jiffies.
[    1.171335] rcu: Adjusting geometry for rcu_fanout_leaf=3D16, nr_cpu_ids=
=3D4
[    1.180712] NR_IRQS: 524544, nr_irqs: 1024, preallocated irqs: 16
[    1.188960] Console: colour VGA+ 80x25
[    1.220706] printk: console [tty0] enabled
[    1.224727] printk: console [ttyS0] enabled
[    1.224727] printk: console [ttyS0] enabled
[    1.232974] printk: bootconsole [earlyser0] disabled
[    1.232974] printk: bootconsole [earlyser0] disabled
[    1.242792] ACPI: Core revision 20200925
[    1.247022] clocksource: hpet: mask: 0xffffffff max_cycles: 0xffffffff, =
max_idle_ns: 79635855245 ns
[    1.256196] APIC: Switch to symmetric I/O mode setup
[    1.261261] DMAR: Host address width 39
[    1.265207] DMAR: DRHD base: 0x000000fed90000 flags: 0x0
[    1.270622] DMAR: dmar0: reg_base_addr fed90000 ver 1:0 cap 1c0000c40660=
462 ecap 7e3ff0505e
[    1.279075] DMAR: DRHD base: 0x000000fed91000 flags: 0x1
[    1.284481] DMAR: dmar1: reg_base_addr fed91000 ver 1:0 cap d2008c406604=
62 ecap f050da
[    1.292487] DMAR: RMRR base: 0x0000008715f000 end: 0x0000008717efff
[    1.298837] DMAR: RMRR base: 0x00000089800000 end: 0x0000008bffffff
[    1.305189] DMAR: [Firmware Bug]: No firmware reserved region can cover =
this RMRR [0x0000000089800000-0x000000008bffffff], contact BIOS vendor for =
fixes
[    1.318887] DMAR: [Firmware Bug]: Your BIOS is broken; bad RMRR [0x00000=
00089800000-0x000000008bffffff]
[    1.318887] BIOS vendor: Dell Inc.; Ver: 1.1.1; Product Version:=20
[    1.334411] DMAR-IR: IOAPIC id 2 under DRHD base  0xfed91000 IOMMU 1
[    1.340848] DMAR-IR: HPET id 0 under DRHD base 0xfed91000
[    1.346337] DMAR-IR: x2apic is disabled because BIOS sets x2apic opt out=
 bit.
[    1.346337] DMAR-IR: Use 'intremap=3Dno_x2apic_optout' to override the B=
IOS setting.
[    1.361320] DMAR-IR: IRQ remapping was enabled on dmar0 but we are not i=
n kdump mode
[    1.369263] DMAR-IR: IRQ remapping was enabled on dmar1 but we are not i=
n kdump mode
[    1.378319] DMAR-IR: Enabled IRQ remapping in xapic mode
[    1.383695] x2apic: IRQ remapping doesn't support X2APIC mode
[    1.389538] masked ExtINT on CPU#0
[    1.396770] ENABLING IO-APIC IRQs
[    1.400164] init IO_APIC IRQs
[    1.403214]  apic 2 pin 0 not connected
[    1.407126] IOAPIC[2]: Set IRTE entry (P:1 FPD:0 Dst_Mode:1 Redir_hint:1=
 Trig_Mode:0 Dlvry_Mode:0 Avail:0 Vector:EF Dest:00000100 SID:F0F8 SQ:0 SVT=
:1)
[    1.420628] IOAPIC[0]: Set routing entry (2-1 -> 0xef -> IRQ 1 Mode:0 Ac=
tive:0 Dest:1)
[    1.428609] IOAPIC[2]: Set IRTE entry (P:1 FPD:0 Dst_Mode:1 Redir_hint:1=
 Trig_Mode:0 Dlvry_Mode:0 Avail:0 Vector:30 Dest:00000100 SID:F0F8 SQ:0 SVT=
:1)
[    1.442109] IOAPIC[0]: Set routing entry (2-2 -> 0x30 -> IRQ 0 Mode:0 Ac=
tive:0 Dest:1)
[    1.450089] IOAPIC[2]: Set IRTE entry (P:1 FPD:0 Dst_Mode:1 Redir_hint:1=
 Trig_Mode:0 Dlvry_Mode:0 Avail:0 Vector:EF Dest:00000100 SID:F0F8 SQ:0 SVT=
:1)
[    1.463590] IOAPIC[0]: Set routing entry (2-3 -> 0xef -> IRQ 3 Mode:0 Ac=
tive:0 Dest:1)
[    1.471573] IOAPIC[2]: Set IRTE entry (P:1 FPD:0 Dst_Mode:1 Redir_hint:1=
 Trig_Mode:0 Dlvry_Mode:0 Avail:0 Vector:EF Dest:00000100 SID:F0F8 SQ:0 SVT=
:1)
[    1.485076] IOAPIC[0]: Set routing entry (2-4 -> 0xef -> IRQ 4 Mode:0 Ac=
tive:0 Dest:1)
[    1.493064] IOAPIC[2]: Set IRTE entry (P:1 FPD:0 Dst_Mode:1 Redir_hint:1=
 Trig_Mode:0 Dlvry_Mode:0 Avail:0 Vector:EF Dest:00000100 SID:F0F8 SQ:0 SVT=
:1)
[    1.507391] IOAPIC[0]: Set routing entry (2-5 -> 0xef -> IRQ 5 Mode:0 Ac=
tive:0 Dest:1)
[    1.515386] IOAPIC[2]: Set IRTE entry (P:1 FPD:0 Dst_Mode:1 Redir_hint:1=
 Trig_Mode:0 Dlvry_Mode:0 Avail:0 Vector:EF Dest:00000100 SID:F0F8 SQ:0 SVT=
:1)
[    1.528891] IOAPIC[0]: Set routing entry (2-6 -> 0xef -> IRQ 6 Mode:0 Ac=
tive:0 Dest:1)
[    1.536871] IOAPIC[2]: Set IRTE entry (P:1 FPD:0 Dst_Mode:1 Redir_hint:1=
 Trig_Mode:0 Dlvry_Mode:0 Avail:0 Vector:EF Dest:00000100 SID:F0F8 SQ:0 SVT=
:1)
[    1.550372] IOAPIC[0]: Set routing entry (2-7 -> 0xef -> IRQ 7 Mode:0 Ac=
tive:0 Dest:1)
[    1.558351] IOAPIC[2]: Set IRTE entry (P:1 FPD:0 Dst_Mode:1 Redir_hint:1=
 Trig_Mode:0 Dlvry_Mode:0 Avail:0 Vector:EF Dest:00000100 SID:F0F8 SQ:0 SVT=
:1)
[    1.571854] IOAPIC[0]: Set routing entry (2-8 -> 0xef -> IRQ 8 Mode:0 Ac=
tive:0 Dest:1)
[    1.579833] IOAPIC[2]: Set IRTE entry (P:1 FPD:0 Dst_Mode:1 Redir_hint:1=
 Trig_Mode:0 Dlvry_Mode:0 Avail:0 Vector:EF Dest:00000100 SID:F0F8 SQ:0 SVT=
:1)
[    1.593332] IOAPIC[0]: Set routing entry (2-9 -> 0xef -> IRQ 9 Mode:1 Ac=
tive:0 Dest:1)
[    1.601313] IOAPIC[2]: Set IRTE entry (P:1 FPD:0 Dst_Mode:1 Redir_hint:1=
 Trig_Mode:0 Dlvry_Mode:0 Avail:0 Vector:EF Dest:00000100 SID:F0F8 SQ:0 SVT=
:1)
[    1.614814] IOAPIC[0]: Set routing entry (2-10 -> 0xef -> IRQ 10 Mode:0 =
Active:0 Dest:1)
[    1.622968] IOAPIC[2]: Set IRTE entry (P:1 FPD:0 Dst_Mode:1 Redir_hint:1=
 Trig_Mode:0 Dlvry_Mode:0 Avail:0 Vector:EF Dest:00000100 SID:F0F8 SQ:0 SVT=
:1)
[    1.636467] IOAPIC[0]: Set routing entry (2-11 -> 0xef -> IRQ 11 Mode:0 =
Active:0 Dest:1)
[    1.644620] IOAPIC[2]: Set IRTE entry (P:1 FPD:0 Dst_Mode:1 Redir_hint:1=
 Trig_Mode:0 Dlvry_Mode:0 Avail:0 Vector:EF Dest:00000100 SID:F0F8 SQ:0 SVT=
:1)
[    1.658120] IOAPIC[0]: Set routing entry (2-12 -> 0xef -> IRQ 12 Mode:0 =
Active:0 Dest:1)
[    1.666274] IOAPIC[2]: Set IRTE entry (P:1 FPD:0 Dst_Mode:1 Redir_hint:1=
 Trig_Mode:0 Dlvry_Mode:0 Avail:0 Vector:EF Dest:00000100 SID:F0F8 SQ:0 SVT=
:1)
[    1.679775] IOAPIC[0]: Set routing entry (2-13 -> 0xef -> IRQ 13 Mode:0 =
Active:0 Dest:1)
[    1.687928] IOAPIC[2]: Set IRTE entry (P:1 FPD:0 Dst_Mode:1 Redir_hint:1=
 Trig_Mode:0 Dlvry_Mode:0 Avail:0 Vector:EF Dest:00000100 SID:F0F8 SQ:0 SVT=
:1)
[    1.701428] IOAPIC[0]: Set routing entry (2-14 -> 0xef -> IRQ 14 Mode:0 =
Active:0 Dest:1)
[    1.709581] IOAPIC[2]: Set IRTE entry (P:1 FPD:0 Dst_Mode:1 Redir_hint:1=
 Trig_Mode:0 Dlvry_Mode:0 Avail:0 Vector:EF Dest:00000100 SID:F0F8 SQ:0 SVT=
:1)
[    1.723083] IOAPIC[0]: Set routing entry (2-15 -> 0xef -> IRQ 15 Mode:0 =
Active:0 Dest:1)
[    1.731242]  apic 2 pin 16 not connected
[    1.735247]  apic 2 pin 17 not connected
[    1.739248]  apic 2 pin 18 not connected
[    1.743252]  apic 2 pin 19 not connected
[    1.747253]  apic 2 pin 20 not connected
[    1.751258]  apic 2 pin 21 not connected
[    1.755262]  apic 2 pin 22 not connected
[    1.759262]  apic 2 pin 23 not connected
[    1.763259]  apic 2 pin 24 not connected
[    1.767256]  apic 2 pin 25 not connected
[    1.771253]  apic 2 pin 26 not connected
[    1.775249]  apic 2 pin 27 not connected
[    1.779248]  apic 2 pin 28 not connected
[    1.783244]  apic 2 pin 29 not connected
[    1.787240]  apic 2 pin 30 not connected
[    1.791236]  apic 2 pin 31 not connected
[    1.795231]  apic 2 pin 32 not connected
[    1.799225]  apic 2 pin 33 not connected
[    1.803220]  apic 2 pin 34 not connected
[    1.807216]  apic 2 pin 35 not connected
[    1.811212]  apic 2 pin 36 not connected
[    1.815209]  apic 2 pin 37 not connected
[    1.819207]  apic 2 pin 38 not connected
[    1.823204]  apic 2 pin 39 not connected
[    1.827200]  apic 2 pin 40 not connected
[    1.831196]  apic 2 pin 41 not connected
[    1.835194]  apic 2 pin 42 not connected
[    1.839191]  apic 2 pin 43 not connected
[    1.843189]  apic 2 pin 44 not connected
[    1.847188]  apic 2 pin 45 not connected
[    1.851184]  apic 2 pin 46 not connected
[    1.855180]  apic 2 pin 47 not connected
[    1.859176]  apic 2 pin 48 not connected
[    1.863173]  apic 2 pin 49 not connected
[    1.867171]  apic 2 pin 50 not connected
[    1.871167]  apic 2 pin 51 not connected
[    1.875164]  apic 2 pin 52 not connected
[    1.879161]  apic 2 pin 53 not connected
[    1.883156]  apic 2 pin 54 not connected
[    1.887155]  apic 2 pin 55 not connected
[    1.891151]  apic 2 pin 56 not connected
[    1.895147]  apic 2 pin 57 not connected
[    1.899145]  apic 2 pin 58 not connected
[    1.903142]  apic 2 pin 59 not connected
[    1.907139]  apic 2 pin 60 not connected
[    1.911137]  apic 2 pin 61 not connected
[    1.915134]  apic 2 pin 62 not connected
[    1.919131]  apic 2 pin 63 not connected
[    1.923127]  apic 2 pin 64 not connected
[    1.927125]  apic 2 pin 65 not connected
[    1.931120]  apic 2 pin 66 not connected
[    1.935115]  apic 2 pin 67 not connected
[    1.939113]  apic 2 pin 68 not connected
[    1.943108]  apic 2 pin 69 not connected
[    1.947106]  apic 2 pin 70 not connected
[    1.951103]  apic 2 pin 71 not connected
[    1.955100]  apic 2 pin 72 not connected
[    1.959096]  apic 2 pin 73 not connected
[    1.963094]  apic 2 pin 74 not connected
[    1.967092]  apic 2 pin 75 not connected
[    1.971095]  apic 2 pin 76 not connected
[    1.975097]  apic 2 pin 77 not connected
[    1.979101]  apic 2 pin 78 not connected
[    1.983106]  apic 2 pin 79 not connected
[    1.987108]  apic 2 pin 80 not connected
[    1.991114]  apic 2 pin 81 not connected
[    1.995115]  apic 2 pin 82 not connected
[    1.999114]  apic 2 pin 83 not connected
[    2.003110]  apic 2 pin 84 not connected
[    2.007106]  apic 2 pin 85 not connected
[    2.011103]  apic 2 pin 86 not connected
[    2.015099]  apic 2 pin 87 not connected
[    2.019095]  apic 2 pin 88 not connected
[    2.023093]  apic 2 pin 89 not connected
[    2.027090]  apic 2 pin 90 not connected
[    2.031088]  apic 2 pin 91 not connected
[    2.035085]  apic 2 pin 92 not connected
[    2.039082]  apic 2 pin 93 not connected
[    2.043080]  apic 2 pin 94 not connected
[    2.047079]  apic 2 pin 95 not connected
[    2.051076]  apic 2 pin 96 not connected
[    2.055074]  apic 2 pin 97 not connected
[    2.059073]  apic 2 pin 98 not connected
[    2.063071]  apic 2 pin 99 not connected
[    2.067069]  apic 2 pin 100 not connected
[    2.071151]  apic 2 pin 101 not connected
[    2.075236]  apic 2 pin 102 not connected
[    2.079319]  apic 2 pin 103 not connected
[    2.083403]  apic 2 pin 104 not connected
[    2.087485]  apic 2 pin 105 not connected
[    2.091566]  apic 2 pin 106 not connected
[    2.095652]  apic 2 pin 107 not connected
[    2.099734]  apic 2 pin 108 not connected
[    2.103815]  apic 2 pin 109 not connected
[    2.107900]  apic 2 pin 110 not connected
[    2.111982]  apic 2 pin 111 not connected
[    2.116067]  apic 2 pin 112 not connected
[    2.120149]  apic 2 pin 113 not connected
[    2.124231]  apic 2 pin 114 not connected
[    2.128313]  apic 2 pin 115 not connected
[    2.132396]  apic 2 pin 116 not connected
[    2.136478]  apic 2 pin 117 not connected
[    2.140561]  apic 2 pin 118 not connected
[    2.144644]  apic 2 pin 119 not connected
[    2.148882] ..TIMER: vector=3D0x30 apic1=3D0 pin1=3D2 apic2=3D-1 pin2=3D=
-1
[    2.159875] clocksource: tsc-early: mask: 0xffffffffffffffff max_cycles:=
 0x2e2036ff8d5, max_idle_ns: 440795275316 ns
[    2.170444] Calibrating delay loop (skipped), value calculated using tim=
er frequency.. 6399.96 BogoMIPS (lpj=3D3199980)
[    2.171443] pid_max: default: 32768 minimum: 301
[    2.172461] LSM: Security Framework initializing
[    2.173449] Yama: becoming mindful.
[    2.174457] AppArmor: AppArmor initialized
[    2.175485] Mount-cache hash table entries: 65536 (order: 7, 524288 byte=
s, linear)
[    2.176481] Mountpoint-cache hash table entries: 65536 (order: 7, 524288=
 bytes, linear)
Poking KASLR using RDRAND RDTSC...
[    2.180886] mce: CPU0: Thermal monitoring enabled (TM1)
[    2.181455] process: using mwait in idle threads
[    2.182444] Last level iTLB entries: 4KB 128, 2MB 8, 4MB 8
[    2.183443] Last level dTLB entries: 4KB 64, 2MB 0, 4MB 0, 1GB 4
[    2.184444] Spectre V1 : Mitigation: usercopy/swapgs barriers and __user=
 pointer sanitization
[    2.185445] Spectre V2 : Mitigation: Full generic retpoline
[    2.186443] Spectre V2 : Spectre v2 / SpectreRSB mitigation: Filling RSB=
 on context switch
[    2.187443] Spectre V2 : Enabling Restricted Speculation for firmware ca=
lls
[    2.188445] Spectre V2 : mitigation: Enabling conditional Indirect Branc=
h Prediction Barrier
[    2.189445] Speculative Store Bypass: Mitigation: Speculative Store Bypa=
ss disabled via prctl and seccomp
[    2.190444] TAA: Mitigation: Clear CPU buffers
[    2.191444] SRBDS: Mitigation: Microcode
[    2.192443] MDS: Mitigation: Clear CPU buffers
[    2.193628] Freeing SMP alternatives memory: 40K
[    2.195199] smpboot: CPU0: Intel(R) Core(TM) i5-6500 CPU @ 3.20GHz (fami=
ly: 0x6, model: 0x5e, stepping: 0x3)
[    2.195501] Performance Events: PEBS fmt3+, Skylake events, 32-deep LBR,=
 full-width counters, Broken BIOS detected, complain to your hardware vendo=
r.
[    2.196444] [Firmware Bug]: the BIOS has corrupted hw-PMU resources (MSR=
 189 is 1004300c5)
[    2.197443] Intel PMU driver.
[    2.198443] ... version:                4
[    2.199443] ... bit width:              48
[    2.200443] ... generic registers:      8
[    2.201443] ... value mask:             0000ffffffffffff
[    2.202443] ... max period:             00007fffffffffff
[    2.203443] ... fixed-purpose events:   3
[    2.204443] ... event mask:             00000007000000ff
[    2.205522] rcu: Hierarchical SRCU implementation.
[    2.206876] NMI watchdog: Enabled. Permanently consumes one hw-PMU count=
er.
[    2.207478] smp: Bringing up secondary CPUs ...
[    2.208495] x86: Booting SMP configuration:
[    2.209445] .... node  #0, CPUs:      #1
[    0.959597] masked ExtINT on CPU#1
[    2.216992]  #2
[    0.959597] masked ExtINT on CPU#2
[    2.222505]  #3
[    0.959597] masked ExtINT on CPU#3
[    2.227994] smp: Brought up 1 node, 4 CPUs
[    2.228444] smpboot: Max logical packages: 1
[    2.229443] smpboot: Total of 4 processors activated (25599.84 BogoMIPS)
[    2.263559] node 0 deferred pages initialised in 33ms
[    2.269899] devtmpfs: initialized
[    2.270472] x86/mm: Memory block size: 128MB
[    2.272928] PM: Registering ACPI NVS region [mem 0x7caa6000-0x7caa6fff] =
(4096 bytes)
[    2.273445] PM: Registering ACPI NVS region [mem 0x8730a000-0x87abefff] =
(8081408 bytes)
[    2.274567] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xfffffff=
f, max_idle_ns: 1911260446275000 ns
[    2.275446] futex hash table entries: 1024 (order: 4, 65536 bytes, linea=
r)
[    2.276896] pinctrl core: initialized pinctrl subsystem
[    2.277536] NET: Registered protocol family 16
[    2.278603] DMA: preallocated 4096 KiB GFP_KERNEL pool for atomic alloca=
tions
[    2.279450] DMA: preallocated 4096 KiB GFP_KERNEL|GFP_DMA pool for atomi=
c allocations
[    2.280449] DMA: preallocated 4096 KiB GFP_KERNEL|GFP_DMA32 pool for ato=
mic allocations
[    2.281448] audit: initializing netlink subsys (disabled)
[    2.282450] audit: type=3D2000 audit(1608140875.137:1): state=3Dinitiali=
zed audit_enabled=3D0 res=3D1
[    2.282504] thermal_sys: Registered thermal governor 'fair_share'
[    2.283444] thermal_sys: Registered thermal governor 'bang_bang'
[    2.284443] thermal_sys: Registered thermal governor 'step_wise'
[    2.285443] thermal_sys: Registered thermal governor 'user_space'
[    2.286448] cpuidle: using governor menu
[    2.288541] ACPI FADT declares the system doesn't support PCIe ASPM, so =
disable it
[    2.289444] ACPI: bus type PCI registered
[    2.290444] acpiphp: ACPI Hot Plug PCI Controller Driver version: 0.5
[    2.291491] PCI: MMCONFIG for domain 0000 [bus 00-ff] at [mem 0xe0000000=
-0xefffffff] (base 0xe0000000)
[    2.292444] PCI: MMCONFIG at [mem 0xe0000000-0xefffffff] reserved in E820
[    2.293453] PCI: Using configuration type 1 for base access
[    2.295777] HugeTLB registered 1.00 GiB page size, pre-allocated 0 pages
[    2.296444] HugeTLB registered 2.00 MiB page size, pre-allocated 0 pages
[    2.297459] cryptd: max_cpu_qlen set to 1000
[    2.298478] ACPI: Added _OSI(Module Device)
[    2.299450] ACPI: Added _OSI(Processor Device)
[    2.300443] ACPI: Added _OSI(3.0 _SCP Extensions)
[    2.301443] ACPI: Added _OSI(Processor Aggregator Device)
[    2.302443] ACPI: Added _OSI(Linux-Dell-Video)
[    2.303443] ACPI: Added _OSI(Linux-Lenovo-NV-HDMI-Audio)
[    2.304443] ACPI: Added _OSI(Linux-HPI-Hybrid-Graphics)
[    2.331292] ACPI: 8 ACPI AML tables successfully acquired and loaded
[    2.333252] ACPI: [Firmware Bug]: BIOS _OSI(Linux) query ignored
[    2.336150] ACPI: Dynamic OEM Table Load:
[    2.336447] ACPI: SSDT 0xFFFF888100CB1000 0006A2 (v02 PmRef  Cpu0Ist  00=
003000 INTL 20120913)
[    2.338358] ACPI: \_PR_.CPU0: _OSC native thermal LVT Acked
[    2.339610] ACPI: Dynamic OEM Table Load:
[    2.340446] ACPI: SSDT 0xFFFF8888714E9000 00037F (v02 PmRef  Cpu0Cst  00=
003001 INTL 20120913)
[    2.342316] ACPI: Dynamic OEM Table Load:
[    2.342445] ACPI: SSDT 0xFFFF888871D76600 00008E (v02 PmRef  Cpu0Hwp  00=
003000 INTL 20120913)
[    2.344234] ACPI: Dynamic OEM Table Load:
[    2.344445] ACPI: SSDT 0xFFFF888871540600 000130 (v02 PmRef  HwpLvt   00=
003000 INTL 20120913)
[    2.346622] ACPI: Dynamic OEM Table Load:
[    2.347446] ACPI: SSDT 0xFFFF888100CB5000 0005AA (v02 PmRef  ApIst    00=
003000 INTL 20120913)
[    2.349473] ACPI: Dynamic OEM Table Load:
[    2.350445] ACPI: SSDT 0xFFFF888871541E00 000119 (v02 PmRef  ApHwp    00=
003000 INTL 20120913)
[    2.352299] ACPI: Dynamic OEM Table Load:
[    2.352445] ACPI: SSDT 0xFFFF888871540E00 000119 (v02 PmRef  ApCst    00=
003000 INTL 20120913)
[    2.356370] ACPI: Interpreter enabled
[    2.356473] ACPI: (supports S0 S3 S4 S5)
[    2.357444] ACPI: Using IOAPIC for interrupt routing
[    2.358470] PCI: Using host bridge windows from ACPI; if necessary, use =
"pci=3Dnocrs" and report a bug
[    2.360103] ACPI: Enabled 7 GPEs in block 00 to 7F
[    2.362185] ACPI: Power Resource [PG00] (on)
[    2.362732] ACPI: Power Resource [PG01] (on)
[    2.363713] ACPI: Power Resource [PG02] (on)
[    2.366255] ACPI: Power Resource [WRST] (off)
[    2.366683] ACPI: Power Resource [WRST] (off)
[    2.367678] ACPI: Power Resource [WRST] (off)
[    2.368676] ACPI: Power Resource [WRST] (off)
[    2.369678] ACPI: Power Resource [WRST] (off)
[    2.370682] ACPI: Power Resource [WRST] (off)
[    2.371677] ACPI: Power Resource [WRST] (off)
[    2.372687] ACPI: Power Resource [WRST] (off)
[    2.373681] ACPI: Power Resource [WRST] (off)
[    2.374678] ACPI: Power Resource [WRST] (off)
[    2.375677] ACPI: Power Resource [WRST] (off)
[    2.376677] ACPI: Power Resource [WRST] (off)
[    2.377677] ACPI: Power Resource [WRST] (off)
[    2.378677] ACPI: Power Resource [WRST] (off)
[    2.379675] ACPI: Power Resource [WRST] (off)
[    2.380676] ACPI: Power Resource [WRST] (off)
[    2.381676] ACPI: Power Resource [WRST] (off)
[    2.382677] ACPI: Power Resource [WRST] (off)
[    2.383680] ACPI: Power Resource [WRST] (off)
[    2.384680] ACPI: Power Resource [WRST] (off)
[    2.395067] ACPI: Power Resource [FN00] (off)
[    2.395490] ACPI: Power Resource [FN01] (off)
[    2.396487] ACPI: Power Resource [FN02] (off)
[    2.397487] ACPI: Power Resource [FN03] (off)
[    2.398488] ACPI: Power Resource [FN04] (off)
[    2.400238] ACPI: PCI Root Bridge [PCI0] (domain 0000 [bus 00-fe])
[    2.400448] acpi PNP0A08:00: _OSC: OS supports [ExtendedConfig ASPM Cloc=
kPM Segments MSI HPX-Type3]
[    2.402675] acpi PNP0A08:00: _OSC: OS now controls [PCIeHotplug SHPCHotp=
lug PME AER PCIeCapability LTR]
[    2.403446] acpi PNP0A08:00: FADT indicates ASPM is unsupported, using B=
IOS configuration
[    2.404941] PCI host bridge to bus 0000:00
[    2.405445] pci_bus 0000:00: root bus resource [io  0x0000-0x0cf7 window]
[    2.406443] pci_bus 0000:00: root bus resource [io  0x0d00-0xffff window]
[    2.407443] pci_bus 0000:00: root bus resource [mem 0x000a0000-0x000bfff=
f window]
[    2.408443] pci_bus 0000:00: root bus resource [mem 0x8c000000-0xdffffff=
f window]
[    2.409443] pci_bus 0000:00: root bus resource [mem 0xfd000000-0xfe7ffff=
f window]
[    2.410443] pci_bus 0000:00: root bus resource [bus 00-fe]
[    2.411454] pci 0000:00:00.0: [8086:191f] type 00 class 0x060000
[    2.412694] pci 0000:00:01.0: [8086:1901] type 01 class 0x060400
[    2.413478] pci 0000:00:01.0: PME# supported from D0 D3hot D3cold
[    2.414592] pci 0000:00:02.0: [8086:1912] type 00 class 0x030000
[    2.415450] pci 0000:00:02.0: reg 0x10: [mem 0xde000000-0xdeffffff 64bit]
[    2.416447] pci 0000:00:02.0: reg 0x18: [mem 0xc0000000-0xcfffffff 64bit=
 pref]
[    2.417446] pci 0000:00:02.0: reg 0x20: [io  0xf000-0xf03f]
[    2.418610] pci 0000:00:14.0: [8086:a12f] type 00 class 0x0c0330
[    2.419460] pci 0000:00:14.0: reg 0x10: [mem 0xdf030000-0xdf03ffff 64bit]
[    2.420502] pci 0000:00:14.0: PME# supported from D3hot D3cold
[    2.421560] pci 0000:00:14.2: [8086:a131] type 00 class 0x118000
[    2.422457] pci 0000:00:14.2: reg 0x10: [mem 0xdf04e000-0xdf04efff 64bit]
[    2.423585] pci 0000:00:16.0: [8086:a13a] type 00 class 0x078000
[    2.424462] pci 0000:00:16.0: reg 0x10: [mem 0xdf04d000-0xdf04dfff 64bit]
[    2.425519] pci 0000:00:16.0: PME# supported from D3hot
[    2.426572] pci 0000:00:17.0: [8086:a102] type 00 class 0x010601
[    2.427453] pci 0000:00:17.0: reg 0x10: [mem 0xdf048000-0xdf049fff]
[    2.428448] pci 0000:00:17.0: reg 0x14: [mem 0xdf04c000-0xdf04c0ff]
[    2.429448] pci 0000:00:17.0: reg 0x18: [io  0xf090-0xf097]
[    2.430448] pci 0000:00:17.0: reg 0x1c: [io  0xf080-0xf083]
[    2.431448] pci 0000:00:17.0: reg 0x20: [io  0xf060-0xf07f]
[    2.432448] pci 0000:00:17.0: reg 0x24: [mem 0xdf04b000-0xdf04b7ff]
[    2.433476] pci 0000:00:17.0: PME# supported from D3hot
[    2.434562] pci 0000:00:1c.0: [8086:a110] type 01 class 0x060400
[    2.435502] pci 0000:00:1c.0: PME# supported from D0 D3hot D3cold
[    2.436610] pci 0000:00:1f.0: [8086:a146] type 00 class 0x060100
[    2.437640] pci 0000:00:1f.2: [8086:a121] type 00 class 0x058000
[    2.438455] pci 0000:00:1f.2: reg 0x10: [mem 0xdf044000-0xdf047fff]
[    2.439591] pci 0000:00:1f.3: [8086:a170] type 00 class 0x040300
[    2.440463] pci 0000:00:1f.3: reg 0x10: [mem 0xdf040000-0xdf043fff 64bit]
[    2.441471] pci 0000:00:1f.3: reg 0x20: [mem 0xdf020000-0xdf02ffff 64bit]
[    2.442486] pci 0000:00:1f.3: PME# supported from D3hot D3cold
[    2.443604] pci 0000:00:1f.4: [8086:a123] type 00 class 0x0c0500
[    2.444498] pci 0000:00:1f.4: reg 0x10: [mem 0xdf04a000-0xdf04a0ff 64bit]
[    2.445511] pci 0000:00:1f.4: reg 0x20: [io  0xf040-0xf05f]
[    2.446627] pci 0000:00:1f.6: [8086:15b7] type 00 class 0x020000
[    2.447461] pci 0000:00:1f.6: reg 0x10: [mem 0xdf000000-0xdf01ffff]
[    2.448545] pci 0000:00:1f.6: PME# supported from D0 D3hot D3cold
[    2.449570] pci 0000:00:01.0: PCI bridge to [bus 01]
[    2.450504] pci 0000:02:00.0: [104c:8240] type 01 class 0x060400
[    2.451576] pci 0000:02:00.0: supports D1 D2
[    2.452553] pci 0000:00:1c.0: PCI bridge to [bus 02-03]
[    2.453493] pci_bus 0000:03: extended config space not accessible
[    2.454507] pci 0000:02:00.0: PCI bridge to [bus 03]
[    2.456939] ACPI: PCI Interrupt Link [LNKA] (IRQs *7 12), disabled.
[    2.457478] ACPI: PCI Interrupt Link [LNKB] (IRQs 3 *10), disabled.
[    2.458477] ACPI: PCI Interrupt Link [LNKC] (IRQs 4 *5), disabled.
[    2.459476] ACPI: PCI Interrupt Link [LNKD] (IRQs 6 *11), disabled.
[    2.460476] ACPI: PCI Interrupt Link [LNKE] (IRQs *7 11), disabled.
[    2.461476] ACPI: PCI Interrupt Link [LNKF] (IRQs *3 10), disabled.
[    2.462476] ACPI: PCI Interrupt Link [LNKG] (IRQs *4 5), disabled.
[    2.463476] ACPI: PCI Interrupt Link [LNKH] (IRQs 6 12) *11, disabled.
[    2.464829] iommu: Default domain type: Translated=20
[    2.465461] pci 0000:00:02.0: vgaarb: setting as boot VGA device
[    2.466442] pci 0000:00:02.0: vgaarb: VGA device added: decodes=3Dio+mem=
,owns=3Dio+mem,locks=3Dnone
[    2.466445] pci 0000:00:02.0: vgaarb: bridge control possible
[    2.467443] vgaarb: loaded
[    2.468493] SCSI subsystem initialized
[    2.469454] ACPI: bus type USB registered
[    2.470451] usbcore: registered new interface driver usbfs
[    2.471447] usbcore: registered new interface driver hub
[    2.472454] usbcore: registered new device driver usb
[    2.473456] pps_core: LinuxPPS API ver. 1 registered
[    2.474443] pps_core: Software ver. 5.3.6 - Copyright 2005-2007 Rodolfo =
Giometti <giometti@linux.it>
[    2.475444] PTP clock support registered
[    2.476454] EDAC MC: Ver: 3.0.0
[    2.477541] NetLabel: Initializing
[    2.478444] NetLabel:  domain hash size =3D 128
[    2.479443] NetLabel:  protocols =3D UNLABELED CIPSOv4 CALIPSO
[    2.480454] NetLabel:  unlabeled traffic allowed by default
[    2.481443] PCI: Using ACPI for IRQ routing
[    2.510007] PCI: pci_cache_line_size set to 64 bytes
[    2.510483] e820: reserve RAM buffer [mem 0x0009c800-0x0009ffff]
[    2.511443] e820: reserve RAM buffer [mem 0x7caa6000-0x7fffffff]
[    2.512443] e820: reserve RAM buffer [mem 0x7cb23000-0x7fffffff]
[    2.513443] e820: reserve RAM buffer [mem 0x86f57000-0x87ffffff]
[    2.514443] e820: reserve RAM buffer [mem 0x872000000-0x873ffffff]
[    2.515553] hpet0: at MMIO 0xfed00000, IRQs 2, 8, 0, 0, 0, 0, 0, 0
[    2.516444] hpet0: 8 comparators, 64-bit 24.000000 MHz counter
[    2.519452] clocksource: Switched to clocksource tsc-early
[    2.547151] VFS: Disk quotas dquot_6.6.0
[    2.551161] VFS: Dquot-cache hash table entries: 512 (order 0, 4096 byte=
s)
[    2.558156] AppArmor: AppArmor Filesystem Enabled
[    2.562944] pnp: PnP ACPI init
[    2.566264] system 00:00: [io  0x0a00-0x0a3f] has been reserved
[    2.572250] system 00:00: [io  0x0a40-0x0a7f] has been reserved
[    2.578247] system 00:00: Plug and Play ACPI device, IDs PNP0c02 (active)
[    2.585569] pnp 00:01: [dma 0 disabled]
[    2.589514] pnp 00:01: Plug and Play ACPI device, IDs PNP0501 (active)
[    2.596237] system 00:02: [io  0x0680-0x069f] has been reserved
[    2.602227] system 00:02: [io  0xffff] has been reserved
[    2.607605] system 00:02: [io  0xffff] has been reserved
[    2.612985] system 00:02: [io  0xffff] has been reserved
[    2.618364] system 00:02: [io  0x1800-0x18fe] has been reserved
[    2.624347] system 00:02: [io  0x164e-0x164f] has been reserved
[    2.630328] system 00:02: Plug and Play ACPI device, IDs PNP0c02 (active)
[    2.637236] system 00:03: [io  0x0800-0x087f] has been reserved
[    2.643221] system 00:03: Plug and Play ACPI device, IDs PNP0c02 (active)
[    2.650076] pnp 00:04: Plug and Play ACPI device, IDs PNP0b00 (active)
[    2.656685] system 00:05: [io  0x1854-0x1857] has been reserved
[    2.662668] system 00:05: Plug and Play ACPI device, IDs INT3f0d PNP0c02=
 (active)
[    2.670378] system 00:06: [mem 0xfed10000-0xfed17fff] has been reserved
[    2.677051] system 00:06: [mem 0xfed18000-0xfed18fff] has been reserved
[    2.683726] system 00:06: [mem 0xfed19000-0xfed19fff] has been reserved
[    2.690396] system 00:06: [mem 0xe0000000-0xefffffff] has been reserved
[    2.697065] system 00:06: [mem 0xfed20000-0xfed3ffff] has been reserved
[    2.703737] system 00:06: [mem 0xfed90000-0xfed93fff] could not be reser=
ved
[    2.710753] system 00:06: [mem 0xfed45000-0xfed8ffff] has been reserved
[    2.717424] system 00:06: [mem 0xff000000-0xffffffff] has been reserved
[    2.724094] system 00:06: [mem 0xfee00000-0xfeefffff] could not be reser=
ved
[    2.731111] system 00:06: [mem 0xdffe0000-0xdfffffff] has been reserved
[    2.737781] system 00:06: Plug and Play ACPI device, IDs PNP0c02 (active)
[    2.744651] system 00:07: [mem 0xfd000000-0xfdabffff] has been reserved
[    2.751321] system 00:07: [mem 0xfdad0000-0xfdadffff] has been reserved
[    2.757990] system 00:07: [mem 0xfdb00000-0xfdffffff] has been reserved
[    2.764661] system 00:07: [mem 0xfe000000-0xfe01ffff] could not be reser=
ved
[    2.771677] system 00:07: [mem 0xfe036000-0xfe03bfff] has been reserved
[    2.778348] system 00:07: [mem 0xfe03d000-0xfe3fffff] has been reserved
[    2.785020] system 00:07: [mem 0xfe410000-0xfe7fffff] has been reserved
[    2.791693] system 00:07: Plug and Play ACPI device, IDs PNP0c02 (active)
[    2.798749] system 00:08: [io  0xff00-0xfffe] has been reserved
[    2.804733] system 00:08: Plug and Play ACPI device, IDs PNP0c02 (active)
[    2.812369] system 00:09: [mem 0xfdaf0000-0xfdafffff] has been reserved
[    2.819052] system 00:09: [mem 0xfdae0000-0xfdaeffff] has been reserved
[    2.825736] system 00:09: [mem 0xfdac0000-0xfdacffff] has been reserved
[    2.832416] system 00:09: Plug and Play ACPI device, IDs PNP0c02 (active)
[    2.839892] pnp: PnP ACPI: found 10 devices
[    2.849401] clocksource: acpi_pm: mask: 0xffffff max_cycles: 0xffffff, m=
ax_idle_ns: 2085701024 ns
[    2.858365] NET: Registered protocol family 2
[    2.862893] tcp_listen_portaddr_hash hash table entries: 16384 (order: 6=
, 262144 bytes, linear)
[    2.871675] TCP established hash table entries: 262144 (order: 9, 209715=
2 bytes, linear)
[    2.880003] TCP bind hash table entries: 65536 (order: 8, 1048576 bytes,=
 linear)
[    2.887538] TCP: Hash tables configured (established 262144 bind 65536)
[    2.894224] UDP hash table entries: 16384 (order: 7, 524288 bytes, linea=
r)
[    2.901195] UDP-Lite hash table entries: 16384 (order: 7, 524288 bytes, =
linear)
[    2.908636] NET: Registered protocol family 1
[    2.913133] RPC: Registered named UNIX socket transport module.
[    2.919115] RPC: Registered udp transport module.
[    2.923888] RPC: Registered tcp transport module.
[    2.928662] RPC: Registered tcp NFSv4.1 backchannel transport module.
[    2.935161] NET: Registered protocol family 44
[    2.939683] pci 0000:00:01.0: PCI bridge to [bus 01]
[    2.944720] pci 0000:02:00.0: PCI bridge to [bus 03]
[    2.949769] pci 0000:00:1c.0: PCI bridge to [bus 02-03]
[    2.955065] pci_bus 0000:00: resource 4 [io  0x0000-0x0cf7 window]
[    2.961306] pci_bus 0000:00: resource 5 [io  0x0d00-0xffff window]
[    2.967544] pci_bus 0000:00: resource 6 [mem 0x000a0000-0x000bffff windo=
w]
[    2.974473] pci_bus 0000:00: resource 7 [mem 0x8c000000-0xdfffffff windo=
w]
[    2.981401] pci_bus 0000:00: resource 8 [mem 0xfd000000-0xfe7fffff windo=
w]
[    2.988420] pci 0000:00:02.0: Video device with shadowed ROM at [mem 0x0=
00c0000-0x000dffff]
[    2.996912] IOAPIC[2]: Set IRTE entry (P:1 FPD:0 Dst_Mode:1 Redir_hint:1=
 Trig_Mode:0 Dlvry_Mode:0 Avail:0 Vector:EF Dest:00000100 SID:F0F8 SQ:0 SVT=
:1)
[    3.010412] IOAPIC[0]: Set routing entry (2-18 -> 0xef -> IRQ 18 Mode:1 =
Active:1 Dest:1)
[    3.018653] pci 0000:00:14.0: quirk_usb_early_handoff+0x0/0x620 took 213=
05 usecs
[    3.026142] PCI: CLS 0 bytes, default 64
[    3.030160] Trying to unpack rootfs image as initramfs...
[   10.748022] Freeing initrd memory: 836580K
[   10.752254] PCI-DMA: Using software bounce buffering for IO (SWIOTLB)
[   10.758755] software IO TLB: mapped [mem 0x0000000082f57000-0x0000000086=
f57000] (64MB)
[   10.767401] Initialise system trusted keyrings
[   10.771923] Key type blacklist registered
[   10.776027] workingset: timestamp_bits=3D36 max_order=3D23 bucket_order=
=3D0
[   10.783370] zbud: loaded
[   10.793142] NET: Registered protocol family 38
[   10.797659] Key type asymmetric registered
[   10.801828] Asymmetric key parser 'x509' registered
[   10.806778] Block layer SCSI generic (bsg) driver version 0.4 loaded (ma=
jor 247)
[   10.814259] io scheduler mq-deadline registered
[   10.818860] io scheduler kyber registered
[   10.822958] io scheduler bfq registered
[   10.826896] atomic64_test: passed for x86-64 platform with CX8 and with =
SSE
[   10.834043] IOAPIC[2]: Set IRTE entry (P:1 FPD:0 Dst_Mode:1 Redir_hint:1=
 Trig_Mode:0 Dlvry_Mode:0 Avail:0 Vector:EF Dest:00000100 SID:F0F8 SQ:0 SVT=
:1)
[   10.847543] IOAPIC[0]: Set routing entry (2-16 -> 0xef -> IRQ 16 Mode:1 =
Active:1 Dest:1)
[   10.855728] pcieport 0000:00:01.0: PME: Signaling with IRQ 122
[   10.861756] pcieport 0000:00:1c.0: PME: Signaling with IRQ 123
[   10.867688] pcieport 0000:00:1c.0: AER: enabled with IRQ 123
[   10.873478] shpchp: Standard Hot Plug PCI Controller Driver version: 0.4
[   10.880252] intel_idle: MWAIT substates: 0x142120
[   10.885026] intel_idle: v0.5.1 model 0x5E
[   10.889334] intel_idle: Local APIC timer is reliable in all C-states
[   10.895897] input: Sleep Button as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0=
C0E:00/input/input0
[   10.904333] ACPI: Sleep Button [SLPB]
[   10.908109] input: Power Button as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0=
C0C:00/input/input1
[   10.916551] ACPI: Power Button [PWRB]
[   10.920343] input: Power Button as /devices/LNXSYSTM:00/LNXPWRBN:00/inpu=
t/input2
[   10.927849] ACPI: Power Button [PWRF]
[   10.932566] thermal LNXTHERM:00: registered as thermal_zone0
[   10.938292] ACPI: Thermal Zone [TZ00] (28 C)
[   10.942712] thermal LNXTHERM:01: registered as thermal_zone1
[   10.948434] ACPI: Thermal Zone [TZ01] (30 C)
[   10.952847] ERST DBG: ERST support is disabled.
[   10.957626] Serial: 8250/16550 driver, 4 ports, IRQ sharing enabled
[   10.964035] 00:01: ttyS0 at I/O 0x3f8 (irq =3D 4, base_baud =3D 115200) =
is a 16550A
[   10.972324] Non-volatile memory driver v1.3
[   10.977042] rdac: device handler registered
[   10.981361] hp_sw: device handler registered
[   10.985717] emc: device handler registered
[   10.989941] alua: device handler registered
[   10.994273] e1000: Intel(R) PRO/1000 Network Driver
[   10.999219] e1000: Copyright (c) 1999-2006 Intel Corporation.
[   11.005032] e1000e: Intel(R) PRO/1000 Network Driver
[   11.010061] e1000e: Copyright(c) 1999 - 2015 Intel Corporation.
[   11.016137] IOAPIC[2]: Set IRTE entry (P:1 FPD:0 Dst_Mode:1 Redir_hint:1=
 Trig_Mode:0 Dlvry_Mode:0 Avail:0 Vector:EF Dest:00000100 SID:F0F8 SQ:0 SVT=
:1)
[   11.032095] IOAPIC[0]: Set routing entry (2-19 -> 0xef -> IRQ 19 Mode:1 =
Active:1 Dest:1)
[   11.040330] e1000e 0000:00:1f.6: Interrupt Throttling Rate (ints/sec) se=
t to dynamic conservative mode
[   11.279302] e1000e 0000:00:1f.6 0000:00:1f.6 (uninitialized): registered=
 PHC clock
[   11.352657] e1000e 0000:00:1f.6 eth0: (PCI Express:2.5GT/s:Width x1) 64:=
00:6a:30:92:35
[   11.360642] e1000e 0000:00:1f.6 eth0: Intel(R) PRO/1000 Network Connecti=
on
[   11.367673] e1000e 0000:00:1f.6 eth0: MAC: 12, PHY: 12, PBA No: FFFFFF-0=
FF
[   11.374614] igb: Intel(R) Gigabit Ethernet Network Driver
[   11.380076] igb: Copyright (c) 2007-2014 Intel Corporation.
[   11.385726] ixgbe: Intel(R) 10 Gigabit PCI Express Network Driver
[   11.391885] ixgbe: Copyright (c) 1999-2016 Intel Corporation.
[   11.397932] i40e: Intel(R) Ethernet Connection XL710 Network Driver
[   11.404269] i40e: Copyright (c) 2013 - 2019 Intel Corporation.
[   11.410399] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
[   11.416988] ehci-pci: EHCI PCI platform driver
[   11.421509] ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
[   11.427748] ohci-pci: OHCI PCI platform driver
[   11.432266] uhci_hcd: USB Universal Host Controller Interface driver
[   11.438823] IOAPIC[2]: Set IRTE entry (P:1 FPD:0 Dst_Mode:1 Redir_hint:1=
 Trig_Mode:0 Dlvry_Mode:0 Avail:0 Vector:EF Dest:00000100 SID:F0F8 SQ:0 SVT=
:1)
[   11.452322] IOAPIC[0]: Set routing entry (2-18 -> 0xef -> IRQ 18 Mode:1 =
Active:1 Dest:1)
[   11.460512] xhci_hcd 0000:00:14.0: xHCI Host Controller
[   11.465944] xhci_hcd 0000:00:14.0: new USB bus registered, assigned bus =
number 1
[   11.474514] xhci_hcd 0000:00:14.0: hcc params 0x200077c1 hci version 0x1=
00 quirks 0x0000000001109810
[   11.483767] xhci_hcd 0000:00:14.0: cache line size of 64 is not supported
[   11.490762] usb usb1: New USB device found, idVendor=3D1d6b, idProduct=
=3D0002, bcdDevice=3D 5.10
[   11.499088] usb usb1: New USB device strings: Mfr=3D3, Product=3D2, Seri=
alNumber=3D1
[   11.506377] usb usb1: Product: xHCI Host Controller
[   11.511323] usb usb1: Manufacturer: Linux 5.10.0-02717-gc12b7a396ff7 xhc=
i-hcd
[   11.518508] usb usb1: SerialNumber: 0000:00:14.0
[   11.523393] hub 1-0:1.0: USB hub found
[   11.527248] hub 1-0:1.0: 16 ports detected
[   11.532253] xhci_hcd 0000:00:14.0: xHCI Host Controller
[   11.537693] xhci_hcd 0000:00:14.0: new USB bus registered, assigned bus =
number 2
[   11.545172] xhci_hcd 0000:00:14.0: Host supports USB 3.0 SuperSpeed
[   11.551532] usb usb2: New USB device found, idVendor=3D1d6b, idProduct=
=3D0003, bcdDevice=3D 5.10
[   11.559853] usb usb2: New USB device strings: Mfr=3D3, Product=3D2, Seri=
alNumber=3D1
[   11.567140] usb usb2: Product: xHCI Host Controller
[   11.572083] usb usb2: Manufacturer: Linux 5.10.0-02717-gc12b7a396ff7 xhc=
i-hcd
[   11.579266] usb usb2: SerialNumber: 0000:00:14.0
[   11.584157] hub 2-0:1.0: USB hub found
[   11.588012] hub 2-0:1.0: 10 ports detected
[   11.592610] usb: port power management may be unreliable
[   11.598192] i8042: PNP: No PS/2 controller found.
[   11.603048] mousedev: PS/2 mouse device common for all mice
[   11.608946] rtc_cmos 00:04: RTC can wake from S4
[   11.614172] rtc_cmos 00:04: registered as rtc0
[   11.618845] rtc_cmos 00:04: setting system clock to 2020-12-16T17:48:07 =
UTC (1608140887)
[   11.627019] rtc_cmos 00:04: alarms up to one month, y3k, 242 bytes nvram=
, hpet irqs
[   11.634959] i801_smbus 0000:00:1f.4: SPD Write Disable is set
[   11.640837] i801_smbus 0000:00:1f.4: SMBus using PCI interrupt
[   11.650301] i2c i2c-0: 4/4 memory slots populated (from DMI)
[   11.656350] i2c i2c-0: Successfully instantiated SPD at 0x50
[   11.662398] i2c i2c-0: Successfully instantiated SPD at 0x51
[   11.668442] i2c i2c-0: Successfully instantiated SPD at 0x52
[   11.674490] i2c i2c-0: Successfully instantiated SPD at 0x53
[   11.680243] iTCO_wdt: Intel TCO WatchDog Timer Driver v1.11
[   11.685925] iTCO_wdt: Found a Intel PCH TCO device (Version=3D4, TCOBASE=
=3D0x0400)
[   11.693530] iTCO_wdt: initialized. heartbeat=3D30 sec (nowayout=3D0)
[   11.699623] iTCO_vendor_support: vendor-support=3D0
[   11.704409] intel_pstate: Intel P-state driver initializing
[   11.710827] intel_pstate: HWP enabled
[   11.714825] hid: raw HID events driver (C) Jiri Kosina
[   11.720064] usbcore: registered new interface driver usbhid
[   11.725711] usbhid: USB HID core driver
[   11.729634] drop_monitor: Initializing network drop monitor service
[   11.736007] Initializing XFRM netlink socket
[   11.740415] NET: Registered protocol family 10
[   11.745166] Segment Routing with IPv6
[   11.748915] NET: Registered protocol family 17
[   11.753593] 9pnet: Installing 9P2000 support
[   11.757938] mpls_gso: MPLS GSO support
[   11.762271] microcode: sig=3D0x506e3, pf=3D0x2, revision=3D0xe2
[   11.767933] microcode: Microcode Update Driver: v2.2.
[   11.767950] IPI shorthand broadcast: enabled
[   11.777526] ... APIC ID:      00000000 (0)
[   11.778525] ... APIC VERSION: 01060015
[   11.778525] 000000000000000000000000000000000000000000000000000000000000=
0000
[   11.778525] 000000000000000000000000000000000000000000000000000000000000=
0000
[   11.778525] 000000000000000000000000000000000000000000000000000000000000=
1000
[   11.778525]=20
[   11.808402] number of MP IRQ sources: 15.
[   11.808417] tsc: Refined TSC clocksource calibration: 3191.998 MHz
[   11.812487] number of IO-APIC #2 registers: 120.
[   11.812488] testing the IO APIC.......................
[   11.818727] clocksource: tsc: mask: 0xffffffffffffffff max_cycles: 0x2e0=
2c314322, max_idle_ns: 440795292111 ns
[   11.823429] IO APIC #2......
[   11.841630] .... register #00: 02000000
[   11.845540] .......    : physical APIC id: 02
[   11.849968] .......    : Delivery Type: 0
[   11.854050] .......    : LTS          : 0
[   11.858132] .... register #01: 00770020
[   11.862050] .......     : max redirection entries: 77
[   11.867178] .......     : PRQ implemented: 0
[   11.871527] .......     : IO APIC version: 20
[   11.875965] .... register #02: 00000000
[   11.879882] .......     : arbitration: 00
[   11.883972] .... IRQ redirection table:
[   11.887888] IOAPIC 0:
[   11.890258]  pin00, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   11.898161]  pin01, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   11.906064]  pin02, enabled , edge , high, V(02), IRR(0), S(0), remapped=
, I(0001),  Z(0)
[   11.914225]  pin03, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   11.922127]  pin04, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   11.930028]  pin05, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   11.937930]  pin06, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   11.945830]  pin07, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(10), M(2)
[   11.953732]  pin08, enabled , edge , high, V(08), IRR(0), S(0), remapped=
, I(0007),  Z(0)
[   11.961893]  pin09, enabled , level, high, V(09), IRR(0), S(0), remapped=
, I(0008),  Z(0)
[   11.970055]  pin0a, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   11.977956]  pin0b, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   11.985858]  pin0c, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   11.993763]  pin0d, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.001666]  pin0e, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.009567]  pin0f, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.017469]  pin10, enabled , level, low , V(10), IRR(0), S(0), remapped=
, I(000F),  Z(0)
[   12.025626]  pin11, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.033526]  pin12, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.041425]  pin13, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.049324]  pin14, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.057226]  pin15, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.065125]  pin16, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.073027]  pin17, disabled, edge , high, V(00), IRR(0), S(0), remapped=
, I(0000),  Z(2)
[   12.081185]  pin18, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.089087]  pin19, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.096990]  pin1a, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.104904]  pin1b, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.112820]  pin1c, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.120734]  pin1d, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.128644]  pin1e, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.136545]  pin1f, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.144447]  pin20, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.154843]  pin21, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.162746]  pin22, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.170649]  pin23, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.178550]  pin24, disabled, edge , high, V(21), IRR(0), S(0), physical=
, D(00), M(2)
[   12.186454]  pin25, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.194356]  pin26, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.202257]  pin27, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(01), M(2)
[   12.210157]  pin28, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.218059]  pin29, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.225959]  pin2a, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.233859]  pin2b, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.241762]  pin2c, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.249663]  pin2d, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.257563]  pin2e, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.265463]  pin2f, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.273363]  pin30, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.281265]  pin31, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.289165]  pin32, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.297068]  pin33, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.304968]  pin34, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.312870]  pin35, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.320772]  pin36, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.328673]  pin37, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.336578]  pin38, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.344491]  pin39, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.352407]  pin3a, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.360320]  pin3b, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.368224]  pin3c, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.376126]  pin3d, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.384029]  pin3e, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.391929]  pin3f, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.399830]  pin40, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.407730]  pin41, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.415632]  pin42, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.423533]  pin43, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.431434]  pin44, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.439337]  pin45, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.447240]  pin46, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.455143]  pin47, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.463045]  pin48, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.470946]  pin49, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.478848]  pin4a, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(2)
[   12.486748]  pin4b, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.494647]  pin4c, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.502547]  pin4d, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.510448]  pin4e, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.518350]  pin4f, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.526249]  pin50, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.534149]  pin51, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.542048]  pin52, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(80), M(2)
[   12.549950]  pin53, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.557848]  pin54, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.565751]  pin55, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.573654]  pin56, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.581568]  pin57, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.589486]  pin58, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.597401]  pin59, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.605309]  pin5a, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.613210]  pin5b, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.621112]  pin5c, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.629014]  pin5d, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.636916]  pin5e, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.644818]  pin5f, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.652722]  pin60, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.660624]  pin61, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.668526]  pin62, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.676428]  pin63, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.684330]  pin64, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.692233]  pin65, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.700135]  pin66, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.708039]  pin67, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.715941]  pin68, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.723844]  pin69, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.731747]  pin6a, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.739650]  pin6b, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.747554]  pin6c, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.755458]  pin6d, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.763360]  pin6e, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(2)
[   12.771262]  pin6f, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.779163]  pin70, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.787066]  pin71, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.794969]  pin72, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.802872]  pin73, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.810774]  pin74, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.818690]  pin75, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.826605]  pin76, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.834520]  pin77, disabled, edge , high, V(00), IRR(0), S(0), physical=
, D(00), M(0)
[   12.842421] IRQ to pin mappings:
[   12.845728] IRQ0 -> 0:2
[   12.848260] IRQ1 -> 0:1
[   12.850793] IRQ3 -> 0:3
[   12.853326] IRQ4 -> 0:4
[   12.855858] IRQ5 -> 0:5
[   12.860883] IRQ6 -> 0:6
[   12.863416] IRQ7 -> 0:7
[   12.865947] IRQ8 -> 0:8
[   12.868480] IRQ9 -> 0:9
[   12.871014] IRQ10 -> 0:10
[   12.873718] IRQ11 -> 0:11
[   12.876421] IRQ12 -> 0:12
[   12.879126] IRQ13 -> 0:13
[   12.881833] IRQ14 -> 0:14
[   12.884536] IRQ15 -> 0:15
[   12.887240] IRQ16 -> 0:16
[   12.889945] IRQ18 -> 0:18
[   12.892649] IRQ19 -> 0:19
[   12.895354] .................................... done.
[   12.900562] clocksource: Switched to clocksource tsc
[   12.900574] AVX2 version of gcm_enc/dec engaged.
[   12.910302] AES CTR mode by8 optimization enabled
[   12.916405] sched_clock: Marking stable (11957804489, 958597278)->(13981=
301724, -1064899957)
[   12.925131] registered taskstats version 1
[   12.929316] Loading compiled-in X.509 certificates
[   12.934891] Loaded X.509 cert 'Build time autogenerated kernel key: d018=
70eb1a8af5c074f5ae8ce634d034674ddd46'
[   12.944885] zswap: loaded using pool lzo/zbud
[   12.949506] Key type ._fscrypt registered
[   12.953626] Key type .fscrypt registered
[   12.957642] Key type fscrypt-provisioning registered
[   12.965420] Key type encrypted registered
[   12.969561] AppArmor: AppArmor sha1 policy hashing enabled
[   12.975126] ima: No TPM chip found, activating TPM-bypass!
[   12.980694] ima: Allocated hash algorithm: sha1
[   12.985309] ima: No architecture policies found
[   12.989924] evm: Initialising EVM extended attributes:
[   12.995138] evm: security.selinux
[   12.998582] evm: security.apparmor
[   13.002070] evm: security.ima
[   13.005125] evm: security.capability
[   13.008786] evm: HMAC attrs: 0x1
[   17.978454] e1000e 0000:00:1f.6 eth0: NIC Link is Up 1000 Mbps Full Dupl=
ex, Flow Control: Rx/Tx
[   17.987622] IPv6: ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready
[   17.999680] Sending DHCP requests ., OK
[   18.019617] IP-Config: Got DHCP answer from 192.168.3.2, my address is 1=
92.168.3.95
[   18.027358] IP-Config: Complete:
[   18.030672]      device=3Deth0, hwaddr=3D64:00:6a:30:92:35, ipaddr=3D192=
=2E168.3.95, mask=3D255.255.255.0, gw=3D192.168.3.200
[   18.041005]      host=3Dlkp-skl-d04, domain=3Dlkp.intel.com, nis-domain=
=3D(none)
[   18.047949]      bootserver=3D192.168.3.200, rootserver=3D192.168.3.200,=
 rootpath=3D
[   18.047950]      nameserver0=3D192.168.3.200
[   18.059437]=20
[   18.061082] TAP version 14
[   18.063885] 1..1
[   18.065822]     # Subtest: property-entry
[   18.065822]     1..7
[   18.070208]     ok 1 - pe_test_uints
[   18.072810]     ok 2 - pe_test_uint_arrays
[   18.076770]     ok 3 - pe_test_strings
[   18.081118]     ok 4 - pe_test_bool
[   18.085171]     ok 5 - pe_test_move_inline_u8
[   18.088888]     ok 6 - pe_test_move_inline_str
[   18.093598]     ok 7 - pe_test_reference
[   18.098141] ok 1 - property-entry
[   18.106583] Freeing unused decrypted memory: 2036K
[   18.111793] Freeing unused kernel image (initmem) memory: 2436K
[   18.125586] Write protecting the kernel read-only data: 22528k
[   18.132077] Freeing unused kernel image (text/rodata gap) memory: 2036K
[   18.139083] Freeing unused kernel image (rodata/data gap) memory: 1356K
[   18.151563] Run /init as init process
[   18.155315]   with arguments:
[   18.158372]     /init
[   18.160735]     nokaslr
[   18.163272]   with environment:
[   18.166525]     HOME=3D/
[   18.168975]     TERM=3Dlinux
[   18.171772]     user=3Dlkp
[   18.174397]     job=3D/lkp/jobs/scheduled/lkp-skl-d04/perf-sanity-tests-=
gcc-ucode=3D0xe2-debian-10.4-x86_64-20200603.cgz-c12b7a396ff758a262002b5b32=
6d83efeae71140-20201217-40483-18lglgq-0.yaml
[   18.191142]     ARCH=3Dx86_64
[   18.194024]     kconfig=3Dx86_64-rhel-8.3
[   18.197944]     branch=3Dlinux-devel/devel-hourly-2020121614
[   18.203505]     commit=3Dc12b7a396ff758a262002b5b326d83efeae71140
[   18.209499]     BOOT_IMAGE=3D/pkg/linux/x86_64-rhel-8.3/gcc-9/c12b7a396f=
f758a262002b5b326d83efeae71140/vmlinuz-5.10.0-02717-gc12b7a396ff7
[   18.221731]     max_uptime=3D2100
[   18.224960]     RESULT_ROOT=3D/result/perf-sanity-tests/gcc-ucode=3D0xe2=
/lkp-skl-d04/debian-10.4-x86_64-20200603.cgz/x86_64-rhel-8.3/gcc-9/c12b7a39=
6ff758a262002b5b326d83efeae71140/0
[   18.240839]     LKP_SERVER=3Dinternal-lkp-server
[   18.245365]     softlockup_panic=3D1
[   18.248852]     prompt_ramdisk=3D0
[   18.252168]     vga=3Dnormal
[   18.258746] systemd[1]: RTC configured in localtime, applying delta of 0=
 minutes to system time.


         Moun
[   18.425397] wmi_bus wmi_bus-PNP0C14:00: WQBC data block query control me=
thod not found

[0m] Listening o
[   18.505178] RAPL PMU: hw unit of domain package 2^-14 Joules
m.
[   18.556913] IOAPIC[2]: Set IRTE entry (P:1 FPD:0 Dst_Mode:1 Redir_hint:1=
 Trig_Mode:0 Dlvry_Mode:0 Avail:0 Vector:EF Dest:00000100 SID:F0F8 SQ:0 SVT=
:1)
m.
NFS client servi
[   18.743346] ata1: SATA max UDMA/133 abar m2048@0xdf04b000 port 0xdf04b10=
0 irq 127
[   18.797629] i915 0000:00:02.0: vgaarb: changed VGA decodes: olddecodes=
=3Dio+mem,decodes=3Dio+mem:owns=3Dio+mem
[   18.807096] i915 0000:00:02.0: Direct firmware load for i915/skl_dmc_ver=
1_27.bin failed with error -2
[   18.816259] i915 0000:00:02.0: [drm] Failed to load DMC firmware i915/sk=
l_dmc_ver1_27.bin. Disabling runtime power management.
[   18.816260] i915 0000:00:02.0: [drm] DMC firmware homepage: https://git.=
kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/tree/i915
[   18.831759] [drm] Initialized i915 1.6.0 20201103 for 0000:00:02.0 on mi=
nor 0
0m.
[   18.880497] random: fast init done
[   18.880695] i915 0000:00:02.0: [drm] Cannot find any crtc or sizes
         Startin
[   18.921319] intel_rapl_common: Found RAPL domain package
[   18.927972] intel_rapl_common: Found RAPL domain core
 network interfa
[   18.939606] intel_rapl_common: Found RAPL domain dram
[   19.087947] ata4: SATA link down (SStatus 4 SControl 300)
[   19.093441] ata2: SATA link up 6.0 Gbps (SStatus 133 SControl 300)
[   19.099595] ata3: SATA link down (SStatus 4 SControl 300)
[   19.099623] ata1: SATA link up 6.0 Gbps (SStatus 133 SControl 300)
[   19.119129] ata2.00: 2344225968 sectors, multi 1: LBA48 NCQ (depth 32)
[   19.133190] ata1.00: 1953525168 sectors, multi 16: LBA48 NCQ (depth 32),=
 AA
1;39mDaily Clean
[   19.140267] ata2.00: configured for UDMA/133
up of Temporary=20
[   19.146640] ata1.00: configured for UDMA/133

[   19.161250] scsi 1:0:0:0: Direct-Access     ATA      INTEL SSDSC2BB01 00=
23 PQ: 0 ANSI: 5
[   19.180608] scsi 1:0:0:0: Attached scsi generic sg1 type 0
[   19.183342] i915 0000:00:02.0: [drm] Cannot find any crtc or sizes
[   19.203041] sd 1:0:0:0: [sdb] 2344225968 512-byte logical blocks: (1.20 =
TB/1.09 TiB)
[   19.203106] sd 0:0:0:0: [sda] 1953525168 512-byte logical blocks: (1.00 =
TB/932 GiB)
[   19.212054] sd 1:0:0:0: [sdb] 4096-byte physical blocks
[   19.219655] sd 0:0:0:0: [sda] 4096-byte physical blocks
[   19.225497] sd 1:0:0:0: [sdb] Write Protect is off
[   19.230066] sd 0:0:0:0: [sda] Write Protect is off
[   19.230067] sd 0:0:0:0: [sda] Mode Sense: 00 3a 00 00
[   19.230072] sd 0:0:0:0: [sda] Write cache: enabled, read cache: enabled,=
 doesn't support DPO or FUA
[   19.232168] i915 0000:00:02.0: [drm] Cannot find any crtc or sizes
[   19.234953] sd 1:0:0:0: [sdb] Mode Sense: 00 3a 00 00
[   19.264830] sd 1:0:0:0: [sdb] Write cache: enabled, read cache: enabled,=
 doesn't support DPO or FUA
[   19.278460]  sdb: sdb1 sdb2
[   19.288012] sd 1:0:0:0: [sdb] Attached SCSI disk
[   19.295936]  sda: sda1 sda2 sda3 sda4
[   19.300532] sd 0:0:0:0: [sda] Attached SCSI disk
[   18.352938] rc.local[279]: PATH=3D/usr/local/sbin:/usr/local/bin:/usr/sb=
in:/usr
[   19.319882] random: ln: uninitialized urandom read (6 bytes read)
/bin:/sbin:/bin:/lkp/lkp/src/bin
[   19.329407] random: ln: uninitialized urandom read (6 bytes read)
LKP: HOSTNAME lkp-skl-d04, MAC 64:00:6a:30:92:35, kernel 5.10.0-02717-gc12b=
7a396ff7 2, serial console /dev/ttyS0
1;39mD-Bus Syste
[   19.399162] random: dbus-daemon: uninitialized urandom read (12 bytes re=
ad)
[   19.546054] ipmi device interface
[   19.557585] ipmi_si: IPMI System Interface driver
[   19.563283] ipmi_si: Unable to find any System Interface(s)
See 'systemctl status openipmi.service' for details.
[   20.547469] random: crng init done
[   24.120304] Kernel tests: Boot OK!
[   24.120307]=20
[   28.271889] install debs round one: dpkg -i --force-confdef --force-depe=
nds /opt/deb/ntpdate_1%3a4.2.8p12+dfsg-4_amd64.deb
[   28.271891]=20
[   28.285305] /opt/deb/libperl5.28_5.28.1-6+deb10u1_amd64.deb
[   28.285306]=20
[   28.293143] /opt/deb/perl_5.28.1-6+deb10u1_amd64.deb
[   28.293144]=20
[   28.300518] /opt/deb/perl-base_5.28.1-6+deb10u1_amd64.deb
[   28.300520]=20
[   28.308523] /opt/deb/perl-modules-5.28_5.28.1-6+deb10u1_all.deb
[   28.308525]=20
[   28.317074] /opt/deb/libpython3.7-minimal_3.7.3-2+deb10u2_amd64.deb
[   28.317076]=20
[   28.326117] /opt/deb/python3.7-minimal_3.7.3-2+deb10u2_amd64.deb
[   28.326118]=20
[   28.334425] /opt/deb/python3-minimal_3.7.3-1_amd64.deb
[   28.334427]=20
[   28.342121] /opt/deb/libpython3.7-stdlib_3.7.3-2+deb10u2_amd64.deb
[   28.342122]=20
[   28.350719] /opt/deb/python3.7_3.7.3-2+deb10u2_amd64.deb
[   28.350720]=20
[   28.358353] /opt/deb/libpython3-stdlib_3.7.3-1_amd64.deb
[   28.358354]=20
[   28.365882] /opt/deb/python3_3.7.3-1_amd64.deb
[   28.365883]=20
[   28.372875] /opt/deb/gtk-update-icon-cache_3.24.5-1_amd64.deb
[   28.372877]=20
[   28.381014] /opt/deb/libthai-data_0.1.28-2_all.deb
[   28.381015]=20
[   28.388096] /opt/deb/libdatrie1_0.2.12-2_amd64.deb
[   28.388097]=20
[   28.395320] /opt/deb/libavahi-common-data_0.7-4+b1_amd64.deb
[   28.395321]=20
[   28.403255] /opt/deb/libasound2-data_1.1.8-1_all.deb
[   28.403257]=20
[   28.410644] /opt/deb/ca-certificates-java_20190405_all.deb
[   28.410645]=20
[   28.418326] /opt/deb/libatomic1_8.3.0-6_amd64.deb
[   28.418327]=20
[   28.425316] /opt/deb/libquadmath0_8.3.0-6_amd64.deb
[   28.425317]=20
[   28.432426] /opt/deb/libgcc-8-dev_8.3.0-6_amd64.deb
[   28.432427]=20
[   28.439560] /opt/deb/lib32gcc1_1%3a8.3.0-6_amd64.deb
[   28.439561]=20
[   28.446705] /opt/deb/gcc-8_8.3.0-6_amd64.deb
[   28.446706]=20
[   28.453147] /opt/deb/gcc_4%3a8.3.0-1_amd64.deb
[   28.453148]=20
[   28.459762] /opt/deb/g++-8_8.3.0-6_amd64.deb
[   28.459763]=20
[   28.466209] /opt/deb/g++_4%3a8.3.0-1_amd64.deb
[   28.466210]=20
[   28.472966] /opt/deb/libatk1.0-data_2.30.0-2_all.deb
[   28.472967]=20
[   28.480182] /opt/deb/libatk1.0-0_2.30.0-2_amd64.deb
[   28.480183]=20
[   28.487381] /opt/deb/gir1.2-atk-1.0_2.30.0-2_amd64.deb
[   28.487382]=20
[   28.494745] /opt/deb/libdpkg-perl_1.19.7_all.deb
[   28.494747]=20
[   28.501850] /opt/deb/libglib2.0-data_2.58.3-2+deb10u2_all.deb
[   28.501851]=20
[   28.509843] /opt/deb/python3-lib2to3_3.7.3-1_all.deb
[   28.509844]=20
[   28.517112] /opt/deb/python3-distutils_3.7.3-1_all.deb
[   28.517114]=20
[   28.524588] /opt/deb/libatk1.0-dev_2.30.0-2_amd64.deb
[   28.524589]=20
[   28.532065] /opt/deb/libexpat1-dev_2.2.6-2+deb10u1_amd64.deb
[   28.532066]=20
[   28.540274] /opt/deb/libperl-dev_5.28.1-6+deb10u1_amd64.deb
[   28.540275]=20
[   28.548442] /opt/deb/libpython2.7_2.7.16-2+deb10u1_amd64.deb
[   28.548443]=20
[   28.556694] /opt/deb/libpython2.7-dev_2.7.16-2+deb10u1_amd64.deb
[   28.556696]=20
[   28.565056] /opt/deb/libpython2-dev_2.7.16-1_amd64.deb
[   28.565057]=20
[   28.572576] /opt/deb/libpython-dev_2.7.16-1_amd64.deb
[   28.572577]=20
[   28.579979] /opt/deb/patch_2.7.6-3+deb10u1_amd64.deb
[   28.579981]=20
[   28.587443] /opt/deb/python2.7-dev_2.7.16-2+deb10u1_amd64.deb
[   28.587449]=20
[   28.595500] /opt/deb/python2-dev_2.7.16-1_amd64.deb
[   28.595501]=20
[   28.602652] /opt/deb/python-dev_2.7.16-1_amd64.deb
[   28.602653]=20
[   28.609764] /opt/deb/gawk_1%3a4.2.1+dfsg-1_amd64.deb
[   28.609765]=20
[   28.617190] Selecting previously unselected package ntpdate.
[   28.617191]=20
[   28.625892] (Reading database ... 16553 files and directories currently =
installed.)
[   28.625894]=20
[   28.636406] Preparing to unpack .../ntpdate_1%3a4.2.8p12+dfsg-4_amd64.de=
b ...
[   28.636407]=20
[   28.645875] Unpacking ntpdate (1:4.2.8p12+dfsg-4) ...
[   28.645876]=20
[   28.653838] Preparing to unpack .../libperl5.28_5.28.1-6+deb10u1_amd64.d=
eb ...
[   28.653839]=20
[   28.663972] Unpacking libperl5.28:amd64 (5.28.1-6+deb10u1) over (5.28.1-=
6) ...
[   28.663973]=20
[   28.673994] Preparing to unpack .../perl_5.28.1-6+deb10u1_amd64.deb ...
[   28.673996]=20
[   28.683175] Unpacking perl (5.28.1-6+deb10u1) over (5.28.1-6) ...
[   28.683177]=20
[   28.692098] Preparing to unpack .../perl-base_5.28.1-6+deb10u1_amd64.deb=
 ...
[   28.692099]=20
[   28.701824] Unpacking perl-base (5.28.1-6+deb10u1) over (5.28.1-6) ...
[   28.701825]=20
[   28.711307] Preparing to unpack .../perl-modules-5.28_5.28.1-6+deb10u1_a=
ll.deb ...
[   28.711308]=20
[   28.721760] Unpacking perl-modules-5.28 (5.28.1-6+deb10u1) over (5.28.1-=
6) ...
[   28.721762]=20
[   28.731920] Selecting previously unselected package libpython3.7-minimal=
:amd64.
[   28.731922]=20
[   28.742701] Preparing to unpack .../libpython3.7-minimal_3.7.3-2+deb10u2=
_amd64.deb ...
[   28.742703]=20
[   28.753287] Unpacking libpython3.7-minimal:amd64 (3.7.3-2+deb10u2) ...
[   28.753289]=20
[   28.762500] Selecting previously unselected package python3.7-minimal.
[   28.762501]=20
[   28.771919] Preparing to unpack .../python3.7-minimal_3.7.3-2+deb10u2_am=
d64.deb ...
[   28.771920]=20
[   28.782030] Unpacking python3.7-minimal (3.7.3-2+deb10u2) ...
[   28.782031]=20
[   28.790376] Selecting previously unselected package python3-minimal.
[   28.790378]=20
[   28.799490] Preparing to unpack .../python3-minimal_3.7.3-1_amd64.deb ...
[   28.799504]=20
[   28.808613] Unpacking python3-minimal (3.7.3-1) ...
[   28.808614]=20
[   28.816440] Selecting previously unselected package libpython3.7-stdlib:=
amd64.
[   28.816442]=20
[   28.826672] Preparing to unpack .../libpython3.7-stdlib_3.7.3-2+deb10u2_=
amd64.deb ...
[   28.826673]=20
[   28.837112] Unpacking libpython3.7-stdlib:amd64 (3.7.3-2+deb10u2) ...
[   28.837113]=20
[   28.846225] Selecting previously unselected package python3.7.
[   28.846226]=20
[   28.854890] Preparing to unpack .../python3.7_3.7.3-2+deb10u2_amd64.deb =
=2E..
[   28.854891]=20
[   28.864213] Unpacking python3.7 (3.7.3-2+deb10u2) ...
[   28.864214]=20
[   28.872115] Selecting previously unselected package libpython3-stdlib:am=
d64.
[   28.872116]=20
[   28.881866] Preparing to unpack .../libpython3-stdlib_3.7.3-1_amd64.deb =
=2E..
[   28.881867]=20
[   28.891236] Unpacking libpython3-stdlib:amd64 (3.7.3-1) ...
[   28.891237]=20
[   28.899256] Selecting previously unselected package python3.
[   28.899257]=20
[   28.907666] Preparing to unpack .../deb/python3_3.7.3-1_amd64.deb ...
[   28.907668]=20
[   28.916231] Unpacking python3 (3.7.3-1) ...
[   28.916232]=20
[   28.923442] Selecting previously unselected package gtk-update-icon-cach=
e.
[   28.923462]=20
[   28.933234] Preparing to unpack .../gtk-update-icon-cache_3.24.5-1_amd64=
=2Edeb ...
[   28.933235]=20
[   29.496268] No diversion 'diversion of /usr/sbin/update-icon-caches to /=
usr/sbin/update-icon-caches.gtk2 by libgtk-3-bin', none removed.
[   29.496271]=20
[   30.558629] SGI XFS with ACLs, security attributes, realtime, scrub, rep=
air, quota, fatal assert, debug enabled
[   30.569814] XFS (sdb1): Deprecated V4 format (crc=3D0) will not be suppo=
rted after September 2030.
[   30.578694] XFS (sdb1): Mounting V4 Filesystem
[   30.609067] XFS (sdb1): Starting recovery (logdev: internal)
[   30.626586] No diversion 'diversion of /usr/share/man/man8/update-icon-c=
aches.8.gz to /usr/share/man/man8/update-icon-caches.gtk2.8.gz by libgtk-3-=
bin', none removed.
[   30.626588]=20
[   30.633550] XFS (sdb1): Ending recovery (logdev: internal)
[   30.642328] Unpacking gtk-update-icon-cache (3.24.5-1) ...
[   30.645413] xfs filesystem being mounted at /opt/rootfs supports timesta=
mps until 2038 (0x7fffffff)
[   30.648285]=20
[   30.665313] Selecting previously unselected package libthai-data.
[   30.665315]=20
[   30.674043] Preparing to unpack .../libthai-data_0.1.28-2_all.deb ...
[   30.674044]=20
[   30.682717] Unpacking libthai-data (0.1.28-2) ...
[   30.682718]=20
[   30.690035] Selecting previously unselected package libdatrie1:amd64.
[   30.690036]=20
[   30.699209] Preparing to unpack .../libdatrie1_0.2.12-2_amd64.deb ...
[   30.699210]=20
[   30.707936] Unpacking libdatrie1:amd64 (0.2.12-2) ...
[   30.707937]=20
[   30.715818] Selecting previously unselected package libavahi-common-data=
:amd64.
[   30.715820]=20
[   30.725885] Preparing to unpack .../libavahi-common-data_0.7-4+b1_amd64.=
deb ...
[   30.725886]=20
[   30.735685] Unpacking libavahi-common-data:amd64 (0.7-4+b1) ...
[   30.735686]=20
[   30.744170] Selecting previously unselected package libasound2-data.
[   30.744171]=20
[   30.753172] Preparing to unpack .../libasound2-data_1.1.8-1_all.deb ...
[   30.753173]=20
[   30.762034] Unpacking libasound2-data (1.1.8-1) ...
[   30.762035]=20
[   30.769628] Selecting previously unselected package ca-certificates-java.
[   30.769629]=20
[   30.779166] Preparing to unpack .../ca-certificates-java_20190405_all.de=
b ...
[   30.779167]=20
[   30.788661] Unpacking ca-certificates-java (20190405) ...
[   30.788662]=20
[   30.796654] Selecting previously unselected package libatomic1:amd64.
[   30.796655]=20
[   30.805674] Preparing to unpack .../libatomic1_8.3.0-6_amd64.deb ...
[   30.805675]=20
[   30.814243] Unpacking libatomic1:amd64 (8.3.0-6) ...
[   30.814244]=20
[   30.821851] Selecting previously unselected package libquadmath0:amd64.
[   30.821852]=20
[   30.831060] Preparing to unpack .../libquadmath0_8.3.0-6_amd64.deb ...
[   30.831061]=20
[   30.839892] Unpacking libquadmath0:amd64 (8.3.0-6) ...
[   30.839893]=20
[   30.847687] Selecting previously unselected package libgcc-8-dev:amd64.
[   30.847689]=20
[   30.856932] Preparing to unpack .../libgcc-8-dev_8.3.0-6_amd64.deb ...
[   30.856933]=20
[   30.865758] Unpacking libgcc-8-dev:amd64 (8.3.0-6) ...
[   30.865759]=20
[   30.873347] Selecting previously unselected package lib32gcc1.
[   30.873348]=20
[   30.881802] Preparing to unpack .../lib32gcc1_1%3a8.3.0-6_amd64.deb ...
[   30.881803]=20
[   30.890593] Unpacking lib32gcc1 (1:8.3.0-6) ...
[   30.890594]=20
[   30.897483] Selecting previously unselected package gcc-8.
[   30.897498]=20
[   30.905586] Preparing to unpack .../deb/gcc-8_8.3.0-6_amd64.deb ...
[   30.905587]=20
[   30.913951] Unpacking gcc-8 (8.3.0-6) ...
[   30.913952]=20
[   30.920304] Selecting previously unselected package gcc.
[   30.920305]=20
[   30.928231] Preparing to unpack .../deb/gcc_4%3a8.3.0-1_amd64.deb ...
[   30.928232]=20
[   30.936728] Unpacking gcc (4:8.3.0-1) ...
[   30.936729]=20
[   30.943125] Selecting previously unselected package g++-8.
[   30.943126]=20
[   30.951173] Preparing to unpack .../deb/g++-8_8.3.0-6_amd64.deb ...
[   30.951174]=20
[   30.959483] Unpacking g++-8 (8.3.0-6) ...
[   30.959484]=20
[   30.965900] Selecting previously unselected package g++.
[   30.965902]=20
[   30.973822] Preparing to unpack .../deb/g++_4%3a8.3.0-1_amd64.deb ...
[   30.973823]=20
[   30.982286] Unpacking g++ (4:8.3.0-1) ...
[   30.982287]=20
[   30.988850] Selecting previously unselected package libatk1.0-data.
[   30.988851]=20
[   30.997739] Preparing to unpack .../libatk1.0-data_2.30.0-2_all.deb ...
[   30.997740]=20
[   31.006624] Unpacking libatk1.0-data (2.30.0-2) ...
[   31.006625]=20
[   31.014138] Selecting previously unselected package libatk1.0-0:amd64.
[   31.014139]=20
[   31.023275] Preparing to unpack .../libatk1.0-0_2.30.0-2_amd64.deb ...
[   31.023276]=20
[   31.032103] Unpacking libatk1.0-0:amd64 (2.30.0-2) ...
[   31.032104]=20
[   31.039905] Selecting previously unselected package gir1.2-atk-1.0:amd64.
[   31.039906]=20
[   31.049356] Preparing to unpack .../gir1.2-atk-1.0_2.30.0-2_amd64.deb ...
[   31.049357]=20
[   31.058481] Unpacking gir1.2-atk-1.0:amd64 (2.30.0-2) ...
[   31.058482]=20
[   31.066400] Selecting previously unselected package libdpkg-perl.
[   31.066401]=20
[   31.075033] Preparing to unpack .../libdpkg-perl_1.19.7_all.deb ...
[   31.075034]=20
[   31.083423] Unpacking libdpkg-perl (1.19.7) ...
[   31.083424]=20
[   31.090568] Selecting previously unselected package libglib2.0-data.
[   31.090569]=20
[   31.099748] Preparing to unpack .../libglib2.0-data_2.58.3-2+deb10u2_all=
=2Edeb ...
[   31.099749]=20
[   31.109538] Unpacking libglib2.0-data (2.58.3-2+deb10u2) ...
[   31.109539]=20
[   31.117769] Selecting previously unselected package python3-lib2to3.
[   31.117770]=20
[   31.126736] Preparing to unpack .../python3-lib2to3_3.7.3-1_all.deb ...
[   31.126737]=20
[   31.135591] Unpacking python3-lib2to3 (3.7.3-1) ...
[   31.135592]=20
[   31.143079] Selecting previously unselected package python3-distutils.
[   31.143080]=20
[   31.152259] Preparing to unpack .../python3-distutils_3.7.3-1_all.deb ...
[   31.152260]=20
[   31.161268] Unpacking python3-distutils (3.7.3-1) ...
[   31.161269]=20
[   31.168982] Selecting previously unselected package libatk1.0-dev:amd64.
[   31.168983]=20
[   31.178331] Preparing to unpack .../libatk1.0-dev_2.30.0-2_amd64.deb ...
[   31.178332]=20
[   31.187317] Unpacking libatk1.0-dev:amd64 (2.30.0-2) ...
[   31.187318]=20
[   31.195276] Selecting previously unselected package libexpat1-dev:amd64.
[   31.195277]=20
[   31.204837] Preparing to unpack .../libexpat1-dev_2.2.6-2+deb10u1_amd64.=
deb ...
[   31.204838]=20
[   31.214634] Unpacking libexpat1-dev:amd64 (2.2.6-2+deb10u1) ...
[   31.214635]=20
[   31.223068] Selecting previously unselected package libperl-dev.
[   31.223069]=20
[   31.231865] Preparing to unpack .../libperl-dev_5.28.1-6+deb10u1_amd64.d=
eb ...
[   31.231867]=20
[   31.241386] Unpacking libperl-dev (5.28.1-6+deb10u1) ...
[   31.241387]=20
[   31.249308] Selecting previously unselected package libpython2.7:amd64.
[   31.249309]=20
[   31.258751] Preparing to unpack .../libpython2.7_2.7.16-2+deb10u1_amd64.=
deb ...
[   31.258752]=20
[   31.268535] Unpacking libpython2.7:amd64 (2.7.16-2+deb10u1) ...
[   31.268536]=20
[   31.277150] Selecting previously unselected package libpython2.7-dev:amd=
64.
[   31.277151]=20
[   31.286969] Preparing to unpack .../libpython2.7-dev_2.7.16-2+deb10u1_am=
d64.deb ...
[   31.286970]=20
[   31.297152] Unpacking libpython2.7-dev:amd64 (2.7.16-2+deb10u1) ...
[   31.297153]=20
[   31.306080] Selecting previously unselected package libpython2-dev:amd64.
[   31.306081]=20
[   31.315563] Preparing to unpack .../libpython2-dev_2.7.16-1_amd64.deb ...
[   31.315564]=20
[   31.324712] Unpacking libpython2-dev:amd64 (2.7.16-1) ...
[   31.324713]=20
[   31.332770] Selecting previously unselected package libpython-dev:amd64.
[   31.332771]=20
[   31.342136] Preparing to unpack .../libpython-dev_2.7.16-1_amd64.deb ...
[   31.342137]=20
[   31.351158] Unpacking libpython-dev:amd64 (2.7.16-1) ...
[   31.351159]=20
[   31.358854] Selecting previously unselected package patch.
[   31.358855]=20
[   31.366963] Preparing to unpack .../patch_2.7.6-3+deb10u1_amd64.deb ...
[   31.366964]=20
[   31.375815] Unpacking patch (2.7.6-3+deb10u1) ...
[   31.375816]=20
[   31.383086] Selecting previously unselected package python2.7-dev.
[   31.383087]=20
[   31.392049] Preparing to unpack .../python2.7-dev_2.7.16-2+deb10u1_amd64=
=2Edeb ...
[   31.392050]=20
[   31.401968] Unpacking python2.7-dev (2.7.16-2+deb10u1) ...
[   31.401969]=20
[   31.409959] Selecting previously unselected package python2-dev.
[   31.409961]=20
[   31.418627] Preparing to unpack .../python2-dev_2.7.16-1_amd64.deb ...
[   31.418628]=20
[   31.427355] Unpacking python2-dev (2.7.16-1) ...
[   31.427357]=20
[   31.435115] Selecting previously unselected package python-dev.
[   31.435117]=20
[   31.436005] x86/PAT: bmc-watchdog:2521 map pfn expected mapping type unc=
ached-minus for [mem 0x00000000-0x00000fff], got write-back
[   31.442394] Preparing to unpack .../python-dev_2.7.16-1_amd64.deb ...
[   31.442695] x86/PAT: bmc-watchdog:2521 map pfn expected mapping type unc=
ached-minus for [mem 0x872dd000-0x872ddfff], got write-back
[   31.454361]=20
[   31.461724] x86/PAT: bmc-watchdog:2521 map pfn expected mapping type unc=
ached-minus for [mem 0x872dd000-0x872ddfff], got write-back
[   31.473201] Unpacking python-dev (2.7.16-1) ...
[   31.473918] x86/PAT: bmc-watchdog:2521 map pfn expected mapping type unc=
ached-minus for [mem 0x00000000-0x00000fff], got write-back
[   31.485642]=20
[   31.486617] Selecting previously unselected package gawk.
[   31.490331] x86/PAT: bmc-watchdog:2521 map pfn expected mapping type unc=
ached-minus for [mem 0x872dd000-0x872ddfff], got write-back
[   31.501886]=20
[   31.503369] x86/PAT: bmc-watchdog:2521 map pfn expected mapping type unc=
ached-minus for [mem 0x872dd000-0x872ddfff], got write-back
[   31.509987] Preparing to unpack .../gawk_1%3a4.2.1+dfsg-1_amd64.deb ...
[   31.520536] x86/PAT: bmc-watchdog:2521 map pfn expected mapping type unc=
ached-minus for [mem 0x00000000-0x00000fff], got write-back
[   31.521981]=20
[   31.522757] Unpacking gawk (1:4.2.1+dfsg-1) ...
[   31.533888] x86/PAT: bmc-watchdog:2521 map pfn expected mapping type unc=
ached-minus for [mem 0x872dd000-0x872ddfff], got write-back
[   31.540296]=20
[   31.552039] x86/PAT: bmc-watchdog:2521 map pfn expected mapping type unc=
ached-minus for [mem 0x872dd000-0x872ddfff], got write-back
[   31.552064] x86/PAT: bmc-watchdog:2521 map pfn expected mapping type unc=
ached-minus for [mem 0x00000000-0x00000fff], got write-back
[   31.554382] Setting up ntpdate (1:4.2.8p12+dfsg-4) ...
[   31.558200] x86/PAT: bmc-watchdog:2521 map pfn expected mapping type unc=
ached-minus for [mem 0x872dd000-0x872ddfff], got write-back
[   31.569781]=20
[   31.571263] x86/PAT: bmc-watchdog:2521 map pfn expected mapping type unc=
ached-minus for [mem 0x872dd000-0x872ddfff], got write-back
[   31.583944] Setting up perl-base (5.28.1-6+deb10u1) ...
[   31.594750] x86/PAT: bmc-watchdog:2521 map pfn expected mapping type unc=
ached-minus for [mem 0x00000000-0x00000fff], got write-back
[   31.599848]=20
[   31.611748] x86/PAT: bmc-watchdog:2521 map pfn expected mapping type unc=
ached-minus for [mem 0x872dd000-0x872ddfff], got write-back
[   31.614151] Setting up perl-modules-5.28 (5.28.1-6+deb10u1) ...
[   31.624813] x86/PAT: bmc-watchdog:2521 map pfn expected mapping type unc=
ached-minus for [mem 0x872dd000-0x872ddfff], got write-back
[   31.630005]=20
[   31.641827] x86/PAT: bmc-watchdog:2521 map pfn expected mapping type unc=
ached-minus for [mem 0x00000000-0x00000fff], got write-back
[   31.644438] Setting up libpython3.7-minimal:amd64 (3.7.3-2+deb10u2) ...
[   31.655097] x86/PAT: bmc-watchdog:2521 map pfn expected mapping type unc=
ached-minus for [mem 0x872dd000-0x872ddfff], got write-back
[   31.660845]=20
[   31.672595] x86/PAT: bmc-watchdog:2521 map pfn expected mapping type unc=
ached-minus for [mem 0x872dd000-0x872ddfff], got write-back
[   31.672621] x86/PAT: bmc-watchdog:2521 map pfn expected mapping type unc=
ached-minus for [mem 0x00000000-0x00000fff], got write-back
[   31.675121] Setting up python3.7-minimal (3.7.3-2+deb10u2) ...
[   31.685970] x86/PAT: bmc-watchdog:2521 map pfn expected mapping type unc=
ached-minus for [mem 0x872dd000-0x872ddfff], got write-back
[   31.692423]=20
[   31.704172] x86/PAT: bmc-watchdog:2521 map pfn expected mapping type unc=
ached-minus for [mem 0x872dd000-0x872ddfff], got write-back
[   31.704182] x86/PAT: bmc-watchdog:2521 map pfn expected mapping type unc=
ached-minus for [mem 0x00000000-0x00000fff], got write-back
[   31.706474] Setting up python3-minimal (3.7.3-1) ...
[   31.717568] x86/PAT: bmc-watchdog:2521 map pfn expected mapping type unc=
ached-minus for [mem 0x872dd000-0x872ddfff], got write-back
[   31.729141]=20
[   31.734932] x86/PAT: bmc-watchdog:2521 map pfn expected mapping type unc=
ached-minus for [mem 0x872dd000-0x872ddfff], got write-back
[   31.747426] Setting up libthai-data (0.1.28-2) ...
[   31.748159] x86/PAT: bmc-watchdog:2521 map pfn expected mapping type unc=
ached-minus for [mem 0x00000000-0x00000fff], got write-back
[   31.759887]=20
[   31.760774] Setting up libdatrie1:amd64 (0.2.12-2) ...
[   31.771770] x86/PAT: bmc-watchdog:2521 map pfn expected mapping type unc=
ached-minus for [mem 0x872dd000-0x872ddfff], got write-back
[   31.776556]=20
[   31.777667] Setting up libavahi-common-data:amd64 (0.7-4+b1) ...
[   31.788298] x86/PAT: bmc-watchdog:2521 map pfn expected mapping type unc=
ached-minus for [mem 0x872dd000-0x872ddfff], got write-back
[   31.789773]=20
[   31.790624] Setting up libasound2-data (1.1.8-1) ...
[   31.801523] x86/PAT: bmc-watchdog:2521 map pfn expected mapping type unc=
ached-minus for [mem 0x00000000-0x00000fff], got write-back
[   31.806269]=20
[   31.807108] Setting up libatomic1:amd64 (8.3.0-6) ...
[   31.818141] x86/PAT: bmc-watchdog:2521 map pfn expected mapping type unc=
ached-minus for [mem 0x872dd000-0x872ddfff], got write-back
[   31.819499]=20
[   31.820386] Setting up libquadmath0:amd64 (8.3.0-6) ...
[   31.824686] x86/PAT: bmc-watchdog:2521 map pfn expected mapping type unc=
ached-minus for [mem 0x872dd000-0x872ddfff], got write-back
[   31.836349]=20
[   31.837173] Setting up libatk1.0-data (2.30.0-2) ...
[   31.837898] x86/PAT: bmc-watchdog:2521 map pfn expected mapping type unc=
ached-minus for [mem 0x00000000-0x00000fff], got write-back
[   31.843796]=20
[   31.844824] Setting up libglib2.0-data (2.58.3-2+deb10u2) ...
[   31.855670] x86/PAT: bmc-watchdog:2521 map pfn expected mapping type unc=
ached-minus for [mem 0x872dd000-0x872ddfff], got write-back
[   31.857012]=20
[   31.858110] Setting up libpython2.7:amd64 (2.7.16-2+deb10u1) ...
[   31.861944] x86/PAT: bmc-watchdog:2521 map pfn expected mapping type unc=
ached-minus for [mem 0x872dd000-0x872ddfff], got write-back
[   31.873801]=20
[   31.875193] x86/PAT: bmc-watchdog:2521 map pfn expected mapping type unc=
ached-minus for [mem 0x00000000-0x00000fff], got write-back
[   31.880984] Setting up patch (2.7.6-3+deb10u1) ...
[   31.892051] x86/PAT: bmc-watchdog:2521 map pfn expected mapping type unc=
ached-minus for [mem 0x872dd000-0x872ddfff], got write-back
[   31.893389]=20
[   31.894419] Setting up libperl5.28:amd64 (5.28.1-6+deb10u1) ...
[   31.898582] x86/PAT: bmc-watchdog:2521 map pfn expected mapping type unc=
ached-minus for [mem 0x872dd000-0x872ddfff], got write-back
[   31.910320]=20
[   31.911103] Setting up perl (5.28.1-6+deb10u1) ...
[   31.911815] x86/PAT: bmc-watchdog:2521 map pfn expected mapping type unc=
ached-minus for [mem 0x00000000-0x00000fff], got write-back
[   31.916739]=20
[   31.917494] Setting up libdpkg-perl (1.19.7) ...
[   31.928645] x86/PAT: bmc-watchdog:2521 map pfn expected mapping type unc=
ached-minus for [mem 0x872dd000-0x872ddfff], got write-back
[   31.929991]=20
[   31.930952] Setting up libperl-dev (5.28.1-6+deb10u1) ...
[   31.935710] x86/PAT: bmc-watchdog:2521 map pfn expected mapping type unc=
ached-minus for [mem 0x872dd000-0x872ddfff], got write-back
[   31.947442]=20
[   31.948606] Setting up libpython2.7-dev:amd64 (2.7.16-2+deb10u1) ...
[   31.948929] x86/PAT: bmc-watchdog:2521 map pfn expected mapping type unc=
ached-minus for [mem 0x00000000-0x00000fff], got write-back
[   31.954880]=20
[   31.955867] Setting up libpython2-dev:amd64 (2.7.16-1) ...
[   31.966756] x86/PAT: bmc-watchdog:2521 map pfn expected mapping type unc=
ached-minus for [mem 0x872dd000-0x872ddfff], got write-back
[   31.968098]=20
[   31.969031] Setting up libpython-dev:amd64 (2.7.16-1) ...
[   31.979841] x86/PAT: bmc-watchdog:2521 map pfn expected mapping type unc=
ached-minus for [mem 0x872dd000-0x872ddfff], got write-back
[   31.984591]=20
[   31.985584] Setting up python2.7-dev (2.7.16-2+deb10u1) ...
[   31.996342] x86/PAT: bmc-watchdog:2521 map pfn expected mapping type unc=
ached-minus for [mem 0x00000000-0x00000fff], got write-back
[   31.997808]=20
[   31.998605] Setting up python2-dev (2.7.16-1) ...
[   32.003829] x86/PAT: bmc-watchdog:2521 map pfn expected mapping type unc=
ached-minus for [mem 0x872dd000-0x872ddfff], got write-back
[   32.015421]=20
[   32.016160] Setting up python-dev (2.7.16-1) ...
[   32.016909] x86/PAT: bmc-watchdog:2521 map pfn expected mapping type unc=
ached-minus for [mem 0x872dd000-0x872ddfff], got write-back
[   32.021659]=20
[   32.022394] Setting up gawk (1:4.2.1+dfsg-1) ...
[   32.182550]=20
[   32.189805] Setting up libpython3.7-stdlib:amd64 (3.7.3-2+deb10u2) ...
[   32.189806]=20
[   32.198704] Setting up python3.7 (3.7.3-2+deb10u2) ...
[   32.198705]=20
[   32.206267] Setting up libpython3-stdlib:amd64 (3.7.3-1) ...
[   32.206269]=20
[   32.214010] Setting up python3 (3.7.3-1) ...
[   32.214011]=20
[   32.220647] running python rtupdate hooks for python3.7...
[   32.220648]=20
[   32.228494] Setting up gtk-update-icon-cache (3.24.5-1) ...
[   32.228496]=20
[   32.236401] Setting up ca-certificates-java (20190405) ...
[   32.236402]=20
[   32.244119] Adding debian:GeoTrust_Universal_CA.pem
[   32.244120]=20
[   32.251452] Adding debian:Staat_der_Nederlanden_EV_Root_CA.pem
[   32.251453]=20
[   32.259522] Adding debian:thawte_Primary_Root_CA.pem
[   32.259523]=20
[   32.266642] Adding debian:Amazon_Root_CA_2.pem
[   32.266643]=20
[   32.273606] Adding debian:OISTE_WISeKey_Global_Root_GC_CA.pem
[   32.273607]=20
[   32.281860] Adding debian:TWCA_Root_Certification_Authority.pem
[   32.281862]=20
[   32.290274] Adding debian:COMODO_RSA_Certification_Authority.pem
[   32.290275]=20
[   32.298521] Adding debian:SwissSign_Gold_CA_-_G2.pem
[   32.298522]=20
[   32.306194] Adding debian:Entrust.net_Premium_2048_Secure_Server_CA.pem
[   32.306195]=20
[   32.315169] Adding debian:DigiCert_Assured_ID_Root_G3.pem
[   32.315170]=20
[   32.323160] Adding debian:DigiCert_High_Assurance_EV_Root_CA.pem
[   32.323161]=20
[   32.331729] Adding debian:COMODO_Certification_Authority.pem
[   32.331730]=20
[   32.339598] Adding debian:SecureSign_RootCA11.pem
[   32.339599]=20
[   32.347331] Adding debian:VeriSign_Class_3_Public_Primary_Certification_=
Authority_-_G4.pem
[   32.347332]=20
[   32.358024] Adding debian:Security_Communication_RootCA2.pem
[   32.358025]=20
[   32.365905] Adding debian:QuoVadis_Root_CA_3_G3.pem
[   32.365907]=20
[   32.373156] Adding debian:Deutsche_Telekom_Root_CA_2.pem
[   32.373157]=20
[   32.380614] Adding debian:SecureTrust_CA.pem
[   32.380615]=20
[   32.387191] Adding debian:AffirmTrust_Commercial.pem
[   32.387192]=20
[   32.394241] Adding debian:Izenpe.com.pem
[   32.394243]=20
[   32.400558] Adding debian:T-TeleSec_GlobalRoot_Class_2.pem
[   32.400559]=20
[   32.409107] Adding debian:Verisign_Class_3_Public_Primary_Certification_=
Authority_-_G3.pem
[   32.409108]=20
[   32.419545] Adding debian:Trustis_FPS_Root_CA.pem
[   32.419546]=20
[   32.427147] Adding debian:Hellenic_Academic_and_Research_Institutions_Ro=
otCA_2011.pem
[   32.427148]=20
[   32.437372] Adding debian:SwissSign_Silver_CA_-_G2.pem
[   32.437374]=20
[   32.444731] Adding debian:QuoVadis_Root_CA.pem
[   32.444732]=20
[   32.452151] Adding debian:TUBITAK_Kamu_SM_SSL_Kok_Sertifikasi_-_Surum_1.=
pem
[   32.452153]=20
[   32.461745] Adding debian:thawte_Primary_Root_CA_-_G3.pem
[   32.461747]=20
[   32.469398] Adding debian:AC_RAIZ_FNMT-RCM.pem
[   32.469400]=20
[   32.476363] Adding debian:thawte_Primary_Root_CA_-_G2.pem
[   32.476365]=20
[   32.484219] Adding debian:Comodo_AAA_Services_root.pem
[   32.484221]=20
[   32.492498] Adding debian:Hellenic_Academic_and_Research_Institutions_Ro=
otCA_2015.pem
[   32.492499]=20
[   32.503019] Adding debian:Entrust_Root_Certification_Authority.pem
[   32.503021]=20
[   32.511643] Adding debian:Cybertrust_Global_Root.pem
[   32.511645]=20
[   32.519190] Adding debian:Security_Communication_Root_CA.pem
[   32.519192]=20
[   32.527218] Adding debian:GlobalSign_Root_CA.pem
[   32.527220]=20
[   32.534870] Adding debian:Starfield_Services_Root_Certificate_Authority_=
-_G2.pem
[   32.534872]=20
[   32.544742] Adding debian:IdenTrust_Commercial_Root_CA_1.pem
[   32.544744]=20
[   32.553279] Adding debian:GeoTrust_Primary_Certification_Authority_-_G3.=
pem
[   32.553281]=20
[   32.562527] Adding debian:AffirmTrust_Networking.pem
[   32.562528]=20
[   32.569979] Adding debian:T-TeleSec_GlobalRoot_Class_3.pem
[   32.569981]=20
[   32.577671] Adding debian:Amazon_Root_CA_4.pem
[   32.577672]=20
[   32.584163] Adding debian:Taiwan_GRCA.pem
[   32.584164]=20
[   32.590327] Adding debian:Amazon_Root_CA_1.pem
[   32.590329]=20
[   32.597518] Adding debian:Entrust_Root_Certification_Authority_-_G2.pem
[   32.597520]=20
[   32.606518] Adding debian:Baltimore_CyberTrust_Root.pem
[   32.606520]=20
[   32.613979] Adding debian:QuoVadis_Root_CA_2.pem
[   32.613981]=20
[   32.621491] Adding debian:Entrust_Root_Certification_Authority_-_EC1.pem
[   32.621492]=20
[   32.630955] Adding debian:SSL.com_EV_Root_Certification_Authority_ECC.pem
[   32.630957]=20
[   32.640165] Adding debian:Certum_Trusted_Network_CA.pem
[   32.640167]=20
[   32.647649] Adding debian:SZAFIR_ROOT_CA2.pem
[   32.647650]=20
[   32.654397] Adding debian:GlobalSign_Root_CA_-_R6.pem
[   32.654399]=20
[   32.662173] Adding debian:SSL.com_Root_Certification_Authority_ECC.pem
[   32.662175]=20
[   32.671186] Adding debian:EE_Certification_Centre_Root_CA.pem
[   32.671187]=20
[   32.679191] Adding debian:AffirmTrust_Premium.pem
[   32.679193]=20
[   32.686026] Adding debian:DST_Root_CA_X3.pem
[   32.686027]=20
[   32.692680] Adding debian:GlobalSign_Root_CA_-_R2.pem
[   32.692682]=20
[   32.700149] Adding debian:Certum_Trusted_Network_CA_2.pem
[   32.700150]=20
[   32.707809] Adding debian:Atos_TrustedRoot_2011.pem
[   32.707810]=20
[   32.715419] Adding debian:Starfield_Root_Certificate_Authority_-_G2.pem
[   32.715421]=20
[   32.724750] Adding debian:Go_Daddy_Root_Certificate_Authority_-_G2.pem
[   32.724752]=20
[   32.733560] Adding debian:TrustCor_RootCert_CA-1.pem
[   32.733561]=20
[   32.741068] Adding debian:OISTE_WISeKey_Global_Root_GB_CA.pem
[   32.741070]=20
[   32.749351] Adding debian:OISTE_WISeKey_Global_Root_GA_CA.pem
[   32.749353]=20
[   32.757382] Adding debian:TrustCor_RootCert_CA-2.pem
[   32.757384]=20
[   32.764459] Adding debian:Certigna.pem
[   32.764461]=20
[   32.770429] Adding debian:TWCA_Global_Root_CA.pem
[   32.770431]=20
[   32.777380] Adding debian:Certinomis_-_Root_CA.pem
[   32.777381]=20
[   32.784286] Adding debian:TrustCor_ECA-1.pem
[   32.784287]=20
[   32.791059] Adding debian:D-TRUST_Root_Class_3_CA_2_2009.pem
[   32.791061]=20
[   32.799277] Adding debian:IdenTrust_Public_Sector_Root_CA_1.pem
[   32.799278]=20
[   32.807701] Adding debian:Chambers_of_Commerce_Root_-_2008.pem
[   32.807702]=20
[   32.815872] Adding debian:AffirmTrust_Premium_ECC.pem
[   32.815873]=20
[   32.823303] Adding debian:QuoVadis_Root_CA_2_G3.pem
[   32.823305]=20
[   32.830479] Adding debian:DigiCert_Global_Root_CA.pem
[   32.830480]=20
[   32.837750] Adding debian:QuoVadis_Root_CA_3.pem
[   32.837751]=20
[   32.844889] Adding debian:Global_Chambersign_Root_-_2008.pem
[   32.844890]=20
[   32.852840] Adding debian:Sonera_Class_2_Root_CA.pem
[   32.852841]=20
[   32.860226] Adding debian:Buypass_Class_2_Root_CA.pem
[   32.860227]=20
[   32.867866] Adding debian:ePKI_Root_Certification_Authority.pem
[   32.867868]=20
[   32.876034] Adding debian:GeoTrust_Global_CA.pem
[   32.876036]=20
[   32.883009] Adding debian:Buypass_Class_3_Root_CA.pem
[   32.883010]=20
[   32.890580] Adding debian:GlobalSign_ECC_Root_CA_-_R4.pem
[   32.890582]=20
[   32.898182] Adding debian:CA_Disig_Root_R2.pem
[   32.898184]=20
[   32.904920] Adding debian:Starfield_Class_2_CA.pem
[   32.904922]=20
[   32.911993] Adding debian:XRamp_Global_CA_Root.pem
[   32.911994]=20
[   32.918978] Adding debian:certSIGN_ROOT_CA.pem
[   32.918979]=20
[   32.926318] Adding debian:VeriSign_Universal_Root_Certification_Authorit=
y.pem
[   32.926319]=20
[   32.935860] Adding debian:GlobalSign_ECC_Root_CA_-_R5.pem
[   32.935862]=20
[   32.943488] Adding debian:Secure_Global_CA.pem
[   32.943490]=20
[   32.950197] Adding debian:Go_Daddy_Class_2_CA.pem
[   32.950198]=20
[   32.957465] Adding debian:D-TRUST_Root_Class_3_CA_2_EV_2009.pem
[   32.957467]=20
[   32.965783] Adding debian:GDCA_TrustAUTH_R5_ROOT.pem
[   32.965785]=20
[   32.973479] Adding debian:Network_Solutions_Certificate_Authority.pem
[   32.973481]=20
[   32.982252] Adding debian:DigiCert_Global_Root_G3.pem
[   32.982254]=20
[   32.990044] Adding debian:USERTrust_ECC_Certification_Authority.pem
[   32.990046]=20
[   32.998489] Adding debian:Amazon_Root_CA_3.pem
[   32.998490]=20
[   33.005330] Adding debian:DigiCert_Trusted_Root_G4.pem
[   33.005331]=20
[   33.013085] Adding debian:COMODO_ECC_Certification_Authority.pem
[   33.013087]=20
[   33.021589] Adding debian:AddTrust_External_Root.pem
[   33.021590]=20
[   33.028897] Adding debian:DigiCert_Global_Root_G2.pem
[   33.028899]=20
[   33.036025] Adding debian:ISRG_Root_X1.pem
[   33.036027]=20
[   33.042886] Adding debian:GeoTrust_Primary_Certification_Authority_-_G2.=
pem
[   33.042887]=20
[   33.051891] Adding debian:ACCVRAIZ1.pem
[   33.051892]=20
[   33.058182] Adding debian:Microsec_e-Szigno_Root_CA_2009.pem
[   33.058184]=20
[   33.066401] Adding debian:Actalis_Authentication_Root_CA.pem
[   33.066402]=20
[   33.074484] Adding debian:DigiCert_Assured_ID_Root_CA.pem
[   33.074485]=20
[   33.082222] Adding debian:TeliaSonera_Root_CA_v1.pem
[   33.082223]=20
[   33.419896] error: dpkg -i /opt/deb/python3_3.7.3-1_amd64.deb failed.
[   33.419899]=20
[   33.520696]=20
[   33.530146] Adding debian:DigiCert_Assured_ID_Root_G2.pem
[   33.530148]=20
[   33.538224] Adding debian:E-Tugra_Certification_Authority.pem
[   33.538226]=20
[   33.547415] Adding debian:VeriSign_Class_3_Public_Primary_Certification_=
Authority_-_G5.pem
[   33.547418]=20
[   33.558300] Adding debian:USERTrust_RSA_Certification_Authority.pem
[   33.558302]=20
[   33.567207] Adding debian:Staat_der_Nederlanden_Root_CA_-_G2.pem
[   33.567209]=20
[   33.575719] Adding debian:Certplus_Class_2_Primary_CA.pem
[   33.575720]=20
[   33.584315] Adding debian:Hellenic_Academic_and_Research_Institutions_EC=
C_RootCA_2015.pem
[   33.584317]=20
[   33.595323] Adding debian:SSL.com_EV_Root_Certification_Authority_RSA_R2=
=2Epem
[   33.595325]=20
[   33.604723] Adding debian:Hongkong_Post_Root_CA_1.pem
[   33.604724]=20
[   33.611891] Adding debian:CFCA_EV_ROOT.pem
[   33.611892]=20
[   33.619081] Adding debian:Autoridad_de_Certificacion_Firmaprofesional_CI=
F_A62634068.pem
[   33.619083]=20
[   33.629503] Adding debian:QuoVadis_Root_CA_1_G3.pem
[   33.629505]=20
[   33.636682] Adding debian:LuxTrust_Global_Root_2.pem
[   33.636684]=20
[   33.644308] Adding debian:SSL.com_Root_Certification_Authority_RSA.pem
[   33.644309]=20
[   33.653189] Adding debian:GeoTrust_Universal_CA_2.pem
[   33.653191]=20
[   33.660939] Adding debian:Staat_der_Nederlanden_Root_CA_-_G3.pem
[   33.660941]=20
[   33.669253] Adding debian:GlobalSign_Root_CA_-_R3.pem
[   33.669255]=20
[   33.676958] Adding debian:GeoTrust_Primary_Certification_Authority.pem
[   33.676960]=20
[   33.685578] Adding debian:EC-ACC.pem
[   33.685580]=20
[   33.690778] done.
[   33.690780]=20
[   33.695124] Setting up libgcc-8-dev:amd64 (8.3.0-6) ...
[   33.695126]=20
[   33.702592] Setting up lib32gcc1 (1:8.3.0-6) ...
[   33.702593]=20
[   33.709379] Setting up gcc-8 (8.3.0-6) ...
[   33.709381]=20
[   33.715614] Setting up gcc (4:8.3.0-1) ...
[   33.715616]=20
[   33.721820] Setting up g++-8 (8.3.0-6) ...
[   33.721821]=20
[   33.728021] Setting up g++ (4:8.3.0-1) ...
[   33.728023]=20
[   33.735398] update-alternatives: using /usr/bin/g++ to provide /usr/bin/=
c++ (c++) in auto mode
[   33.735400]=20
[   33.746395] Setting up libatk1.0-0:amd64 (2.30.0-2) ...
[   33.746396]=20
[   33.754084] Setting up gir1.2-atk-1.0:amd64 (2.30.0-2) ...
[   33.754086]=20
[   33.761907] Setting up python3-lib2to3 (3.7.3-1) ...
[   33.761909]=20
[   33.769305] Setting up python3-distutils (3.7.3-1) ...
[   33.769307]=20
[   33.777004] Setting up libatk1.0-dev:amd64 (2.30.0-2) ...
[   33.777006]=20
[   33.784991] Setting up libexpat1-dev:amd64 (2.2.6-2+deb10u1) ...
[   33.784993]=20
[   33.793394] Processing triggers for libc-bin (2.28-10) ...
[   33.793396]=20
[   33.801361] Processing triggers for mime-support (3.62) ...
[   33.801362]=20
[   33.809582] Processing triggers for ca-certificates (20190110) ...
[   33.809584]=20
[   33.818111] Updating certificates in /etc/ssl/certs...
[   33.818113]=20
[   33.825281] 0 added, 0 removed; done.
[   33.825283]=20
[   33.831499] Running hooks in /etc/ca-certificates/update.d...
[   33.831501]=20
[   33.838738]=20
[   33.838739]=20
[   33.841849] done.
[   33.841851]=20
[   33.845378] done.
[   33.845380]=20
[   33.851049] dpkg: regarding .../python3-minimal_3.7.3-1_amd64.deb contai=
ning python3-minimal, pre-dependency problem:
[   33.851050]=20
[   33.864437]  python3-minimal pre-depends on python3.7-minimal (>=3D 3.7.=
3-1~)
[   33.864439]=20
[   33.874223]   python3.7-minimal is unpacked, but has never been configur=
ed.
[   33.874225]=20
[   33.882673]=20
[   33.882674]=20
[   33.886632] dpkg: warning: ignoring pre-dependency problem!
[   33.886634]=20
[   33.895720] dpkg: regarding .../deb/python3_3.7.3-1_amd64.deb containing=
 python3, pre-dependency problem:
[   33.895722]=20
[   33.907854]  python3 pre-depends on python3-minimal (=3D 3.7.3-1)
[   33.907856]=20
[   33.916522]   python3-minimal is unpacked, but has never been configured.
[   33.916524]=20
[   33.924809]=20
[   33.924811]=20
[   33.928820] dpkg: warning: ignoring pre-dependency problem!
[   33.928821]=20
[   33.937878] dpkg: regarding .../gawk_1%3a4.2.1+dfsg-1_amd64.deb containi=
ng gawk, pre-dependency problem:
[   33.937880]=20
[   33.949688]  gawk pre-depends on libmpfr6 (>=3D 3.1.3)
[   33.949689]=20
[   33.956757]   libmpfr6 is not installed.
[   33.956759]=20
[   33.962195]=20
[   33.962196]=20
[   33.966202] dpkg: warning: ignoring pre-dependency problem!
[   33.966205]=20
[   33.975285] dpkg: regarding .../gawk_1%3a4.2.1+dfsg-1_amd64.deb containi=
ng gawk, pre-dependency problem:
[   33.975287]=20
[   33.987118]  gawk pre-depends on libsigsegv2 (>=3D 2.9)
[   33.987120]=20
[   33.994390]   libsigsegv2 is not installed.
[   33.994392]=20
[   34.000051]=20
[   34.000052]=20
[   34.004084] dpkg: warning: ignoring pre-dependency problem!
[   34.004085]=20
[   34.012872] dpkg: libperl-dev: dependency problems, but configuring anyw=
ay as you requested:
[   34.012874]=20
[   34.024030]  libperl-dev depends on libc6-dev | libc-dev; however:
[   34.024032]=20
[   34.032510]   Package libc6-dev is not installed.
[   34.032512]=20
[   34.039558]   Package libc-dev is not installed.
[   34.039559]=20
[   34.045664]=20
[   34.045665]=20
[   34.050676] dpkg: libpython2.7-dev:amd64: dependency problems, but confi=
guring anyway as you requested:
[   34.050678]=20
[   34.062599]  libpython2.7-dev:amd64 depends on libexpat1-dev.
[   34.062600]=20
[   34.069851]=20
[   34.069852]=20
[   34.074655] dpkg: python2.7-dev: dependency problems, but configuring an=
yway as you requested:
[   34.074656]=20
[   34.085617]  python2.7-dev depends on libexpat1-dev.
[   34.085618]=20
[   34.092067]=20
[   34.092069]=20
[   34.096709] dpkg: gawk: dependency problems, but configuring anyway as y=
ou requested:
[   34.096711]=20
[   34.107078]  gawk depends on libmpfr6 (>=3D 3.1.3); however:
[   34.107080]=20
[   34.114844]   Package libmpfr6 is not installed.
[   34.114846]=20
[   34.121931]  gawk depends on libsigsegv2 (>=3D 2.9); however:
[   34.121932]=20
[   34.129849]   Package libsigsegv2 is not installed.
[   34.129851]=20
[   34.136204]=20
[   34.136205]=20
[   34.141318] dpkg: libpython3.7-stdlib:amd64: dependency problems, but co=
nfiguring anyway as you requested:
[   34.141320]=20
[   34.153749]  libpython3.7-stdlib:amd64 depends on libmpdec2; however:
[   34.153750]=20
[   34.162427]   Package libmpdec2 is not installed.
[   34.162429]=20
[   34.168648]=20
[   34.168649]=20
[   34.172850] dpkg-query: package 'libglib2.0-dev-bin' is not installed
[   34.172852]=20
[   34.182338] Use dpkg --contents (=3D dpkg-deb --contents) to list archiv=
e files contents.
[   34.182340]=20
[   34.192509] Traceback (most recent call last):
[   34.192511]=20
[   34.199642]   File "/usr/bin/py3clean", line 210, in <module>
[   34.199643]=20
[   34.207074]     main()
[   34.207075]=20
[   34.211955]   File "/usr/bin/py3clean", line 196, in main
[   34.211956]=20
[   34.219924]     pfiles =3D set(dpf.from_package(options.package))
[   34.219926]=20
[   34.228894]   File "/usr/share/python3/debpython/files.py", line 53, in =
=66rom_package
[   34.228896]=20
[   34.239528]     raise Exception("cannot get content of %s" % package_nam=
e)
[   34.239530]=20
[   34.248955] Exception: cannot get content of libglib2.0-dev-bin
[   34.248956]=20
[   34.257447] error running python rtupdate hook libglib2.0-dev-bin
[   34.257448]=20
[   34.266045] dpkg: error processing package python3 (--install):
[   34.266046]=20
[   34.275401]  installed python3 package post-installation script subproce=
ss returned error exit status 4
[   34.275403]=20
[   34.288200] dpkg: gtk-update-icon-cache: dependency problems, but config=
uring anyway as you requested:
[   34.288201]=20
[   34.300646]  gtk-update-icon-cache depends on libgdk-pixbuf2.0-0 (>=3D 2=
=2E30.0); however:
[   34.300648]=20
[   34.310992]   Package libgdk-pixbuf2.0-0 is not installed.
[   34.310994]=20
[   34.319454]  gtk-update-icon-cache depends on libglib2.0-0 (>=3D 2.55.2)=
; however:
[   34.319455]=20
[   34.329211]   Package libglib2.0-0 is not installed.
[   34.329212]=20
[   34.335669]=20
[   34.335670]=20
[   34.340597] dpkg: ca-certificates-java: dependency problems, but configu=
ring anyway as you requested:
[   34.340599]=20
[   34.353225]  ca-certificates-java depends on default-jre-headless | java=
8-runtime-headless; however:
[   34.353227]=20
[   34.364791]   Package default-jre-headless is not installed.
[   34.364792]=20
[   34.372961]   Package java8-runtime-headless is not installed.
[   34.372962]=20
[   34.381670]  ca-certificates-java depends on libnss3 (>=3D 3.12.10-2~); =
however:
[   34.381672]=20
[   34.391090]   Package libnss3 is not installed.
[   34.391091]=20
[   34.397090]=20
[   34.397092]=20
[   34.401939] head: cannot open '/etc/ssl/certs/java/cacerts' for reading:=
 No such file or directory
[   34.401940]=20
[   34.413300] dpkg-query: package 'libnss3' is not installed
[   34.413302]=20
[   34.421936] Use dpkg --contents (=3D dpkg-deb --contents) to list archiv=
e files contents.
[   34.421938]=20
[   34.433245] dpkg: libgcc-8-dev:amd64: dependency problems, but configuri=
ng anyway as you requested:
[   34.433246]=20
[   34.445075]  libgcc-8-dev:amd64 depends on libgomp1 (>=3D 8.3.0-6); howe=
ver:
[   34.445076]=20
[   34.454199]   Package libgomp1 is not installed.
[   34.454200]=20
[   34.461599]  libgcc-8-dev:amd64 depends on libitm1 (>=3D 8.3.0-6); howev=
er:
[   34.461601]=20
[   34.470588]   Package libitm1 is not installed.
[   34.470589]=20
[   34.477932]  libgcc-8-dev:amd64 depends on libasan5 (>=3D 8.3.0-6); howe=
ver:
[   34.477934]=20
[   34.487054]   Package libasan5 is not installed.
[   34.487056]=20
[   34.494583]  libgcc-8-dev:amd64 depends on liblsan0 (>=3D 8.3.0-6); howe=
ver:
[   34.494584]=20
[   34.503678]   Package liblsan0 is not installed.
[   34.503679]=20
[   34.511361]  libgcc-8-dev:amd64 depends on libtsan0 (>=3D 8.3.0-6); howe=
ver:
[   34.511363]=20
[   34.520431]   Package libtsan0 is not installed.
[   34.520433]=20
[   34.527854]  libgcc-8-dev:amd64 depends on libubsan1 (>=3D 8.3.0-6); how=
ever:
[   34.527856]=20
[   34.537102]   Package libubsan1 is not installed.
[   34.537103]=20
[   34.544722]  libgcc-8-dev:amd64 depends on libmpx2 (>=3D 8.3.0-6); howev=
er:
[   34.544724]=20
[   34.553719]   Package libmpx2 is not installed.
[   34.553720]=20
[   34.559743]=20
[   34.559744]=20
[   34.564398] dpkg: lib32gcc1: dependency problems, but configuring anyway=
 as you requested:
[   34.564400]=20
[   34.575214]  lib32gcc1 depends on libc6-i386 (>=3D 2.2.4); however:
[   34.575216]=20
[   34.583562]   Package libc6-i386 is not installed.
[   34.583564]=20
[   34.589829]=20
[   34.589830]=20
[   34.594481] dpkg: gcc-8: dependency problems, but configuring anyway as =
you requested:
[   34.594482]=20
[   34.604833]  gcc-8 depends on cpp-8 (=3D 8.3.0-6); however:
[   34.604834]=20
[   34.612412]   Package cpp-8 is not installed.
[   34.612414]=20
[   34.619286]  gcc-8 depends on libcc1-0 (>=3D 8.3.0-6); however:
[   34.619288]=20
[   34.627240]   Package libcc1-0 is not installed.
[   34.627242]=20
[   34.634341]  gcc-8 depends on binutils (>=3D 2.31.1); however:
[   34.634343]=20
[   34.642210]   Package binutils is not installed.
[   34.642212]=20
[   34.649370]  gcc-8 depends on libisl19 (>=3D 0.15); however:
[   34.649371]=20
[   34.657136]   Package libisl19 is not installed.
[   34.657138]=20
[   34.663966]  gcc-8 depends on libmpc3; however:
[   34.663967]=20
[   34.670701]   Package libmpc3 is not installed.
[   34.670702]=20
[   34.677677]  gcc-8 depends on libmpfr6 (>=3D 3.1.3); however:
[   34.677678]=20
[   34.685427]   Package libmpfr6 is not installed.
[   34.685429]=20
[   34.691519]=20
[   34.691520]=20
[   34.696056] dpkg: gcc: dependency problems, but configuring anyway as yo=
u requested:
[   34.696058]=20
[   34.706239]  gcc depends on cpp (=3D 4:8.3.0-1); however:
[   34.706241]=20
[   34.713562]   Package cpp is not installed.
[   34.713564]=20
[   34.719225]=20
[   34.719226]=20
[   34.723835] dpkg: g++-8: dependency problems, but configuring anyway as =
you requested:
[   34.723837]=20
[   34.734358]  g++-8 depends on libstdc++-8-dev (=3D 8.3.0-6); however:
[   34.734360]=20
[   34.743006]   Package libstdc++-8-dev is not installed.
[   34.743008]=20
[   34.750675]  g++-8 depends on libisl19 (>=3D 0.15); however:
[   34.750677]=20
[   34.758375]   Package libisl19 is not installed.
[   34.758377]=20
[   34.765174]  g++-8 depends on libmpc3; however:
[   34.765176]=20
[   34.772013]   Package libmpc3 is not installed.
[   34.772015]=20
[   34.779090]  g++-8 depends on libmpfr6 (>=3D 3.1.3); however:
[   34.779092]=20
[   34.786985]   Package libmpfr6 is not installed.
[   34.786986]=20
[   34.793088]=20
[   34.793089]=20
[   34.797598] dpkg: g++: dependency problems, but configuring anyway as yo=
u requested:
[   34.797600]=20
[   34.807926]  g++ depends on cpp (=3D 4:8.3.0-1); however:
[   34.807928]=20
[   34.815319]   Package cpp is not installed.
[   34.815321]=20
[   34.820998]=20
[   34.820999]=20
[   34.825831] dpkg: libatk1.0-0:amd64: dependency problems, but configurin=
g anyway as you requested:
[   34.825833]=20
[   34.837670]  libatk1.0-0:amd64 depends on libglib2.0-0 (>=3D 2.55.2); ho=
wever:
[   34.837672]=20
[   34.847017]   Package libglib2.0-0 is not installed.
[   34.847018]=20
[   34.853460]=20
[   34.853461]=20
[   34.858491] dpkg: gir1.2-atk-1.0:amd64: dependency problems, but configu=
ring anyway as you requested:
[   34.858492]=20
[   34.870738]  gir1.2-atk-1.0:amd64 depends on gir1.2-glib-2.0 (>=3D 1.32.=
0); however:
[   34.870740]=20
[   34.880702]   Package gir1.2-glib-2.0 is not installed.
[   34.880705]=20
[   34.887409]=20
[   34.887411]=20
[   34.892218] dpkg: python3-lib2to3: dependency problems, but configuring =
anyway as you requested:
[   34.892220]=20
[   34.903721]  python3-lib2to3 depends on python3 (>=3D 3.7.1-1~); however:
[   34.903737]=20
[   34.912672]   Package python3 is not configured yet.
[   34.912674]=20
[   34.920320]  python3-lib2to3 depends on python3 (<< 3.8); however:
[   34.920322]=20
[   34.928807]   Package python3 is not configured yet.
[   34.928808]=20
[   34.935242]=20
[   34.935243]=20
[   34.940088] dpkg: python3-distutils: dependency problems, but configurin=
g anyway as you requested:
[   34.940090]=20
[   34.951957]  python3-distutils depends on python3 (>=3D 3.7.1-1~); howev=
er:
[   34.951958]=20
[   34.961118]   Package python3 is not configured yet.
[   34.961120]=20
[   34.968727]  python3-distutils depends on python3 (<< 3.8); however:
[   34.968729]=20
[   34.977378]   Package python3 is not configured yet.
[   34.977380]=20
[   34.983856]=20
[   34.983858]=20
[   34.988871] dpkg: libatk1.0-dev:amd64: dependency problems, but configur=
ing anyway as you requested:
[   34.988873]=20
[   35.000600]  libatk1.0-dev:amd64 depends on pkg-config; however:
[   35.000602]=20
[   35.008867]   Package pkg-config is not installed.
[   35.008868]=20
[   35.016744]  libatk1.0-dev:amd64 depends on libglib2.0-dev (>=3D 2.31.2)=
; however:
[   35.016746]=20
[   35.026499]   Package libglib2.0-dev is not installed.
[   35.026500]=20
[   35.033124]=20
[   35.033125]=20
[   35.037971] dpkg: libexpat1-dev:amd64: dependency problems, but configur=
ing anyway as you requested:
[   35.037974]=20
[   35.050050]  libexpat1-dev:amd64 depends on libc6-dev | libc-dev; howeve=
r:
[   35.050053]=20
[   35.059188]   Package libc6-dev is not installed.
[   35.059190]=20
[   35.066240]   Package libc-dev is not installed.
[   35.066242]=20
[   35.072356]=20
[   35.072357]=20
[   35.076334] dpkg-query: package 'libnss3' is not installed
[   35.076336]=20
[   35.084880] Use dpkg --contents (=3D dpkg-deb --contents) to list archiv=
e files contents.
[   35.084881]=20
[   35.095286] dpkg-query: package 'libnss3' is not installed
[   35.095288]=20
[   35.103842] Use dpkg --contents (=3D dpkg-deb --contents) to list archiv=
e files contents.
[   35.103844]=20
[   35.114212] Errors were encountered while processing:
[   35.114214]=20
[   35.120919]  python3
[   35.120920]=20
[   35.125255] handle /opt/deb/keep-deb.hw...
[   35.125257]=20
[   35.133432] install debs round two: dpkg -i --force-confdef --force-depe=
nds /opt/deb/ntpdate_1%3a4.2.8p12+dfsg-4_amd64.deb
[   35.133433]=20
[   35.147672] (Reading database ... 18840 files and directories currently =
installed.)
[   35.147673]=20
[   35.158218] Preparing to unpack .../ntpdate_1%3a4.2.8p12+dfsg-4_amd64.de=
b ...
[   35.158220]=20
[   35.168272] Unpacking ntpdate (1:4.2.8p12+dfsg-4) over (1:4.2.8p12+dfsg-=
4) ...
[   35.168274]=20
[   35.177885] Setting up ntpdate (1:4.2.8p12+dfsg-4) ...
[   35.177887]=20
[   35.185481] handle /opt/deb/keep-deb.perf-sanity-tests...
[   35.185482]=20
[   35.194737] install debs round two: dpkg -i --force-confdef --force-depe=
nds /opt/deb/libperl5.28_5.28.1-6+deb10u1_amd64.deb
[   35.194738]=20
[   35.208946] (Reading database ... 18840 files and directories currently =
installed.)
[   35.208948]=20
[   35.219421] Preparing to unpack .../libperl5.28_5.28.1-6+deb10u1_amd64.d=
eb ...
[   35.219423]=20
[   35.229809] Unpacking libperl5.28:amd64 (5.28.1-6+deb10u1) over (5.28.1-=
6+deb10u1) ...
[   35.229810]=20
[   35.240316] Setting up libperl5.28:amd64 (5.28.1-6+deb10u1) ...
[   35.240318]=20
[   35.248793] Processing triggers for libc-bin (2.28-10) ...
[   35.248794]=20
[   35.258021] install debs round two: dpkg -i --force-confdef --force-depe=
nds /opt/deb/perl_5.28.1-6+deb10u1_amd64.deb
[   35.258023]=20
[   35.271557] (Reading database ... 18840 files and directories currently =
installed.)
[   35.271559]=20
[   35.281949] Preparing to unpack .../perl_5.28.1-6+deb10u1_amd64.deb ...
[   35.281951]=20
[   35.291393] Unpacking perl (5.28.1-6+deb10u1) over (5.28.1-6+deb10u1) ...
[   35.291395]=20
[   35.300520] Setting up perl (5.28.1-6+deb10u1) ...
[   35.300522]=20
[   35.309273] install debs round two: dpkg -i --force-confdef --force-depe=
nds /opt/deb/perl-base_5.28.1-6+deb10u1_amd64.deb
[   35.309275]=20
[   35.323202] (Reading database ... 18840 files and directories currently =
installed.)
[   35.323204]=20
[   35.333745] Preparing to unpack .../perl-base_5.28.1-6+deb10u1_amd64.deb=
 ...
[   35.333747]=20
[   35.343780] Unpacking perl-base (5.28.1-6+deb10u1) over (5.28.1-6+deb10u=
1) ...
[   35.343782]=20
[   35.353369] Setting up perl-base (5.28.1-6+deb10u1) ...
[   35.353370]=20
[   35.362643] install debs round two: dpkg -i --force-confdef --force-depe=
nds /opt/deb/perl-modules-5.28_5.28.1-6+deb10u1_all.deb
[   35.362645]=20
[   35.377272] (Reading database ... 18840 files and directories currently =
installed.)
[   35.377274]=20
[   35.387933] Preparing to unpack .../perl-modules-5.28_5.28.1-6+deb10u1_a=
ll.deb ...
[   35.387935]=20
[   35.398680] Unpacking perl-modules-5.28 (5.28.1-6+deb10u1) over (5.28.1-=
6+deb10u1) ...
[   35.398682]=20
[   35.409121] Setting up perl-modules-5.28 (5.28.1-6+deb10u1) ...
[   35.409123]=20
[   35.419263] install debs round two: dpkg -i --force-confdef --force-depe=
nds /opt/deb/libpython3.7-minimal_3.7.3-2+deb10u2_amd64.deb
[   35.419265]=20
[   35.434000] (Reading database ... 18840 files and directories currently =
installed.)
[   35.434001]=20
[   35.444769] Preparing to unpack .../libpython3.7-minimal_3.7.3-2+deb10u2=
_amd64.deb ...
[   35.444771]=20
[   35.456108] Unpacking libpython3.7-minimal:amd64 (3.7.3-2+deb10u2) over =
(3.7.3-2+deb10u2) ...
[   35.456110]=20
[   35.467305] Setting up libpython3.7-minimal:amd64 (3.7.3-2+deb10u2) ...
[   35.467306]=20
[   35.478099] install debs round two: dpkg -i --force-confdef --force-depe=
nds /opt/deb/python3.7-minimal_3.7.3-2+deb10u2_amd64.deb
[   35.478101]=20
[   35.492681] (Reading database ... 18840 files and directories currently =
installed.)
[   35.492683]=20
[   35.503306] Preparing to unpack .../python3.7-minimal_3.7.3-2+deb10u2_am=
d64.deb ...
[   35.503308]=20
[   35.514098] Unpacking python3.7-minimal (3.7.3-2+deb10u2) over (3.7.3-2+=
deb10u2) ...
[   35.514100]=20
[   35.524463] Setting up python3.7-minimal (3.7.3-2+deb10u2) ...
[   35.524465]=20
[   35.534095] install debs round two: dpkg -i --force-confdef --force-depe=
nds /opt/deb/python3-minimal_3.7.3-1_amd64.deb
[   35.534097]=20
[   35.547748] (Reading database ... 18840 files and directories currently =
installed.)
[   35.547749]=20
[   35.558152] Preparing to unpack .../python3-minimal_3.7.3-1_amd64.deb ...
[   35.558153]=20
[   35.567521] Unpacking python3-minimal (3.7.3-1) over (3.7.3-1) ...
[   35.567522]=20
[   35.576100] Setting up python3-minimal (3.7.3-1) ...
[   35.576102]=20
[   35.585121] install debs round two: dpkg -i --force-confdef --force-depe=
nds /opt/deb/libpython3.7-stdlib_3.7.3-2+deb10u2_amd64.deb
[   35.585123]=20
[   35.599781] (Reading database ... 18840 files and directories currently =
installed.)
[   35.599782]=20
[   35.610589] Preparing to unpack .../libpython3.7-stdlib_3.7.3-2+deb10u2_=
amd64.deb ...
[   35.610590]=20
[   35.621601] Unpacking libpython3.7-stdlib:amd64 (3.7.3-2+deb10u2) over (=
3.7.3-2+deb10u2) ...
[   35.621602]=20
[   35.632695] Setting up libpython3.7-stdlib:amd64 (3.7.3-2+deb10u2) ...
[   35.632696]=20
[   35.643035] install debs round two: dpkg -i --force-confdef --force-depe=
nds /opt/deb/python3.7_3.7.3-2+deb10u2_amd64.deb
[   35.643037]=20
[   35.657023] (Reading database ... 18840 files and directories currently =
installed.)
[   35.657026]=20
[   35.667484] Preparing to unpack .../python3.7_3.7.3-2+deb10u2_amd64.deb =
=2E..
[   35.667485]=20
[   35.677393] Unpacking python3.7 (3.7.3-2+deb10u2) over (3.7.3-2+deb10u2)=
 ...
[   35.677395]=20
[   35.686800] Setting up python3.7 (3.7.3-2+deb10u2) ...
[   35.686801]=20
[   35.694391] Processing triggers for mime-support (3.62) ...
[   35.694393]=20
[   35.703843] install debs round two: dpkg -i --force-confdef --force-depe=
nds /opt/deb/libpython3-stdlib_3.7.3-1_amd64.deb
[   35.703845]=20
[   35.717894] (Reading database ... 18840 files and directories currently =
installed.)
[   35.717896]=20
[   35.728326] Preparing to unpack .../libpython3-stdlib_3.7.3-1_amd64.deb =
=2E..
[   35.728328]=20
[   35.738192] Unpacking libpython3-stdlib:amd64 (3.7.3-1) over (3.7.3-1) .=
=2E.
[   35.738193]=20
[   35.747534] Setting up libpython3-stdlib:amd64 (3.7.3-1) ...
[   35.747535]=20
[   35.756786] install debs round two: dpkg -i --force-confdef --force-depe=
nds /opt/deb/python3_3.7.3-1_amd64.deb
[   35.756788]=20
[   35.769739] (Reading database ... 18840 files and directories currently =
installed.)
[   35.769741]=20
[   35.780070] Preparing to unpack .../deb/python3_3.7.3-1_amd64.deb ...
[   35.780073]=20
[   35.789119] running python pre-rtupdate hooks for python3.7...
[   35.789121]=20
[   35.797488] Unpacking python3 (3.7.3-1) over (3.7.3-1) ...
[   35.797489]=20
[   35.805130] Setting up python3 (3.7.3-1) ...
[   35.805144]=20
[   35.811869] running python rtupdate hooks for python3.7...
[   35.811870]=20
[   35.820092] dpkg-query: package 'libglib2.0-dev-bin' is not installed
[   35.820094]=20
[   35.829639] Use dpkg --contents (=3D dpkg-deb --contents) to list archiv=
e files contents.
[   35.829641]=20
[   35.839890] Traceback (most recent call last):
[   35.839892]=20
[   35.846867]   File "/usr/bin/py3clean", line 210, in <module>
[   35.846869]=20
[   35.854290]     main()
[   35.854292]=20
[   35.859058]   File "/usr/bin/py3clean", line 196, in main
[   35.859060]=20
[   35.867023]     pfiles =3D set(dpf.from_package(options.package))
[   35.867025]=20
[   35.876015]   File "/usr/share/python3/debpython/files.py", line 53, in =
=66rom_package
[   35.876017]=20
[   35.886517]     raise Exception("cannot get content of %s" % package_nam=
e)
[   35.886519]=20
[   35.895986] Exception: cannot get content of libglib2.0-dev-bin
[   35.895988]=20
[   35.904576] error running python rtupdate hook libglib2.0-dev-bin
[   35.904578]=20
[   35.913264] dpkg: error processing package python3 (--install):
[   35.913266]=20
[   35.922620]  installed python3 package post-installation script subproce=
ss returned error exit status 4
[   35.922622]=20
[   35.934345] Errors were encountered while processing:
[   35.934346]=20
[   35.941042]  python3
[   35.941043]=20
[   35.945209] /lkp/lkp/src/bin/run-lkp
[   35.945210]=20
[   36.219032] RESULT_ROOT=3D/result/perf-sanity-tests/gcc-ucode=3D0xe2/lkp=
-skl-d04/debian-10.4-x86_64-20200603.cgz/x86_64-rhel-8.3/gcc-9/c12b7a396ff7=
58a262002b5b326d83efeae71140/0
[   36.219034]=20
[   36.607396] job=3D/lkp/jobs/scheduled/lkp-skl-d04/perf-sanity-tests-gcc-=
ucode=3D0xe2-debian-10.4-x86_64-20200603.cgz-c12b7a396ff758a262002b5b326d83=
efeae71140-20201217-40483-18lglgq-0.yaml
[   36.607399]=20
[   36.650588] Warning: Kernel ABI header at 'tools/include/uapi/drm/i915_d=
rm.h' differs from latest version at 'include/uapi/drm/i915_drm.h'
[   36.650591]=20
[   37.230656] Warning: Kernel ABI header at 'tools/include/uapi/linux/perf=
_event.h' differs from latest version at 'include/uapi/linux/perf_event.h'
[   37.230659]=20
[   37.264083] Warning: Kernel ABI header at 'tools/include/uapi/linux/stat=
=2Eh' differs from latest version at 'include/uapi/linux/stat.h'
[   37.264086]=20
[   37.296045] Warning: Kernel ABI header at 'tools/include/linux/build_bug=
=2Eh' differs from latest version at 'include/linux/build_bug.h'
[   37.296048]=20
[   39.882444]   PERF_VERSION =3D 5.10.0
[   39.882451]=20
[   40.741649] result_service: raw_upload, RESULT_MNT: /internal-lkp-server=
/result, RESULT_ROOT: /internal-lkp-server/result/perf-sanity-tests/gcc-uco=
de=3D0xe2/lkp-skl-d04/debian-10.4-x86_64-20200603.cgz/x86_64-rhel-8.3/gcc-9=
/c12b7a396ff758a262002b5b326d83efeae71140/0, TMP_RESULT_ROOT: /tmp/lkp/resu=
lt
[   40.741653]=20
[   40.773288] run-job /lkp/jobs/scheduled/lkp-skl-d04/perf-sanity-tests-gc=
c-ucode=3D0xe2-debian-10.4-x86_64-20200603.cgz-c12b7a396ff758a262002b5b326d=
83efeae71140-20201217-40483-18lglgq-0.yaml
[   40.773290]=20
[   42.087187] /usr/bin/wget -q --timeout=3D1800 --tries=3D1 --local-encodi=
ng=3DUTF-8 http://internal-lkp-server:80/~lkp/cgi-bin/lkp-jobfile-append-va=
r?job_file=3D/lkp/jobs/scheduled/lkp-skl-d04/perf-sanity-tests-gcc-ucode=3D=
0xe2-debian-10.4-x86_64-20200603.cgz-c12b7a396ff758a262002b5b326d83efeae711=
40-20201217-40483-18lglgq-0.yaml&job_state=3Drunning -O /dev/null
[   42.087190]=20
[   42.119858] target ucode: 0xe2
[   42.119860]=20
[   42.125269] current_version: e2, target_version: e2
[   42.125271]=20
[   42.136403] 2020-12-16 17:48:28 make ARCH=3D EXTRA_CFLAGS=3D-fno-omit-fr=
ame-pointer -fsanitize=3Dundefined -fsanitize=3Daddress -C /usr/src/perf_se=
lftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf
[   42.136405]=20
[   42.159528] make: Entering directory '/usr/src/perf_selftests-x86_64-rhe=
l-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf'
[   42.159531]=20
[   42.173921]=20
[   42.181804]   HOSTCC   fixdep.o
[   42.181806]=20
[   42.187047]   HOSTLD   fixdep-in.o
[   42.187049]=20
[   42.192507]   LINK     fixdep
[   42.192509]=20
[   42.198659] diff -u tools/include/uapi/drm/i915_drm.h include/uapi/drm/i=
915_drm.h
[   42.198661]=20
[   42.209452] diff -u tools/include/uapi/linux/perf_event.h include/uapi/l=
inux/perf_event.h
[   42.209455]=20
[   42.220655] diff -u tools/include/uapi/linux/stat.h include/uapi/linux/s=
tat.h
[   42.220658]=20
[   42.231401] diff -u tools/include/linux/build_bug.h include/linux/build_=
bug.h
[   42.231404]=20
[   42.240151]=20
[   42.240153]=20
[   42.243973] Auto-detecting system features:
[   42.243975]=20
[   42.250866]=20
[   42.259387]=20
[   42.267906]=20
[   42.276424]=20
[   42.284942]=20
[   42.293450]=20
[   42.301984]=20
[   42.310521]=20
[   42.319036]=20
[   42.327558]=20
[   42.336096]=20
[   42.344598]=20
[   42.353120]=20
[   42.361634]=20
[   42.370188]=20
[   42.378748]=20
[   42.387292]=20
[   42.395817]=20
[   42.404353]=20
[   42.412934]=20
[   42.421486]=20
[   42.428947]=20
[   42.428948]=20
[   42.432515]   CC       fd/array.o
[   42.432517]=20
[   42.437924]   CC       exec-cmd.o
[   42.437925]=20
[   42.443378]   LD       fd/libapi-in.o
[   42.443379]=20
[   42.449153]   CC       event-parse.o
[   42.449155]=20
[   42.454989]   CC       fs/fs.o
[   42.454991]=20
[   42.460032]   CC       core.o
[   42.460034]=20
[   42.464979]   CC       help.o
[   42.464981]=20
[   42.470165]   CC       fs/tracing_path.o
[   42.470168]=20
[   42.476090]   CC       cpumap.o
[   42.476092]=20
[   42.481298]   CC       fs/cgroup.o
[   42.481301]=20
[   42.486959]   LD       fs/libapi-in.o
[   42.486961]=20
[   42.492626]   CC       cpu.o
[   42.492628]=20
[   42.497533]   CC       debug.o
[   42.497535]=20
[   42.502736]   CC       str_error_r.o
[   42.502738]=20
[   42.508388]   LD       libapi-in.o
[   42.508390]=20
[   42.513835]   AR       libapi.a
[   42.513837]=20
[   42.519179]   GEN      bpf_helper_defs.h
[   42.519182]=20
[   42.525182]   MKDIR    staticobjs/
[   42.525184]=20
[   42.530850]   CC       staticobjs/libbpf.o
[   42.530853]=20
[   42.536943]   CC       pager.o
[   42.536946]=20
[   42.542161]   CC       parse-options.o
[   42.542162]=20
[   42.547989]   CC       threadmap.o
[   42.547991]=20
[   42.553395]   CC       evsel.o
[   42.553397]=20
[   42.558632]   CC       event-plugin.o
[   42.558634]=20
[   42.564315]   CC       evlist.o
[   42.564317]=20
[   42.569545]   CC       trace-seq.o
[   42.569547]=20
[   42.575100]   CC       parse-filter.o
[   42.575102]=20
[   42.580918]   CC       run-command.o
[   42.580921]=20
[   42.586486]   CC       mmap.o
[   42.586489]=20
[   42.591540]   CC       sigchain.o
[   42.591542]=20
[   42.596994]   CC       parse-utils.o
[   42.596996]=20
[   42.602756]   CC       kbuffer-parse.o
[   42.602758]=20
[   42.608674]   CC       subcmd-config.o
[   42.608676]=20
[   42.614574]   LD       libsubcmd-in.o
[   42.614576]=20
[   42.620327]   AR       libsubcmd.a
[   42.620329]=20
[   42.625867]   CC       tep_strerror.o
[   42.625869]=20
[   42.631738]   CC       event-parse-api.o
[   42.631740]=20
[   42.637719]   MKDIR    staticobjs/
[   42.637721]=20
[   42.643255]   CC       staticobjs/bpf.o
[   42.643256]=20
[   42.649285]   LD       libtraceevent-in.o
[   42.649287]=20
[   42.655419]   LINK     libtraceevent.a
[   42.655420]=20
[   42.661408]   CC       staticobjs/nlattr.o
[   42.661410]=20
[   42.667521]   CC       zalloc.o
[   42.667523]=20
[   42.672827]   CC       staticobjs/btf.o
[   42.672829]=20
[   42.679003]   CC       staticobjs/libbpf_errno.o
[   42.679005]=20
[   42.685908]   CC       staticobjs/str_error.o
[   42.685910]=20
[   42.692272]   CC       xyarray.o
[   42.692274]=20
[   42.697433]   CC       lib.o
[   42.697435]=20
[   42.702565]   CC       staticobjs/netlink.o
[   42.702567]=20
[   42.708842]   LD       libperf-in.o
[   42.708844]=20
[   42.714342]   AR       libperf.a
[   42.714344]=20
[   42.719942]   CC       staticobjs/bpf_prog_linfo.o
[   42.719944]=20
[   42.727111]   CC       staticobjs/libbpf_probes.o
[   42.727113]=20
[   42.733973]   CC       staticobjs/xsk.o
[   42.733975]=20
[   42.739925]   GEN      common-cmds.h
[   42.739928]=20
[   42.745736]   CC       staticobjs/hashmap.o
[   42.745737]=20
[   42.752166]   CC       staticobjs/btf_dump.o
[   42.752168]=20
[   42.758699]   CC       staticobjs/ringbuf.o
[   42.758701]=20
[   42.765163]   LD       staticobjs/libbpf-in.o
[   42.765166]=20
[   42.771521]   LINK     libbpf.a
[   42.771523]=20
[   42.776879]   HOSTCC   pmu-events/json.o
[   42.776881]=20
[   42.782991]   HOSTCC   pmu-events/jsmn.o
[   42.782993]=20
[   42.789029]   CC       plugin_jbd2.o
[   42.789032]=20
[   42.794862]   HOSTCC   pmu-events/jevents.o
[   42.794865]=20
[   42.801096]   CC       plugin_hrtimer.o
[   42.801098]=20
[   42.806988]   LD       plugin_jbd2-in.o
[   42.806989]=20
[   42.812821]   CC       plugin_kmem.o
[   42.812823]=20
[   42.818518]   LD       plugin_hrtimer-in.o
[   42.818519]=20
[   42.824590]   CC       plugin_kvm.o
[   42.824592]=20
[   42.830263]   HOSTLD   pmu-events/jevents-in.o
[   42.830265]=20
[   42.836743]   LD       plugin_kmem-in.o
[   42.836745]=20
[   42.842629]   CC       jvmti/libjvmti.o
[   42.842630]=20
[   42.848541]   CC       plugin_mac80211.o
[   42.848543]=20
[   42.854598]   LD       plugin_mac80211-in.o
[   42.854600]=20
[   42.860929]   CC       plugin_sched_switch.o
[   42.860930]=20
[   42.867206]   LD       plugin_kvm-in.o
[   42.867208]=20
[   42.873028]   CC       plugin_function.o
[   42.873030]=20
[   42.879168]   LD       plugin_sched_switch-in.o
[   42.879170]=20
[   42.885707]   CC       plugin_futex.o
[   42.885709]=20
[   42.891519]   LD       plugin_function-in.o
[   42.891521]=20
[   42.897679]   CC       plugin_xen.o
[   42.897681]=20
[   42.903200]   LD       plugin_xen-in.o
[   42.903202]=20
[   42.908957]   CC       plugin_scsi.o
[   42.908959]=20
[   42.914625]   LD       plugin_futex-in.o
[   42.914627]=20
[   42.920629]   CC       plugin_cfg80211.o
[   42.920631]=20
[   42.926677]   LD       plugin_cfg80211-in.o
[   42.926679]=20
[   42.932828]   CC       plugin_tlb.o
[   42.932829]=20
[   42.938353]   LD       plugin_scsi-in.o
[   42.938354]=20
[   42.944186]   LINK     plugin_jbd2.so
[   42.944188]=20
[   42.949922]   LINK     plugin_hrtimer.so
[   42.949923]=20
[   42.955854]   LINK     plugin_kmem.so
[   42.955856]=20
[   42.961547]   LD       plugin_tlb-in.o
[   42.961549]=20
[   42.967289]   LINK     plugin_kvm.so
[   42.967291]=20
[   42.972961]   LINK     plugin_mac80211.so
[   42.972963]=20
[   42.979150]   LINK     plugin_sched_switch.so
[   42.979153]=20
[   42.985596]   LINK     plugin_function.so
[   42.985598]=20
[   42.991634]   LINK     plugin_futex.so
[   42.991636]=20
[   42.997496]   CC       jvmti/jvmti_agent.o
[   42.997498]=20
[   43.003582]   LINK     plugin_xen.so
[   43.003583]=20
[   43.009145]   LINK     plugin_scsi.so
[   43.009147]=20
[   43.014904]   LINK     plugin_cfg80211.so
[   43.014905]=20
[   43.020896]   LINK     plugin_tlb.so
[   43.020898]=20
[   43.026727]   GEN      libtraceevent-dynamic-list
[   43.026729]=20
[   43.033375]   GEN      perf-archive
[   43.033377]=20
[   43.038933]   CC       jvmti/libstring.o
[   43.038935]=20
[   43.044876]   GEN      perf-with-kcore
[   43.044878]=20
[   43.050660]   CC       jvmti/libctype.o
[   43.050661]=20
[   43.056572]   LINK     pmu-events/jevents
[   43.056573]=20
[   43.062598]   CC       builtin-bench.o
[   43.062599]=20
[   43.068530]   GEN      pmu-events/pmu-events.c
[   43.068531]=20
[   43.075050]   CC       builtin-annotate.o
[   43.075051]=20
[   43.081236]   CC       pmu-events/pmu-events.o
[   43.081238]=20
[   43.087716]   CC       builtin-config.o
[   43.087717]=20
[   43.093596]   LD       jvmti/jvmti-in.o
[   43.093597]=20
[   43.099424]   GEN      python/perf.so
[   43.099425]=20
[   43.105075]   CC       builtin-diff.o
[   43.105076]=20
[   43.110785]   CC       builtin-evlist.o
[   43.110786]=20
[   43.116870]   LD       pmu-events/pmu-events-in.o
[   43.116872]=20
[   43.123614]   LINK     libperf-jvmti.so
[   43.123616]=20
[   43.129500]   CC       builtin-ftrace.o
[   43.129502]=20
[   43.135335]   CC       builtin-help.o
[   43.135337]=20
[   43.141021]   CC       builtin-sched.o
[   43.141022]=20
[   43.322831]   CC       builtin-buildid-list.o
[   43.322834]=20
[   43.505280]   CC       builtin-buildid-cache.o
[   43.505283]=20
[   44.117847]   CC       builtin-kallsyms.o
[   44.117850]=20
[   44.253199]   CC       builtin-list.o
[   44.253203]=20
[   44.352267]   CC       builtin-record.o
[   44.352270]=20
[   44.533581]   CC       builtin-report.o
[   44.533584]=20
[   46.038809]   CC       builtin-stat.o
[   46.038812]=20
[   46.899953]   CC       builtin-timechart.o
[   46.899956]=20
[   47.577543]   CC       builtin-top.o
[   47.577547]=20
[   49.007021]   CC       builtin-script.o
[   49.007024]=20
[   49.939483]   CC       builtin-kmem.o
[   49.939486]=20
[   50.031242]   CC       builtin-lock.o
[   50.031245]=20
[   51.090181]   CC       builtin-kvm.o
[   51.090185]=20
[   51.723959]   CC       builtin-inject.o
[   51.723963]=20
[   52.663800]   CC       builtin-mem.o
[   52.663803]=20
[   52.681744]   CC       builtin-data.o
[   52.681746]=20
[   52.776538]   CC       builtin-version.o
[   52.776541]=20
[   52.837912]   CC       builtin-c2c.o
[   52.837916]=20
[   52.861993]   CC       builtin-trace.o
[   52.861996]=20
[   53.147935]   CC       builtin-probe.o
[   53.147939]=20
[   53.783907]   CC       bench/sched-messaging.o
[   53.783910]=20
[   54.054350]   CC       bench/sched-pipe.o
[   54.054353]=20
[   54.191279]   CC       bench/syscall.o
[   54.191282]=20
[   54.268306]   CC       bench/mem-functions.o
[   54.268308]=20
[   54.502902]   CC       bench/futex-hash.o
[   54.502905]=20
[   54.686606]   CC       bench/futex-wake.o
[   54.686609]=20
[   54.854864]   CC       bench/futex-wake-parallel.o
[   54.854866]=20
[   55.039078]   CC       tests/builtin-test.o
[   55.039081]=20
[   55.097398]   CC       bench/futex-requeue.o
[   55.097401]=20
[   55.278374]   CC       bench/futex-lock-pi.o
[   55.278377]=20
[   55.498606]   CC       tests/parse-events.o
[   55.498610]=20
[   55.505059]   CC       bench/epoll-wait.o
[   55.505062]=20
[   55.930571]   CC       bench/epoll-ctl.o
[   55.930574]=20
[   56.046880]   CC       util/annotate.o
[   56.046883]=20
[   56.327265]   CC       bench/synthesize.o
[   56.327268]=20
[   56.578273]   CC       bench/kallsyms-parse.o
[   56.578276]=20
[   56.671968]   CC       bench/find-bit-bench.o
[   56.671971]=20
[   56.815693]   CC       bench/inject-buildid.o
[   56.815696]=20
[   57.256618]   CC       bench/mem-memcpy-x86-64-asm.o
[   57.256622]=20
[   57.271397]   CC       bench/mem-memset-x86-64-asm.o
[   57.271399]=20
[   57.285360]   CC       bench/numa.o
[   57.285363]=20
[   58.267509]   CC       tests/dso-data.o
[   58.267513]=20
[   58.538169]   CC       tests/attr.o
[   58.538172]=20
[   58.828769]   CC       tests/vmlinux-kallsyms.o
[   58.828772]=20
[   59.055384]   CC       tests/openat-syscall.o
[   59.055387]=20
[   59.155979]   CC       tests/openat-syscall-all-cpus.o
[   59.155982]=20
[   59.337187]   CC       tests/openat-syscall-tp-fields.o
[   59.337190]=20
[   59.488298]   CC       tests/mmap-basic.o
[   59.488301]=20
[   59.779960]   CC       tests/perf-record.o
[   59.779963]=20
[   60.062928]   LD       bench/perf-in.o
[   60.062932]=20
[   60.082859]   CC       arch/common.o
[   60.082862]=20
[   60.096074]   CC       arch/x86/util/header.o
[   60.096077]=20
[   60.155867]   CC       tests/evsel-roundtrip-name.o
[   60.155870]=20
[   60.210486]   CC       arch/x86/util/tsc.o
[   60.210489]=20
[   60.226990]   CC       arch/x86/util/pmu.o
[   60.226993]=20
[   60.247095]   CC       arch/x86/tests/regs_load.o
[   60.247098]=20
[   60.278374]   CC       arch/x86/tests/dwarf-unwind.o
[   60.278377]=20
[   60.289651]   CC       tests/evsel-tp-sched.o
[   60.289654]=20
[   60.306026]   CC       arch/x86/util/kvm-stat.o
[   60.306028]=20
[   60.379163]   CC       tests/fdarray.o
[   60.379167]=20
[   60.394586]   CC       arch/x86/tests/arch-tests.o
[   60.394589]=20
[   60.430223]   CC       arch/x86/tests/rdpmc.o
[   60.430227]=20
[   60.447950]   CC       util/block-info.o
[   60.447953]=20
[   60.470545]   CC       arch/x86/util/perf_regs.o
[   60.470548]=20
[   60.612777]   CC       arch/x86/tests/perf-time-to-tsc.o
[   60.612780]=20
[   60.669488]   CC       arch/x86/util/topdown.o
[   60.669491]=20
[   60.676358]   CC       tests/pmu.o
[   60.676360]=20
[   60.758520]   CC       arch/x86/util/machine.o
[   60.758523]=20
[   60.800784]   CC       tests/pmu-events.o
[   60.800787]=20
[   60.810657]   CC       arch/x86/tests/insn-x86.o
[   60.810660]=20
[   60.905069]   CC       arch/x86/util/event.o
[   60.905071]=20
[   61.034495]   CC       arch/x86/util/dwarf-regs.o
[   61.034498]=20
[   61.077995]   CC       arch/x86/tests/intel-pt-pkt-decoder-test.o
[   61.077998]=20
[   61.089285]   CC       arch/x86/util/unwind-libunwind.o
[   61.089288]=20
[   61.143885]   CC       arch/x86/util/auxtrace.o
[   61.143888]=20
[   61.235044]   CC       arch/x86/tests/bp-modify.o
[   61.235047]=20
[   61.294725]   CC       arch/x86/util/archinsn.o
[   61.294728]=20
[   61.386258]   LD       arch/x86/tests/perf-in.o
[   61.386261]=20
[   61.406229]   CC       arch/x86/util/intel-pt.o
[   61.406232]=20
[   61.413296]   CC       arch/x86/util/intel-bts.o
[   61.413298]=20
[   61.467848]   CC       tests/hists_common.o
[   61.467851]=20
[   61.481403]   CC       util/block-range.o
[   61.481406]=20
[   61.719189]   CC       tests/hists_link.o
[   61.719193]=20
[   61.905109]   CC       tests/hists_filter.o
[   61.905112]=20
[   61.936349]   CC       util/build-id.o
[   61.936352]=20
[   62.094178]   CC       tests/hists_output.o
[   62.094182]=20
[   62.330299]   CC       tests/hists_cumulate.o
[   62.330302]=20
[   62.676085]   LD       arch/x86/util/perf-in.o
[   62.676088]=20
[   62.697284]   LD       arch/x86/perf-in.o
[   62.697286]=20
[   62.711270]   LD       arch/perf-in.o
[   62.711273]=20
[   62.724497]   CC       util/cacheline.o
[   62.724500]=20
[   62.730570]   CC       ui/setup.o
[   62.730573]=20
[   62.784938]   CC       util/config.o
[   62.784941]=20
[   62.841219]   CC       ui/helpline.o
[   62.841222]=20
[   62.954972]   CC       ui/progress.o
[   62.954976]=20
[   63.030961]   CC       ui/util.o
[   63.030964]=20
[   63.102261]   CC       ui/hist.o
[   63.102264]=20
[   63.196054]   CC       tests/python-use.o
[   63.196057]=20
[   63.248823]   CC       tests/bp_signal.o
[   63.248826]=20
[   63.385642]   CC       tests/bp_signal_overflow.o
[   63.385645]=20
[   63.486861]   CC       tests/bp_account.o
[   63.486864]=20
[   63.506909]   CC       scripts/perl/Perf-Trace-Util/Context.o
[   63.506912]=20
[   63.517044]   CC       util/copyfile.o
[   63.517046]=20
[   63.683217]   CC       util/ctype.o
[   63.683220]=20
[   63.731311]   CC       util/db-export.o
[   63.731314]=20
[   63.762517]   CC       tests/wp.o
[   63.762520]=20
[   63.979278]   CC       tests/task-exit.o
[   63.979281]=20
[   64.064516]   LD       scripts/perl/Perf-Trace-Util/perf-in.o
[   64.064519]=20
[   64.073951]   CC       scripts/python/Perf-Trace-Util/Context.o
[   64.073953]=20
[   64.151867]   CC       tests/sw-clock.o
[   64.151870]=20
[   64.215693]   LD       scripts/python/Perf-Trace-Util/perf-in.o
[   64.215697]=20
[   64.224136]   LD       scripts/perf-in.o
[   64.224138]=20
[   64.234158]   CC       trace/beauty/clone.o
[   64.234162]=20
[   64.389329]   CC       trace/beauty/fcntl.o
[   64.389332]=20
[   64.395820]   CC       tests/mmap-thread-lookup.o
[   64.395822]=20
[   64.478842]   CC       trace/beauty/flock.o
[   64.478845]=20
[   64.556997]   CC       trace/beauty/fsmount.o
[   64.557000]=20
[   64.613799]   CC       trace/beauty/fspick.o
[   64.613802]=20
[   64.659816]   CC       tests/thread-maps-share.o
[   64.659819]=20
[   64.671517]   CC       trace/beauty/ioctl.o
[   64.671520]=20
[   64.698999]   CC       util/env.o
[   64.699002]=20
[   64.839716]   CC       trace/beauty/kcmp.o
[   64.839719]=20
[   64.846259]   CC       tests/switch-tracking.o
[   64.846261]=20
[   64.953762]   CC       trace/beauty/mount_flags.o
[   64.953764]=20
[   65.030198]   CC       trace/beauty/move_mount.o
[   65.030201]=20
[   65.096866]   CC       trace/beauty/pkey_alloc.o
[   65.096869]=20
[   65.124653]   CC       util/event.o
[   65.124656]=20
[   65.255905]   CC       trace/beauty/arch_prctl.o
[   65.255908]=20
[   65.301888]   CC       trace/beauty/prctl.o
[   65.301891]=20
[   65.336275]   CC       tests/keep-tracking.o
[   65.336278]=20
[   65.393245]   CC       trace/beauty/renameat.o
[   65.393248]=20
[   65.454782]   CC       trace/beauty/sockaddr.o
[   65.454785]=20
[   65.505563]   CC       tests/code-reading.o
[   65.505566]=20
[   65.585966]   CC       trace/beauty/socket.o
[   65.585969]=20
[   65.644623]   CC       trace/beauty/statx.o
[   65.644626]=20
[   65.793286]   CC       trace/beauty/sync_file_range.o
[   65.793289]=20
[   65.858224]   CC       trace/beauty/tracepoints/x86_irq_vectors.o
[   65.858227]=20
[   65.914124]   CC       util/evlist.o
[   65.914128]=20
[   65.936273]   CC       trace/beauty/tracepoints/x86_msr.o
[   65.936276]=20
[   66.017922]   LD       trace/beauty/tracepoints/perf-in.o
[   66.017925]=20
[   66.029901]   LD       trace/beauty/perf-in.o
[   66.029903]=20
[   66.055990]   CC       tests/sample-parsing.o
[   66.055993]=20
[   66.273716]   CC       tests/parse-no-sample-id-all.o
[   66.273719]=20
[   66.412878]   CC       tests/kmod-path.o
[   66.412881]=20
[   66.662788]   CC       tests/thread-map.o
[   66.662791]=20
[   66.783779]   CC       tests/llvm.o
[   66.783782]=20
[   66.870114]   CC       tests/bpf.o
[   66.870118]=20
[   66.917144]   CC       perf.o
[   66.917147]=20
[   67.180622]   CC       tests/topology.o
[   67.180625]=20
[   67.279961]   CC       tests/mem.o
[   67.279964]=20
[   67.373665]   CC       ui/stdio/hist.o
[   67.373668]=20
[   67.395443]   CC       tests/cpumap.o
[   67.395456]=20
[   67.586568]   CC       tests/stat.o
[   67.586571]=20
[   67.773381]   CC       tests/event_update.o
[   67.773385]=20
[   67.922856]   CC       util/sideband_evlist.o
[   67.922859]=20
[   67.951862]   CC       tests/event-times.o
[   67.951865]=20
[   68.096732]   CC       util/evsel.o
[   68.096735]=20
[   68.266445]   CC       tests/expr.o
[   68.266452]=20
[   68.433575]   CC       tests/backward-ring-buffer.o
[   68.433578]=20
[   68.451028]   CC       tests/sdt.o
[   68.451031]=20
[   68.576111]   CC       ui/browser.o
[   68.576114]=20
[   68.602035]   CC       tests/is_printable_array.o
[   68.602038]=20
[   68.705634]   CC       tests/bitmap.o
[   68.705637]=20
[   68.806320]   CC       tests/perf-hooks.o
[   68.806323]=20
[   68.869469]   CC       tests/clang.o
[   68.869472]=20
[   68.908149]   CC       tests/unit_number__scnprintf.o
[   68.908152]=20
[   68.981208]   CC       ui/browsers/annotate.o
[   68.981211]=20
[   68.992794]   CC       tests/mem2node.o
[   68.992797]=20
[   69.172579]   CC       tests/maps.o
[   69.172583]=20
[   69.367715]   CC       ui/browsers/hists.o
[   69.367718]=20
[   69.434324]   CC       tests/time-utils-test.o
[   69.434327]=20
[   69.765801]   CC       tests/genelf.o
[   69.765804]=20
[   69.863496]   CC       tests/api-io.o
[   69.863499]=20
[   70.300899]   CC       tests/demangle-java-test.o
[   70.300901]=20
[   70.423541]   CC       tests/pfm.o
[   70.423544]=20
[   70.453748]   CC       ui/browsers/map.o
[   70.453751]=20
[   70.512606]   CC       tests/parse-metric.o
[   70.512609]=20
[   70.636928]   CC       ui/browsers/scripts.o
[   70.636930]=20
[   70.777063]   CC       tests/pe-file-parsing.o
[   70.777066]=20
[   70.918109]   CC       tests/expand-cgroup.o
[   70.918112]=20
[   70.949129]   CC       ui/browsers/header.o
[   70.949132]=20
[   71.103600]   CC       ui/browsers/res_sample.o
[   71.103603]=20
[   71.247140]   CC       tests/dwarf-unwind.o
[   71.247143]=20
[   71.278837]   CC       ui/tui/setup.o
[   71.278840]=20
[   71.418988]   CC       ui/tui/util.o
[   71.418991]=20
[   71.445236]   CC       tests/llvm-src-base.o
[   71.445239]=20
[   71.487158]   CC       tests/llvm-src-kbuild.o
[   71.487161]=20
[   71.528765]   CC       tests/llvm-src-prologue.o
[   71.528768]=20
[   71.572871]   CC       tests/llvm-src-relocation.o
[   71.572874]=20
[   71.631543]   LD       tests/perf-in.o
[   71.631546]=20
[   71.643657]   CC       ui/tui/helpline.o
[   71.643660]=20
[   71.666605]   CC       util/evsel_fprintf.o
[   71.666607]=20
[   71.738144]   CC       ui/tui/progress.o
[   71.738148]=20
[   71.750083]   CC       util/perf_event_attr_fprintf.o
[   71.750087]=20
[   71.851377]   LD       ui/tui/perf-in.o
[   71.851380]=20
[   71.860001]   CC       util/evswitch.o
[   71.860004]=20
[   71.983394]   CC       util/find_bit.o
[   71.983398]=20
[   72.018959]   CC       util/get_current_dir_name.o
[   72.018961]=20
[   72.048071]   CC       util/kallsyms.o
[   72.048074]=20
[   72.124761]   CC       util/levenshtein.o
[   72.124765]=20
[   72.250269]   CC       util/llvm-utils.o
[   72.250272]=20
[   72.269071]   CC       util/mmap.o
[   72.269074]=20
[   72.293416]   CC       util/memswap.o
[   72.293419]=20
[   72.342011]   BISON    util/parse-events-bison.c
[   72.342014]=20
[   72.436978]   CC       util/perf_regs.o
[   72.436981]=20
[   72.525476]   CC       util/path.o
[   72.525478]=20
[   72.591769]   CC       util/print_binary.o
[   72.591772]=20
[   72.608877]   CC       util/rlimit.o
[   72.608880]=20
[   72.642787]   CC       util/argv_split.o
[   72.642790]=20
[   72.670392]   CC       util/rbtree.o
[   72.670394]=20
[   72.699300]   CC       util/libstring.o
[   72.699303]=20
[   72.774785]   CC       util/bitmap.o
[   72.774788]=20
[   72.823610]   CC       util/hweight.o
[   72.823614]=20
[   72.873835]   CC       util/smt.o
[   72.873838]=20
[   72.921506]   CC       util/strbuf.o
[   72.921509]=20
[   72.963568]   CC       util/string.o
[   72.963571]=20
[   73.222034]   CC       util/strlist.o
[   73.222037]=20
[   73.274872]   CC       util/strfilter.o
[   73.274875]=20
[   73.389426]   CC       util/top.o
[   73.389429]=20
[   73.667099]   CC       util/usage.o
[   73.667102]=20
[   73.679725]   CC       util/dso.o
[   73.679727]=20
[   73.715820]   CC       util/dsos.o
[   73.715823]=20
[   74.166076]   CC       util/symbol.o
[   74.166080]=20
[   75.031361]   CC       util/symbol_fprintf.o
[   75.031364]=20
[   75.175441]   CC       util/color.o
[   75.175444]=20
[   75.345950]   CC       util/color_config.o
[   75.345953]=20
[   75.425849]   CC       util/metricgroup.o
[   75.425853]=20
[   75.454326]   CC       util/header.o
[   75.454328]=20
[   76.419466]   CC       util/callchain.o
[   76.419469]=20
[   76.790564]   CC       util/values.o
[   76.790566]=20
[   77.420998]   CC       util/debug.o
[   77.421000]=20
[   77.643946]   CC       util/fncache.o
[   77.643949]=20
[   77.777634]   CC       util/machine.o
[   77.777637]=20
[   78.391600]   CC       util/map.o
[   78.391603]=20
[   79.645075]   CC       util/pstack.o
[   79.645077]=20
[   79.745402]   CC       util/session.o
[   79.745405]=20
[   79.751447]   LD       ui/browsers/perf-in.o
[   79.751469]=20
[   79.800082]   LD       ui/perf-in.o
[   79.800086]=20
[   79.845521]   CC       util/sample-raw.o
[   79.845524]=20
[   79.925763]   CC       util/s390-sample-raw.o
[   79.925766]=20
[   80.172392]   CC       util/syscalltbl.o
[   80.172395]=20
[   80.196926]   CC       util/ordered-events.o
[   80.196929]=20
[   80.340340]   CC       util/namespaces.o
[   80.340343]=20
[   80.642341]   CC       util/comm.o
[   80.642345]=20
[   80.862546]   CC       util/thread.o
[   80.862549]=20
[   80.894846]   CC       util/thread_map.o
[   80.894849]=20
[   81.321829]   CC       util/trace-event-parse.o
[   81.321833]=20
[   81.445865]   CC       util/parse-events-bison.o
[   81.445868]=20
[   81.502690]   BISON    util/pmu-bison.c
[   81.502693]=20
[   81.531112]   CC       util/trace-event-read.o
[   81.531115]=20
[   81.548868]   CC       util/trace-event-info.o
[   81.548871]=20
[   81.767249]   CC       util/trace-event-scripting.o
[   81.767252]=20
[   81.861981]   CC       util/trace-event.o
[   81.861984]=20
[   81.983528]   CC       util/svghelper.o
[   81.983531]=20
[   82.010678]   CC       util/sort.o
[   82.010681]=20
[   82.224363]   CC       util/hist.o
[   82.224366]=20
[   82.648135]   CC       util/util.o
[   82.648139]=20
[   82.940310]   CC       util/cpumap.o
[   82.940313]=20
[   83.477990]   CC       util/affinity.o
[   83.477993]=20
[   83.562738]   CC       util/cputopo.o
[   83.562741]=20
[   83.585004]   CC       util/cgroup.o
[   83.585007]=20
[   83.841717]   CC       util/target.o
[   83.841721]=20
[   84.002669]   CC       util/rblist.o
[   84.002672]=20
[   84.177118]   CC       util/intlist.o
[   84.177121]=20
[   84.231168]   CC       util/vdso.o
[   84.231171]=20
[   84.280976]   CC       util/counts.o
[   84.280979]=20
[   84.392599]   CC       util/stat.o
[   84.392602]=20
[   84.493380]   CC       util/stat-shadow.o
[   84.493383]=20
[   85.202811]   CC       util/stat-display.o
[   85.202814]=20
[   85.222488]   CC       util/perf_api_probe.o
[   85.222490]=20
[   85.514414]   CC       util/record.o
[   85.514418]=20
[   85.832719]   CC       util/srcline.o
[   85.832722]=20
[   86.344065]   CC       util/srccode.o
[   86.344067]=20
[   86.567724]   CC       util/synthetic-events.o
[   86.567728]=20
[   86.612222]   CC       util/data.o
[   86.612226]=20
[   86.668499]   CC       util/tsc.o
[   86.668502]=20
[   86.882854]   CC       util/cloexec.o
[   86.882857]=20
[   87.004526]   CC       util/call-path.o
[   87.004530]=20
[   87.073092]   CC       util/rwsem.o
[   87.073096]=20
[   87.151083]   CC       util/thread-stack.o
[   87.151086]=20
[   87.235599]   CC       util/spark.o
[   87.235602]=20
[   87.320013]   CC       util/topdown.o
[   87.320017]=20
[   87.449282]   CC       util/stream.o
[   87.449285]=20
[   87.810869]   CC       util/auxtrace.o
[   87.810873]=20
[   88.004062]   CC       util/intel-pt-decoder/intel-pt-pkt-decoder.o
[   88.004065]=20
[   88.571553]   GEN      util/intel-pt-decoder/inat-tables.c
[   88.571556]=20
[   88.592810]   CC       util/intel-pt-decoder/intel-pt-log.o
[   88.592813]=20
[   88.715188]   CC       util/intel-pt-decoder/intel-pt-decoder.o
[   88.715192]=20
[   88.884351]   CC       util/arm-spe-decoder/arm-spe-pkt-decoder.o
[   88.884355]=20
[   88.932192]   CC       util/scripting-engines/trace-event-perl.o
[   88.932195]=20
[   89.194348]   CC       util/arm-spe-decoder/arm-spe-decoder.o
[   89.194351]=20
[   89.370961]   LD       util/arm-spe-decoder/perf-in.o
[   89.370964]=20
[   89.378265]   CC       util/intel-pt.o
[   89.378268]=20
[   90.394229]   CC       util/scripting-engines/trace-event-python.o
[   90.394233]=20
[   90.961606]   CC       util/intel-bts.o
[   90.961609]=20
[   92.049339] IPMI BMC is not supported on this machine, skip bmc-watchdog=
 setup!
[   92.049342]=20
[   92.069404]   CC       util/arm-spe.o
[   92.069406]=20
[   92.761547]   CC       util/intel-pt-decoder/intel-pt-insn-decoder.o
[   92.761550]=20
[   92.770482]   LD       util/scripting-engines/perf-in.o
[   92.770485]=20
[   92.788067]   CC       util/s390-cpumsf.o
[   92.788070]=20
[   93.174970]   CC       util/parse-branch-options.o
[   93.174973]=20
[   93.268671]   CC       util/dump-insn.o
[   93.268674]=20
[   93.304470]   CC       util/parse-regs-options.o
[   93.304473]=20
[   93.400914]   CC       util/parse-sublevel-options.o
[   93.400917]=20
[   93.475792]   CC       util/term.o
[   93.475794]=20
[   93.547479]   CC       util/help-unknown-cmd.o
[   93.547482]=20
[   93.698004]   CC       util/mem-events.o
[   93.698006]=20
[   93.743742]   CC       util/vsprintf.o
[   93.743745]=20
[   93.814664]   CC       util/units.o
[   93.814666]=20
[   93.913340]   CC       util/time-utils.o
[   93.913342]=20
[   93.937286]   LD       util/intel-pt-decoder/perf-in.o
[   93.937289]=20
[   93.949942]   BISON    util/expr-bison.c
[   93.949945]=20
[   93.990596]   CC       util/branch.o
[   93.990599]=20
[   94.236070]   CC       util/mem2node.o
[   94.236073]=20
[   94.244587]   CC       util/clockid.o
[   94.244589]=20
[   94.345484]   CC       util/bpf-loader.o
[   94.345487]=20
[   94.385533]   CC       util/bpf_map.o
[   94.385536]=20
[   94.429318]   CC       util/bpf-prologue.o
[   94.429321]=20
[   94.473991]   CC       util/symbol-elf.o
[   94.473994]=20
[   94.736704]   CC       util/probe-file.o
[   94.736707]=20
[   94.961443]   CC       util/probe-event.o
[   94.961446]=20
[   95.640645]   CC       util/probe-finder.o
[   95.640648]=20
[   95.775895]   CC       util/dwarf-aux.o
[   95.775898]=20
[   96.436231]   CC       util/dwarf-regs.o
[   96.436234]=20
[   96.506636]   CC       util/unwind-libunwind-local.o
[   96.506639]=20
[   96.519207]   CC       util/unwind-libunwind.o
[   96.519210]=20
[   96.667049]   CC       util/data-convert-bt.o
[   96.667052]=20
[   96.872879]   CC       util/zlib.o
[   96.872882]=20
[   96.964962]   CC       util/lzma.o
[   96.964965]=20
[   97.078399]   CC       util/zstd.o
[   97.078402]=20
[   97.182218]   CC       util/cap.o
[   97.182222]=20
[   97.225959]   CC       util/demangle-java.o
[   97.225962]=20
[   97.406952]   CC       util/demangle-rust.o
[   97.406955]=20
[   97.419283]   CC       util/jitdump.o
[   97.419286]=20
[   97.782504]   CC       util/genelf.o
[   97.782507]=20
[   98.028001]   CC       util/genelf_debug.o
[   98.028004]=20
[   98.044955]   CC       util/perf-hooks.o
[   98.044958]=20
[   98.161071]   CC       util/bpf-event.o
[   98.161075]=20
[   98.300469]   FLEX     util/parse-events-flex.c
[   98.300472]=20
[   98.341647]   FLEX     util/pmu-flex.c
[   98.341649]=20
[   98.356139]   CC       util/pmu-bison.o
[   98.356142]=20
[   98.575037]   FLEX     util/expr-flex.c
[   98.575040]=20
[   98.588074]   CC       util/expr-bison.o
[   98.588077]=20
[   98.615255]   CC       util/expr.o
[   98.615258]=20
[   98.674816]   CC       util/parse-events.o
[   98.674819]=20
[   98.862379]   CC       util/parse-events-flex.o
[   98.862382]=20
[   99.003589]   CC       util/pmu.o
[   99.003593]=20
[   99.287966]   CC       util/pmu-flex.o
[   99.287969]=20
[  100.325789]   CC       util/expr-flex.o
[  100.325792]=20
[  105.769044]   LD       util/perf-in.o
[  105.769046]=20
[  106.075809]   LD       perf-in.o
[  106.075812]=20
[  106.378645]   LINK     perf
[  106.378648]=20
[  107.329546] make: Leaving directory '/usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf'
[  107.329549]=20
[  107.344266] Key type dns_resolver registered
[  107.345139] 2020-12-16 17:49:43 cd /usr/src/perf_selftests-x86_64-rhel-8=
=2E3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf
[  107.348531]=20
[  107.362048] 2020-12-16 17:49:43 mkdir -p /pkg
[  107.362050]=20
[  107.369118] 2020-12-16 17:49:43 mkdir -p /kbuild/obj/x86_64/x86_64-rhel-=
8.3
[  107.369119]=20
[  107.490379] NFS: Registering the id_resolver key type
[  107.495403] Key type id_resolver registered
[  107.499558] Key type id_legacy registered
[  107.546496] 2020-12-16 17:49:43 cp /pkg/linux/x86_64-rhel-8.3/gcc-9/c12b=
7a396ff758a262002b5b326d83efeae71140/vmlinux.xz /tmp
[  107.546499]=20
[  108.012967] 2020-12-16 17:49:43 unxz -k /tmp/vmlinux.xz
[  108.012969]=20
[  111.704327] 2020-12-16 17:49:47 cp /tmp/vmlinux /kbuild/obj/x86_64/x86_6=
4-rhel-8.3
[  111.704330]=20
[  111.837837] ignored_by_lkp: BPF filter
[  111.837839]=20
[  111.880133] ignored_by_lkp: LLVM search and compile
[  111.880136]=20
[  111.922454] ignored_by_lkp: Add vfs_getname probe to get syscall args fi=
lenames
[  111.922457]=20
[  111.964866] ignored_by_lkp: Use vfs_getname probe to get syscall args fi=
lenames
[  111.964869]=20
[  112.006694] ignored_by_lkp: Check open filename arg using perf trace + v=
fs_getname
[  112.006697]=20
[  112.047139] ignored_by_lkp: builtin clang support
[  112.047142]=20
[  112.096068] 2020-12-16 17:49:47 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 1
[  112.096071]=20
[  112.914014]  1: vmlinux symtab matches kallsyms                         =
        : Ok
[  112.914017]=20
[  112.934210] 2020-12-16 17:49:48 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 2
[  112.934212]=20
[  113.003176]  2: Detect openat syscall event                             =
        : Ok
[  113.003179]=20
[  113.023568] 2020-12-16 17:49:48 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 3
[  113.023570]=20
[  113.087913]  3: Detect openat syscall event on all cpus                 =
        : Ok
[  113.087916]=20
[  113.108413] 2020-12-16 17:49:48 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 4
[  113.108416]=20
[  113.230822]  4: Read samples using the mmap interface                   =
        : FAILED!
[  113.230825]=20
[  113.251189] 2020-12-16 17:49:49 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 5
[  113.251191]=20
[  113.295884]  5: Test data source output                                 =
        : Ok
[  113.295887]=20
[  113.316324] 2020-12-16 17:49:49 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 6
[  113.316327]=20
[  114.595537]  6: Parse event definition strings                          =
        : FAILED!
[  114.595540]=20
[  114.615968] 2020-12-16 17:49:50 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 7
[  114.615971]=20
[  114.662572]  7: Simple expression parser                                =
        : Ok
[  114.662575]=20
[  114.683668] 2020-12-16 17:49:50 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 8
[  114.683671]=20
[  116.742774]  8: PERF_RECORD_* events & perf_sample fields               =
        : Ok
[  116.742777]=20
[  116.763337] 2020-12-16 17:49:52 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 9
[  116.763339]=20
[  116.814777]  9: Parse perf pmu format                                   =
        : Ok
[  116.814779]=20
[  116.835444] 2020-12-16 17:49:52 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 10
[  116.835447]=20
[  116.862518] 10: PMU events                                              =
        :
[  116.862521]=20
[  116.881252] 10.1: PMU event table sanity                                =
        : Ok
[  116.881254]=20
[  116.969355] 10.2: PMU event map aliases                                 =
        : Ok
[  116.969357]=20
[  118.651403] 10.3: Parsing of PMU event table metrics                    =
        : Skip (some metrics failed)
[  118.651406]=20
[  118.782921] 10.4: Parsing of PMU event table metrics with fake PMUs     =
        : Ok
[  118.782924]=20
[  118.803845] 2020-12-16 17:49:54 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 11
[  118.803847]=20
[  118.850324] 11: DSO data read                                           =
        : Ok
[  118.850326]=20
[  118.871000] 2020-12-16 17:49:54 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 12
[  118.871003]=20
[  118.918252] 12: DSO data cache                                          =
        : Ok
[  118.918255]=20
[  118.938958] 2020-12-16 17:49:54 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 13
[  118.938961]=20
[  118.984772] 13: DSO data reopen                                         =
        : Ok
[  118.984775]=20
[  119.005043] 2020-12-16 17:49:54 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 14
[  119.005046]=20
[  119.052221] 14: Roundtrip evsel->name                                   =
        : Ok
[  119.052224]=20
[  119.072722] 2020-12-16 17:49:54 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 15
[  119.072724]=20
[  119.120570] 15: Parse sched tracepoints fields                          =
        : Ok
[  119.120573]=20
[  119.141054] 2020-12-16 17:49:55 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 16
[  119.141057]=20
[  119.208327] 16: syscalls:sys_enter_openat event fields                  =
        : Ok
[  119.208330]=20
[  119.228779] 2020-12-16 17:49:55 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 17
[  119.228781]=20
[  133.223831] 17: Setup struct perf_event_attr                            =
        : Ok
[  133.223834]=20
[  133.244612] 2020-12-16 17:50:09 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 18
[  133.244614]=20
[  133.291029] 18: Match and link multiple hists                           =
        : Ok
[  133.291032]=20
[  133.311730] 2020-12-16 17:50:09 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 19
[  133.311733]=20
[  133.369668] 19: 'import perf' in python                                 =
        : FAILED!
[  133.369671]=20
[  133.390739] 2020-12-16 17:50:09 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 20
[  133.390741]=20
[  133.435496] 20: Breakpoint overflow signal handler                      =
        : Ok
[  133.435515]=20
[  133.455973] 2020-12-16 17:50:09 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 21
[  133.455976]=20
[  133.508927] 21: Breakpoint overflow sampling                            =
        : Ok
[  133.508930]=20
[  133.529616] 2020-12-16 17:50:09 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 22
[  133.529618]=20
[  133.575377] 22: Breakpoint accounting                                   =
        : Ok
[  133.575380]=20
[  133.596006] 2020-12-16 17:50:09 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 23
[  133.596009]=20
[  133.623277] 23: Watchpoint                                              =
        :
[  133.623280]=20
[  133.641811] 23.1: Read Only Watchpoint                                  =
        : Skip
[  133.641813]=20
[  133.659937] 23.2: Write Only Watchpoint                                 =
        : Ok
[  133.659939]=20
[  133.678289] 23.3: Read / Write Watchpoint                               =
        : Ok
[  133.678292]=20
[  133.696423] 23.4: Modify Watchpoint                                     =
        : Ok
[  133.696426]=20
[  133.717029] 2020-12-16 17:50:09 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 24
[  133.717032]=20
[  133.794353] 24: Number of exit events of a simple workload              =
        : FAILED!
[  133.794356]=20
[  133.815108] 2020-12-16 17:50:09 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 25
[  133.815110]=20
[  133.913857] 25: Software clock events period values                     =
        : FAILED!
[  133.913859]=20
[  133.934282] 2020-12-16 17:50:09 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 26
[  133.934285]=20
[  136.948680] 26: Object code reading                                     =
        : FAILED!
[  136.948683]=20
[  136.969333] 2020-12-16 17:50:12 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 27
[  136.969335]=20
[  137.015753] 27: Sample parsing                                          =
        : Ok
[  137.015756]=20
[  137.036261] 2020-12-16 17:50:12 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 28
[  137.036263]=20
[  137.114228] 28: Use a dummy software event to keep tracking             =
        : FAILED!
[  137.114231]=20
[  137.134932] 2020-12-16 17:50:13 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 29
[  137.134934]=20
[  137.180772] 29: Parse with no sample_id_all bit set                     =
        : Ok
[  137.180775]=20
[  137.201745] 2020-12-16 17:50:13 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 30
[  137.201748]=20
[  137.248536] 30: Filter hist entries                                     =
        : Ok
[  137.248551]=20
[  137.269720] 2020-12-16 17:50:13 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 31
[  137.269723]=20
[  137.681457] 31: Lookup mmap thread                                      =
        : FAILED!
[  137.681460]=20
[  137.701783] 2020-12-16 17:50:13 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 32
[  137.701785]=20
[  137.748111] 32: Share thread maps                                       =
        : Ok
[  137.748113]=20
[  137.769189] 2020-12-16 17:50:13 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 33
[  137.769192]=20
[  137.815835] 33: Sort output of hist entries                             =
        : Ok
[  137.815838]=20
[  137.836664] 2020-12-16 17:50:13 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 34
[  137.836666]=20
[  137.883199] 34: Cumulate child hist entries                             =
        : Ok
[  137.883202]=20
[  137.903922] 2020-12-16 17:50:13 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 35
[  137.903925]=20
[  138.383971] 35: Track with sched_switch                                 =
        : FAILED!
[  138.383973]=20
[  138.404625] 2020-12-16 17:50:14 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 36
[  138.404627]=20
[  138.450441] 36: Filter fds with revents mask in a fdarray               =
        : Ok
[  138.450444]=20
[  138.471617] 2020-12-16 17:50:14 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 37
[  138.471620]=20
[  138.516912] 37: Add fd to a fdarray, making it autogrow                 =
        : Ok
[  138.516915]=20
[  138.537618] 2020-12-16 17:50:14 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 38
[  138.537620]=20
[  138.582978] 38: kmod_path__parse                                        =
        : Ok
[  138.582981]=20
[  138.603919] 2020-12-16 17:50:14 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 39
[  138.603922]=20
[  138.648611] 39: Thread map                                              =
        : Ok
[  138.648614]=20
[  138.670421] 2020-12-16 17:50:14 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 41
[  138.670423]=20
[  138.897906] 41: Session topology                                        =
        : FAILED!
[  138.897909]=20
[  138.920149] 2020-12-16 17:50:14 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 43
[  138.920152]=20
[  138.994093] 43: Synthesize thread map                                   =
        : FAILED!
[  138.994095]=20
[  139.014754] 2020-12-16 17:50:14 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 44
[  139.014757]=20
[  139.087412] 44: Remove thread map                                       =
        : FAILED!
[  139.087415]=20
[  139.108062] 2020-12-16 17:50:14 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 45
[  139.108065]=20
[  139.154055] 45: Synthesize cpu map                                      =
        : Ok
[  139.154058]=20
[  139.174678] 2020-12-16 17:50:15 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 46
[  139.174680]=20
[  139.220000] 46: Synthesize stat config                                  =
        : Ok
[  139.220003]=20
[  139.241010] 2020-12-16 17:50:15 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 47
[  139.241012]=20
[  139.285947] 47: Synthesize stat                                         =
        : Ok
[  139.285950]=20
[  139.306736] 2020-12-16 17:50:15 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 48
[  139.306739]=20
[  139.351586] 48: Synthesize stat round                                   =
        : Ok
[  139.351588]=20
[  139.372040] 2020-12-16 17:50:15 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 49
[  139.372043]=20
[  139.451977] 49: Synthesize attr update                                  =
        : FAILED!
[  139.451980]=20
[  139.472385] 2020-12-16 17:50:15 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 50
[  139.472388]=20
[  139.530341] 50: Event times                                             =
        : Ok
[  139.530344]=20
[  139.550711] 2020-12-16 17:50:15 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 51
[  139.550713]=20
[  139.688497] 51: Read backward ring buffer                               =
        : Ok
[  139.688513]=20
[  139.709569] 2020-12-16 17:50:15 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 52
[  139.709571]=20
[  139.785372] 52: Print cpu map                                           =
        : FAILED!
[  139.785375]=20
[  139.806220] 2020-12-16 17:50:15 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 53
[  139.806223]=20
[  139.851253] 53: Merge cpu map                                           =
        : Ok
[  139.851256]=20
[  139.872207] 2020-12-16 17:50:15 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 54
[  139.872209]=20
[  139.919752] 54: Probe SDT events                                        =
        : Ok
[  139.919755]=20
[  139.940808] 2020-12-16 17:50:15 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 55
[  139.940811]=20
[  139.985620] 55: is_printable_array                                      =
        : Ok
[  139.985623]=20
[  140.006204] 2020-12-16 17:50:15 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 56
[  140.006207]=20
[  140.051824] 56: Print bitmap                                            =
        : Ok
[  140.051827]=20
[  140.072962] 2020-12-16 17:50:15 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 57
[  140.072965]=20
[  140.118279] 57: perf hooks                                              =
        : Ok
[  140.118282]=20
[  140.140067] 2020-12-16 17:50:16 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 59
[  140.140069]=20
[  140.184858] 59: unit_number__scnprintf                                  =
        : Ok
[  140.184861]=20
[  140.205751] 2020-12-16 17:50:16 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 60
[  140.205754]=20
[  140.250604] 60: mem2node                                                =
        : Ok
[  140.250607]=20
[  140.271076] 2020-12-16 17:50:16 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 61
[  140.271078]=20
[  140.316265] 61: time utils                                              =
        : Ok
[  140.316267]=20
[  140.337036] 2020-12-16 17:50:16 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 62
[  140.337039]=20
[  140.382800] 62: Test jit_write_elf                                      =
        : Ok
[  140.382803]=20
[  140.403704] 2020-12-16 17:50:16 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 63
[  140.403707]=20
[  140.431253] 63: Test libpfm4 support                                    =
        : Skip (not compiled in)
[  140.431256]=20
[  140.450578] 2020-12-16 17:50:16 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 64
[  140.450581]=20
[  140.496889] 64: Test api io                                             =
        : Ok
[  140.496892]=20
[  140.517921] 2020-12-16 17:50:16 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 65
[  140.517923]=20
[  140.598417] 65: maps__merge_in                                          =
        : FAILED!
[  140.598419]=20
[  140.618964] 2020-12-16 17:50:16 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 66
[  140.618967]=20
[  140.664140] 66: Demangle Java                                           =
        : Ok
[  140.664143]=20
[  140.685218] 2020-12-16 17:50:16 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 67
[  140.685221]=20
[  140.734292] 67: Parse and process metrics                               =
        : Ok
[  140.734295]=20
[  140.755141] 2020-12-16 17:50:16 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 68
[  140.755144]=20
[  140.828941] 68: PE file support                                         =
        : FAILED!
[  140.828944]=20
[  140.850021] 2020-12-16 17:50:16 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 69
[  140.850023]=20
[  140.895976] 69: Event expansion for cgroups                             =
        : Ok
[  140.895979]=20
[  140.916784] 2020-12-16 17:50:16 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 70
[  140.916786]=20
[  141.178672] 70: x86 rdpmc                                               =
        : Ok
[  141.178675]=20
[  141.199437] 2020-12-16 17:50:17 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 71
[  141.199439]=20
[  141.275757] 71: Convert perf time to TSC                                =
        : FAILED!
[  141.275760]=20
[  141.296810] 2020-12-16 17:50:17 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 72
[  141.296812]=20
[  141.687621] 72: DWARF unwind                                            =
        : FAILED!
[  141.687624]=20
[  141.708127] 2020-12-16 17:50:17 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 73
[  141.708130]=20
[  141.754560] 73: x86 instruction decoder - new instructions              =
        : Ok
[  141.754562]=20
[  141.775365] 2020-12-16 17:50:17 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 74
[  141.775368]=20
[  141.820225] 74: Intel PT packet decoder                                 =
        : Ok
[  141.820228]=20
[  141.840810] 2020-12-16 17:50:17 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 75
[  141.840813]=20
[  141.889498] 75: x86 bp modify                                           =
        : Ok
[  141.889501]=20
[  141.910854] 2020-12-16 17:50:17 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 76
[  141.910856]=20
[  143.705026] 76: probe libc's inet_pton & backtrace it with ping         =
        : Ok
[  143.705029]=20
[  143.729593] 2020-12-16 17:50:19 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 80
[  143.729596]=20
[  145.163682] 80: build id cache operations                               =
        : FAILED!
[  145.163684]=20
[  145.184670] 2020-12-16 17:50:21 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 81
[  145.184673]=20
[  146.482536] 81: Zstd perf.data compression/decompression                =
        : FAILED!
[  146.482551]=20
[  146.502943] 2020-12-16 17:50:22 sudo /usr/src/perf_selftests-x86_64-rhel=
-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 82
[  146.502945]=20
[  146.718831] 82: Check Arm CoreSight trace data recording and synthesized=
 samples: Skip
[  146.718834]=20
[  146.768176] /usr/bin/wget -q --timeout=3D1800 --tries=3D1 --local-encodi=
ng=3DUTF-8 http://internal-lkp-server:80/~lkp/cgi-bin/lkp-jobfile-append-va=
r?job_file=3D/lkp/jobs/scheduled/lkp-skl-d04/perf-sanity-tests-gcc-ucode=3D=
0xe2-debian-10.4-x86_64-20200603.cgz-c12b7a396ff758a262002b5b326d83efeae711=
40-20201217-40483-18lglgq-0.yaml&job_state=3Dpost_run -O /dev/null
[  146.768178]=20
[  148.364350] kill 2505 vmstat --timestamp -n 10=20
[  148.364352]=20
[  148.371167] kill 2503 dmesg --follow --decode=20
[  148.371168]=20
[  148.378266] wait for background processes: 2510 2507 oom-killer meminfo
[  148.378267]=20
[  154.245201] /usr/bin/wget -q --timeout=3D1800 --tries=3D1 --local-encodi=
ng=3DUTF-8 http://internal-lkp-server:80/~lkp/cgi-bin/lkp-jobfile-append-va=
r?job_file=3D/lkp/jobs/scheduled/lkp-skl-d04/perf-sanity-tests-gcc-ucode=3D=
0xe2-debian-10.4-x86_64-20200603.cgz-c12b7a396ff758a262002b5b326d83efeae711=
40-20201217-40483-18lglgq-0.yaml&loadavg=3D1.88%201.15%200.46%201/133%20897=
5&start_time=3D1608140908&end_time=3D1608141022&version=3D/lkp/lkp/.src-202=
01216-155222:a579723e:720bd231a& -O /dev/null
[  154.245204]=20
[  154.295531] /usr/bin/wget -q --timeout=3D1800 --tries=3D1 --local-encodi=
ng=3DUTF-8 http://internal-lkp-server:80/~lkp/cgi-bin/lkp-jobfile-append-va=
r?job_file=3D/lkp/jobs/scheduled/lkp-skl-d04/perf-sanity-tests-gcc-ucode=3D=
0xe2-debian-10.4-x86_64-20200603.cgz-c12b7a396ff758a262002b5b326d83efeae711=
40-20201217-40483-18lglgq-0.yaml&job_state=3Dfinished -O /dev/null
[  154.295532]=20
[  154.334554] /usr/bin/wget -q --timeout=3D1800 --tries=3D1 --local-encodi=
ng=3DUTF-8 http://internal-lkp-server:80/~lkp/cgi-bin/lkp-post-run?job_file=
=3D/lkp/jobs/scheduled/lkp-skl-d04/perf-sanity-tests-gcc-ucode=3D0xe2-debia=
n-10.4-x86_64-20200603.cgz-c12b7a396ff758a262002b5b326d83efeae71140-2020121=
7-40483-18lglgq-0.yaml -O /dev/null
[  154.334555]=20
[  155.675884] getting new job...
[  155.675886]=20
[  155.707184] /usr/bin/wget -q --timeout=3D1800 --tries=3D1 --local-encodi=
ng=3DUTF-8 http://internal-lkp-server:80/~lkp/cgi-bin/gpxelinux.cgi?hostnam=
e=3Dlkp-skl-d04&mac=3D64:00:6a:30:92:35&last_kernel=3D/pkg/linux/x86_64-rhe=
l-8.3/gcc-9/c12b7a396ff758a262002b5b326d83efeae71140/vmlinuz-5.10.0-02717-g=
c12b7a396ff7&lkp_wtmp -O /tmp/next-job-lkp
[  155.707187]=20
[  159.084227] 22 blocks
[  159.084229]=20
[  159.085867] /usr/bin/wget -q --timeout=3D1800 --tries=3D1 --local-encodi=
ng=3DUTF-8 http://internal-lkp-server:80/~lkp//lkp/jobs/scheduled/lkp-skl-d=
04/hwsim-group-29-ucode=3D0xe2-debian-10.4-x86_64-20200603.cgz-75df529bec91=
10dad43ab30e2d9490242529e8b8-20201217-73768-91mxs2-0.cgz -O /tmp/next-job.c=
gz
[  159.087988]=20
[  159.119027] /usr/bin/wget -q --timeout=3D1800 --tries=3D1 --local-encodi=
ng=3DUTF-8 http://internal-lkp-server:80/~lkp/cgi-bin/lkp-wtmp?tbox_name=3D=
lkp-skl-d04&tbox_state=3Dkexec_to_next_job -O /dev/null
[  159.119029]=20
[  159.616594] downloading kernel image ...
[  159.616596]=20
[  159.647472] /usr/bin/wget -q --timeout=3D1800 --tries=3D1 --local-encodi=
ng=3DUTF-8 http://internal-lkp-server:80/~lkp/cgi-bin/lkp-jobfile-append-va=
r?job_file=3D/lkp/jobs/scheduled/lkp-skl-d04/hwsim-group-29-ucode=3D0xe2-de=
bian-10.4-x86_64-20200603.cgz-75df529bec9110dad43ab30e2d9490242529e8b8-2020=
1217-73768-91mxs2-0.yaml&job_state=3Dwget_kernel -O /dev/null
[  159.647494]=20
[  160.182393] /usr/bin/wget -q --timeout=3D1800 --tries=3D1 --local-encodi=
ng=3DUTF-8 http://internal-lkp-server:80/~lkp/pkg/linux/x86_64-rhel-8.3/gcc=
-9/75df529bec9110dad43ab30e2d9490242529e8b8/vmlinuz-5.9.0-rc3-00005-g75df52=
9bec911 -N -P /opt/rootfs/tmp/pkg/linux/x86_64-rhel-8.3/gcc-9/75df529bec911=
0dad43ab30e2d9490242529e8b8
[  160.182396]=20
[  160.212246] downloading initrds ...
[  160.212248]=20
[  160.224737] /usr/bin/wget -q --timeout=3D1800 --tries=3D1 --local-encodi=
ng=3DUTF-8 http://internal-lkp-server:80/~lkp/cgi-bin/lkp-jobfile-append-va=
r?job_file=3D/lkp/jobs/scheduled/lkp-skl-d04/hwsim-group-29-ucode=3D0xe2-de=
bian-10.4-x86_64-20200603.cgz-75df529bec9110dad43ab30e2d9490242529e8b8-2020=
1217-73768-91mxs2-0.yaml&job_state=3Dwget_initrd -O /dev/null
[  160.224738]=20
[  160.761440] /usr/bin/wget -q --timeout=3D1800 --tries=3D1 --local-encodi=
ng=3DUTF-8 http://internal-lkp-server:80/~lkp/osimage/debian/debian-10.4-x8=
6_64-20200603.cgz -N -P /opt/rootfs/tmp/osimage/debian
[  160.761442]=20
[  160.930769] /opt/rootfs/tmp/osimage/debian/debian-10.4-x86_64-20200603.c=
gz isn't modified
[  160.930772]=20
[  160.946498] 22 blocks
[  160.946500]=20
[  160.948177] /usr/bin/wget -q --timeout=3D1800 --tries=3D1 --local-encodi=
ng=3DUTF-8 http://internal-lkp-server:80/~lkp/lkp/jobs/scheduled/lkp-skl-d0=
4/hwsim-group-29-ucode=3D0xe2-debian-10.4-x86_64-20200603.cgz-75df529bec911=
0dad43ab30e2d9490242529e8b8-20201217-73768-91mxs2-0.cgz -N -P /opt/rootfs/t=
mp/lkp/jobs/scheduled/lkp-skl-d04
[  160.950246]=20
[  160.983810] /usr/bin/wget -q --timeout=3D1800 --tries=3D1 --local-encodi=
ng=3DUTF-8 http://internal-lkp-server:80/~lkp/osimage/user/lkp/lkp-x86_64.c=
gz -N -P /opt/rootfs/tmp/osimage/user/lkp
[  160.983812]=20
[  161.002887] /opt/rootfs/tmp/osimage/user/lkp/lkp-x86_64.cgz isn't modifi=
ed
[  161.002888]=20
[  161.016764] /usr/bin/wget -q --timeout=3D1800 --tries=3D1 --local-encodi=
ng=3DUTF-8 http://internal-lkp-server:80/~lkp/osimage/deps/debian-10.4-x86_=
64-20200603.cgz/run-ipconfig_20200608.cgz -N -P /opt/rootfs/tmp/osimage/dep=
s/debian-10.4-x86_64-20200603.cgz
[  161.016765]=20
[  161.042432] /opt/rootfs/tmp/osimage/deps/debian-10.4-x86_64-20200603.cgz=
/run-ipconfig_20200608.cgz isn't modified
[  161.042433]=20
[  161.059277] /usr/bin/wget -q --timeout=3D1800 --tries=3D1 --local-encodi=
ng=3DUTF-8 http://internal-lkp-server:80/~lkp/osimage/deps/debian-10.4-x86_=
64-20200603.cgz/lkp_20201211.cgz -N -P /opt/rootfs/tmp/osimage/deps/debian-=
10.4-x86_64-20200603.cgz
[  161.059279]=20
[  161.083814] /opt/rootfs/tmp/osimage/deps/debian-10.4-x86_64-20200603.cgz=
/lkp_20201211.cgz isn't modified
[  161.083816]=20
[  161.099802] /usr/bin/wget -q --timeout=3D1800 --tries=3D1 --local-encodi=
ng=3DUTF-8 http://internal-lkp-server:80/~lkp/osimage/deps/debian-10.4-x86_=
64-20200603.cgz/rsync-rootfs_20200608.cgz -N -P /opt/rootfs/tmp/osimage/dep=
s/debian-10.4-x86_64-20200603.cgz
[  161.099803]=20
[  161.125282] /opt/rootfs/tmp/osimage/deps/debian-10.4-x86_64-20200603.cgz=
/rsync-rootfs_20200608.cgz isn't modified
[  161.125284]=20
[  161.141988] /usr/bin/wget -q --timeout=3D1800 --tries=3D1 --local-encodi=
ng=3DUTF-8 http://internal-lkp-server:80/~lkp/osimage/deps/debian-10.4-x86_=
64-20200603.cgz/hwsim_20201110.cgz -N -P /opt/rootfs/tmp/osimage/deps/debia=
n-10.4-x86_64-20200603.cgz
[  161.141989]=20
[  161.337962] /opt/rootfs/tmp/osimage/deps/debian-10.4-x86_64-20200603.cgz=
/hwsim_20201110.cgz isn't modified
[  161.337964]=20
[  161.354805] /usr/bin/wget -q --timeout=3D1800 --tries=3D1 --local-encodi=
ng=3DUTF-8 http://internal-lkp-server:80/~lkp/osimage/pkg/debian-10.4-x86_6=
4-20200603.cgz/hwsim-x86_64-537ab94-1_20201123.cgz -N -P /opt/rootfs/tmp/os=
image/pkg/debian-10.4-x86_64-20200603.cgz
[  161.354807]=20
[  161.381284] /opt/rootfs/tmp/osimage/pkg/debian-10.4-x86_64-20200603.cgz/=
hwsim-x86_64-537ab94-1_20201123.cgz isn't modified
[  161.381286]=20
[  161.399014] /usr/bin/wget -q --timeout=3D1800 --tries=3D1 --local-encodi=
ng=3DUTF-8 http://internal-lkp-server:80/~lkp/osimage/deps/debian-10.4-x86_=
64-20200603.cgz/hw_20200715.cgz -N -P /opt/rootfs/tmp/osimage/deps/debian-1=
0.4-x86_64-20200603.cgz
[  161.399015]=20
[  161.423562] /opt/rootfs/tmp/osimage/deps/debian-10.4-x86_64-20200603.cgz=
/hw_20200715.cgz isn't modified
[  161.423564]=20
[  161.440768] /usr/bin/wget -q --timeout=3D1800 --tries=3D1 --local-encodi=
ng=3DUTF-8 http://internal-lkp-server:80/~lkp/pkg/linux/x86_64-rhel-8.3/gcc=
-9/75df529bec9110dad43ab30e2d9490242529e8b8/modules.cgz -N -P /opt/rootfs/t=
mp/pkg/linux/x86_64-rhel-8.3/gcc-9/75df529bec9110dad43ab30e2d9490242529e8b8
[  161.440770]=20
[  161.706214] /opt/rootfs/tmp/pkg/linux/x86_64-rhel-8.3/gcc-9/75df529bec91=
10dad43ab30e2d9490242529e8b8/modules.cgz isn't modified
[  161.706217]=20
[  161.723007] /usr/bin/wget -q --timeout=3D1800 --tries=3D1 --local-encodi=
ng=3DUTF-8 http://internal-lkp-server:80/~lkp/osimage/ucode/intel-ucode-202=
01117.cgz -N -P /opt/rootfs/tmp/osimage/ucode
[  161.723009]=20
[  161.742427] /opt/rootfs/tmp/osimage/ucode/intel-ucode-20201117.cgz isn't=
 modified
[  161.742429]=20
[  162.643773] /usr/bin/wget -q --timeout=3D1800 --tries=3D1 --local-encodi=
ng=3DUTF-8 http://internal-lkp-server:80/~lkp/cgi-bin/lkp-jobfile-append-va=
r?job_file=3D/lkp/jobs/scheduled/lkp-skl-d04/hwsim-group-29-ucode=3D0xe2-de=
bian-10.4-x86_64-20200603.cgz-75df529bec9110dad43ab30e2d9490242529e8b8-2020=
1217-73768-91mxs2-0.yaml&last_kernel=3D5.10.0-02717-gc12b7a396ff7 -O /dev/n=
ull
[  162.643776]=20
[  163.184000] /usr/bin/wget -q --timeout=3D1800 --tries=3D1 --local-encodi=
ng=3DUTF-8 http://internal-lkp-server:80/~lkp/cgi-bin/lkp-jobfile-append-va=
r?job_file=3D/lkp/jobs/scheduled/lkp-skl-d04/hwsim-group-29-ucode=3D0xe2-de=
bian-10.4-x86_64-20200603.cgz-75df529bec9110dad43ab30e2d9490242529e8b8-2020=
1217-73768-91mxs2-0.yaml&job_state=3Dbooting -O /dev/null
[  163.184004]=20
[  163.685300] LKP: kexec loading...
[  163.685303]=20
[  163.694064] kexec --noefi -l /opt/rootfs/tmp/pkg/linux/x86_64-rhel-8.3/g=
cc-9/75df529bec9110dad43ab30e2d9490242529e8b8/vmlinuz-5.9.0-rc3-00005-g75df=
529bec911 --initrd=3D/opt/rootfs/tmp/initrd-concatenated
[  163.694065]=20
[  166.654819] --append=3Dip=3D::::lkp-skl-d04::dhcp root=3D/dev/ram0 user=
=3Dlkp job=3D/lkp/jobs/scheduled/lkp-skl-d04/hwsim-group-29-ucode=3D0xe2-de=
bian-10.4-x86_64-20200603.cgz-75df529bec9110dad43ab30e2d9490242529e8b8-2020=
1217-73768-91mxs2-0.yaml ARCH=3Dx86_64 kconfig=3Dx86_64-rhel-8.3 branch=3Di=
nternal-devel/devel-hourly-2020120316 commit=3D75df529bec9110dad43ab30e2d94=
90242529e8b8 BOOT_IMAGE=3D/pkg/linux/x86_64-rhel-8.3/gcc-9/75df529bec9110da=
d43ab30e2d9490242529e8b8/vmlinuz-5.9.0-rc3-00005-g75df529bec911 max_uptime=
=3D2100 RESULT_ROOT=3D/result/hwsim/group-29-ucode=3D0xe2/lkp-skl-d04/debia=
n-10.4-x86_64-20200603.cgz/x86_64-rhel-8.3/gcc-9/75df529bec9110dad43ab30e2d=
9490242529e8b8/13 LKP_SERVER=3Dinternal-lkp-server nokaslr selinux=3D0 debu=
g apic=3Ddebug sysrq_always_enabled rcupdate.rcu_cpu_stall_timeout=3D100 ne=
t.ifnames=3D0 printk.devkmsg=3Don panic=3D-1 softlockup_panic=3D1 nmi_watch=
dog=3Dpanic oops=3Dpanic load_ramdisk=3D2 prompt_ramdisk=3D0 drbd.min
[  166.654822]=20
LKP: rebooting
[  167.725115] e1000e 0000:00:1f.6 eth0: NIC Link is Down
[  167.730366] kvm: exiting hardware virtualization
[  167.735099] sd 1:0:0:0: [sdb] Synchronizing SCSI cache
[  167.740305] sd 0:0:0:0: [sda] Synchronizing SCSI cache
[  167.745735] e1000e: EEE TX LPI TIMER: 00000011
Starting new kernel

--P+33d92oIH25kiaB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=perf-sanity-tests
Content-Transfer-Encoding: quoted-printable

2020-12-16 20:52:52 make ARCH=3D EXTRA_CFLAGS=3D-fno-omit-frame-pointer -fs=
anitize=3Dundefined -fsanitize=3Daddress -C /usr/src/perf_selftests-x86_64-=
rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf
make: Entering directory '/usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396=
ff758a262002b5b326d83efeae71140/tools/perf'
  BUILD:   Doing 'make =1B[33m-j4=1B[m' parallel build
  HOSTCC   fixdep.o
  HOSTLD   fixdep-in.o
  LINK     fixdep
diff -u tools/include/uapi/drm/i915_drm.h include/uapi/drm/i915_drm.h
diff -u tools/include/uapi/linux/perf_event.h include/uapi/linux/perf_event=
=2Eh
diff -u tools/include/uapi/linux/stat.h include/uapi/linux/stat.h
diff -u tools/include/linux/build_bug.h include/linux/build_bug.h

Auto-detecting system features:
=2E..                         dwarf: [ =1B[32mon=1B[m  ]
=2E..            dwarf_getlocations: [ =1B[32mon=1B[m  ]
=2E..                         glibc: [ =1B[32mon=1B[m  ]
=2E..                        libbfd: [ =1B[32mon=1B[m  ]
=2E..                libbfd-buildid: [ =1B[32mon=1B[m  ]
=2E..                        libcap: [ =1B[32mon=1B[m  ]
=2E..                        libelf: [ =1B[32mon=1B[m  ]
=2E..                       libnuma: [ =1B[32mon=1B[m  ]
=2E..        numa_num_possible_cpus: [ =1B[32mon=1B[m  ]
=2E..                       libperl: [ =1B[32mon=1B[m  ]
=2E..                     libpython: [ =1B[32mon=1B[m  ]
=2E..                     libcrypto: [ =1B[32mon=1B[m  ]
=2E..                     libunwind: [ =1B[32mon=1B[m  ]
=2E..            libdw-dwarf-unwind: [ =1B[32mon=1B[m  ]
=2E..                          zlib: [ =1B[32mon=1B[m  ]
=2E..                          lzma: [ =1B[32mon=1B[m  ]
=2E..                     get_cpuid: [ =1B[32mon=1B[m  ]
=2E..                           bpf: [ =1B[32mon=1B[m  ]
=2E..                        libaio: [ =1B[32mon=1B[m  ]
=2E..                       libzstd: [ =1B[32mon=1B[m  ]
=2E..        disassembler-four-args: [ =1B[32mon=1B[m  ]

  CC       fd/array.o
  CC       exec-cmd.o
  CC       event-parse.o
  CC       core.o
  CC       cpumap.o
  LD       fd/libapi-in.o
  CC       fs/fs.o
  CC       help.o
  CC       fs/tracing_path.o
  CC       fs/cgroup.o
  LD       fs/libapi-in.o
  CC       cpu.o
  CC       debug.o
  CC       str_error_r.o
  LD       libapi-in.o
  AR       libapi.a
  CC       threadmap.o
  GEN      bpf_helper_defs.h
  CC       pager.o
  MKDIR    staticobjs/
  CC       evsel.o
  CC       staticobjs/libbpf.o
  CC       parse-options.o
  CC       evlist.o
  CC       event-plugin.o
  CC       trace-seq.o
  CC       parse-filter.o
  CC       mmap.o
  CC       parse-utils.o
  CC       kbuffer-parse.o
  CC       run-command.o
  CC       tep_strerror.o
  CC       event-parse-api.o
  LD       libtraceevent-in.o
  LINK     libtraceevent.a
  CC       sigchain.o
  CC       zalloc.o
  CC       xyarray.o
  CC       subcmd-config.o
  LD       libsubcmd-in.o
  CC       lib.o
  AR       libsubcmd.a
  GEN      common-cmds.h
  LD       libperf-in.o
  AR       libperf.a
  MKDIR    staticobjs/
  CC       staticobjs/bpf.o
  CC       staticobjs/nlattr.o
  CC       staticobjs/btf.o
  CC       staticobjs/libbpf_errno.o
  CC       staticobjs/str_error.o
  CC       staticobjs/netlink.o
  CC       staticobjs/bpf_prog_linfo.o
  CC       staticobjs/libbpf_probes.o
  CC       staticobjs/xsk.o
  CC       staticobjs/hashmap.o
  CC       staticobjs/btf_dump.o
  CC       staticobjs/ringbuf.o
  HOSTCC   pmu-events/json.o
  HOSTCC   pmu-events/jsmn.o
  CC       plugin_jbd2.o
  LD       staticobjs/libbpf-in.o
  LINK     libbpf.a
  HOSTCC   pmu-events/jevents.o
  CC       jvmti/libjvmti.o
  LD       plugin_jbd2-in.o
  CC       plugin_hrtimer.o
  LD       plugin_hrtimer-in.o
  CC       plugin_kmem.o
  HOSTLD   pmu-events/jevents-in.o
  GEN      perf-archive
  GEN      perf-with-kcore
  LINK     pmu-events/jevents
  LD       plugin_kmem-in.o
  CC       plugin_kvm.o
  GEN      pmu-events/pmu-events.c
  LD       plugin_kvm-in.o
  CC       plugin_mac80211.o
  LD       plugin_mac80211-in.o
  CC       plugin_sched_switch.o
  LD       plugin_sched_switch-in.o
  CC       plugin_function.o
  CC       pmu-events/pmu-events.o
  LD       plugin_function-in.o
  CC       plugin_futex.o
  LD       plugin_futex-in.o
  CC       plugin_xen.o
  CC       jvmti/jvmti_agent.o
  LD       plugin_xen-in.o
  CC       plugin_scsi.o
  LD       plugin_scsi-in.o
  CC       plugin_cfg80211.o
  LD       plugin_cfg80211-in.o
  CC       plugin_tlb.o
  LD       plugin_tlb-in.o
  LINK     plugin_jbd2.so
  LINK     plugin_hrtimer.so
  LINK     plugin_kmem.so
  LINK     plugin_kvm.so
  LINK     plugin_mac80211.so
  LINK     plugin_sched_switch.so
  CC       jvmti/libstring.o
  LINK     plugin_function.so
  LD       pmu-events/pmu-events-in.o
  LINK     plugin_futex.so
  CC       builtin-bench.o
  LINK     plugin_xen.so
  CC       jvmti/libctype.o
  LINK     plugin_scsi.so
  LD       jvmti/jvmti-in.o
  CC       builtin-annotate.o
  LINK     libperf-jvmti.so
  LINK     plugin_cfg80211.so
  LINK     plugin_tlb.so
  CC       builtin-config.o
  GEN      libtraceevent-dynamic-list
  CC       builtin-diff.o
  CC       builtin-evlist.o
  GEN      python/perf.so
  CC       builtin-ftrace.o
  CC       builtin-help.o
  CC       builtin-sched.o
  CC       builtin-buildid-list.o
  CC       builtin-buildid-cache.o
  CC       builtin-kallsyms.o
  CC       builtin-list.o
  CC       builtin-record.o
  CC       builtin-report.o
  CC       builtin-stat.o
  CC       builtin-timechart.o
  CC       builtin-top.o
  CC       builtin-script.o
  CC       builtin-kmem.o
  CC       builtin-lock.o
  CC       builtin-kvm.o
  CC       builtin-inject.o
  CC       builtin-mem.o
  CC       builtin-data.o
  CC       builtin-version.o
  CC       builtin-c2c.o
  CC       builtin-trace.o
  CC       builtin-probe.o
  CC       bench/sched-messaging.o
  CC       bench/sched-pipe.o
  CC       bench/syscall.o
  CC       bench/mem-functions.o
  CC       bench/futex-hash.o
  CC       bench/futex-wake.o
  CC       bench/futex-wake-parallel.o
  CC       bench/futex-requeue.o
  CC       bench/futex-lock-pi.o
  CC       bench/epoll-wait.o
  CC       bench/epoll-ctl.o
  CC       bench/synthesize.o
  CC       bench/kallsyms-parse.o
  CC       bench/find-bit-bench.o
  CC       bench/inject-buildid.o
  CC       bench/mem-memcpy-x86-64-asm.o
  CC       bench/mem-memset-x86-64-asm.o
  CC       bench/numa.o
  CC       tests/builtin-test.o
  CC       tests/parse-events.o
  CC       util/annotate.o
  LD       bench/perf-in.o
  CC       util/block-info.o
  CC       tests/dso-data.o
  CC       util/block-range.o
  CC       tests/attr.o
  CC       util/build-id.o
  CC       tests/vmlinux-kallsyms.o
  CC       tests/openat-syscall.o
  CC       arch/common.o
  CC       tests/openat-syscall-all-cpus.o
  CC       arch/x86/util/header.o
  CC       tests/openat-syscall-tp-fields.o
  CC       arch/x86/util/tsc.o
  CC       arch/x86/util/pmu.o
  CC       arch/x86/util/kvm-stat.o
  CC       tests/mmap-basic.o
  CC       arch/x86/tests/regs_load.o
  CC       arch/x86/tests/dwarf-unwind.o
  CC       arch/x86/util/perf_regs.o
  CC       arch/x86/tests/arch-tests.o
  CC       arch/x86/tests/rdpmc.o
  CC       arch/x86/util/topdown.o
  CC       tests/perf-record.o
  CC       arch/x86/util/machine.o
  CC       arch/x86/tests/perf-time-to-tsc.o
  CC       arch/x86/util/event.o
  CC       arch/x86/tests/insn-x86.o
  CC       util/cacheline.o
  CC       util/config.o
  CC       arch/x86/util/dwarf-regs.o
  CC       arch/x86/util/unwind-libunwind.o
  CC       tests/evsel-roundtrip-name.o
  CC       arch/x86/util/auxtrace.o
  CC       arch/x86/tests/intel-pt-pkt-decoder-test.o
  CC       tests/evsel-tp-sched.o
  CC       arch/x86/util/archinsn.o
  CC       arch/x86/tests/bp-modify.o
  CC       tests/fdarray.o
  CC       arch/x86/util/intel-pt.o
  LD       arch/x86/tests/perf-in.o
  CC       arch/x86/util/intel-bts.o
  CC       util/copyfile.o
  CC       tests/pmu.o
  CC       tests/pmu-events.o
  CC       util/ctype.o
  CC       util/db-export.o
  CC       util/env.o
  CC       util/event.o
  CC       tests/hists_common.o
  LD       arch/x86/util/perf-in.o
  LD       arch/x86/perf-in.o
  LD       arch/perf-in.o
  CC       tests/hists_link.o
  CC       tests/hists_filter.o
  CC       util/evlist.o
  CC       tests/hists_output.o
  CC       util/sideband_evlist.o
  CC       tests/hists_cumulate.o
  CC       util/evsel.o
  CC       tests/python-use.o
  CC       tests/bp_signal.o
  CC       tests/bp_signal_overflow.o
  CC       tests/bp_account.o
  CC       tests/wp.o
  CC       util/evsel_fprintf.o
  CC       tests/task-exit.o
  CC       tests/sw-clock.o
  CC       tests/mmap-thread-lookup.o
  CC       util/perf_event_attr_fprintf.o
  CC       tests/thread-maps-share.o
  CC       tests/switch-tracking.o
  CC       tests/keep-tracking.o
  CC       tests/code-reading.o
  CC       util/evswitch.o
  CC       util/find_bit.o
  CC       tests/sample-parsing.o
  CC       util/get_current_dir_name.o
  CC       util/kallsyms.o
  CC       util/levenshtein.o
  CC       util/llvm-utils.o
  CC       tests/parse-no-sample-id-all.o
  CC       tests/kmod-path.o
  CC       tests/thread-map.o
  CC       ui/setup.o
  CC       ui/helpline.o
  CC       tests/llvm.o
  CC       ui/progress.o
  CC       ui/util.o
  CC       tests/bpf.o
  CC       tests/topology.o
  CC       ui/hist.o
  CC       util/mmap.o
  CC       util/memswap.o
  CC       tests/mem.o
  CC       tests/cpumap.o
  CC       ui/stdio/hist.o
  BISON    util/parse-events-bison.c
  CC       tests/stat.o
  CC       util/perf_regs.o
  CC       util/path.o
  CC       tests/event_update.o
  CC       util/print_binary.o
  CC       util/rlimit.o
  CC       tests/event-times.o
  CC       util/argv_split.o
  CC       util/rbtree.o
  CC       tests/expr.o
  CC       tests/backward-ring-buffer.o
  CC       tests/sdt.o
  CC       tests/is_printable_array.o
  CC       ui/browser.o
  CC       tests/bitmap.o
  CC       tests/perf-hooks.o
  CC       tests/clang.o
  CC       tests/unit_number__scnprintf.o
  CC       tests/mem2node.o
  CC       util/libstring.o
  CC       tests/maps.o
  CC       util/bitmap.o
  CC       util/hweight.o
  CC       util/smt.o
  CC       ui/browsers/annotate.o
  CC       tests/time-utils-test.o
  CC       util/strbuf.o
  CC       tests/genelf.o
  CC       util/string.o
  CC       tests/api-io.o
  CC       util/strlist.o
  CC       tests/demangle-java-test.o
  CC       util/strfilter.o
  CC       tests/pfm.o
  CC       tests/parse-metric.o
  CC       tests/pe-file-parsing.o
  CC       tests/expand-cgroup.o
  CC       ui/browsers/hists.o
  CC       tests/dwarf-unwind.o
  CC       tests/llvm-src-base.o
  CC       tests/llvm-src-kbuild.o
  CC       tests/llvm-src-prologue.o
  CC       tests/llvm-src-relocation.o
  LD       tests/perf-in.o
  CC       scripts/perl/Perf-Trace-Util/Context.o
  LD       scripts/perl/Perf-Trace-Util/perf-in.o
  CC       scripts/python/Perf-Trace-Util/Context.o
  CC       util/top.o
  LD       scripts/python/Perf-Trace-Util/perf-in.o
  LD       scripts/perf-in.o
  CC       trace/beauty/clone.o
  CC       trace/beauty/fcntl.o
  CC       util/usage.o
  CC       trace/beauty/flock.o
  CC       util/dso.o
  CC       trace/beauty/fsmount.o
  CC       trace/beauty/fspick.o
  CC       trace/beauty/ioctl.o
  CC       ui/tui/setup.o
  CC       ui/tui/util.o
  CC       trace/beauty/kcmp.o
  CC       trace/beauty/mount_flags.o
  CC       trace/beauty/move_mount.o
  CC       trace/beauty/pkey_alloc.o
  CC       ui/tui/helpline.o
  CC       ui/tui/progress.o
  CC       trace/beauty/arch_prctl.o
  CC       trace/beauty/prctl.o
  LD       ui/tui/perf-in.o
  CC       trace/beauty/renameat.o
  CC       trace/beauty/sockaddr.o
  CC       trace/beauty/socket.o
  CC       util/dsos.o
  CC       trace/beauty/statx.o
  CC       trace/beauty/sync_file_range.o
  CC       trace/beauty/tracepoints/x86_irq_vectors.o
  CC       trace/beauty/tracepoints/x86_msr.o
  CC       util/symbol.o
  LD       trace/beauty/tracepoints/perf-in.o
  LD       trace/beauty/perf-in.o
  CC       util/symbol_fprintf.o
  CC       util/color.o
  CC       util/color_config.o
  CC       util/metricgroup.o
  CC       util/header.o
  CC       util/callchain.o
  CC       util/values.o
  CC       util/debug.o
  CC       util/fncache.o
  CC       util/machine.o
  CC       util/map.o
  CC       util/pstack.o
  CC       util/session.o
  CC       util/sample-raw.o
  CC       util/s390-sample-raw.o
  CC       util/syscalltbl.o
  CC       util/ordered-events.o
  CC       util/namespaces.o
  CC       ui/browsers/map.o
  CC       util/comm.o
  CC       util/thread.o
  CC       util/thread_map.o
  CC       ui/browsers/scripts.o
  CC       perf.o
  CC       util/trace-event-parse.o
  CC       ui/browsers/header.o
  CC       util/parse-events-bison.o
  CC       ui/browsers/res_sample.o
  BISON    util/pmu-bison.c
  CC       util/trace-event-read.o
  CC       util/trace-event-info.o
  LD       ui/browsers/perf-in.o
  LD       ui/perf-in.o
  CC       util/trace-event-scripting.o
  CC       util/trace-event.o
  CC       util/svghelper.o
  CC       util/sort.o
  CC       util/hist.o
  CC       util/util.o
  CC       util/cpumap.o
  CC       util/affinity.o
  CC       util/cputopo.o
  CC       util/cgroup.o
  CC       util/target.o
  CC       util/rblist.o
  CC       util/intlist.o
  CC       util/vdso.o
  CC       util/counts.o
  CC       util/stat.o
  CC       util/stat-shadow.o
  CC       util/stat-display.o
  CC       util/perf_api_probe.o
  CC       util/record.o
  CC       util/srcline.o
  CC       util/srccode.o
  CC       util/synthetic-events.o
  CC       util/data.o
  CC       util/tsc.o
  CC       util/cloexec.o
  CC       util/call-path.o
  CC       util/rwsem.o
  CC       util/thread-stack.o
  CC       util/spark.o
  CC       util/topdown.o
  CC       util/stream.o
  CC       util/auxtrace.o
  CC       util/intel-pt-decoder/intel-pt-pkt-decoder.o
  GEN      util/intel-pt-decoder/inat-tables.c
  CC       util/intel-pt-decoder/intel-pt-log.o
  CC       util/intel-pt-decoder/intel-pt-decoder.o
  CC       util/arm-spe-decoder/arm-spe-pkt-decoder.o
  CC       util/scripting-engines/trace-event-perl.o
  CC       util/arm-spe-decoder/arm-spe-decoder.o
  LD       util/arm-spe-decoder/perf-in.o
  CC       util/scripting-engines/trace-event-python.o
  CC       util/intel-pt.o
  CC       util/intel-bts.o
  LD       util/scripting-engines/perf-in.o
  CC       util/arm-spe.o
  CC       util/s390-cpumsf.o
  CC       util/intel-pt-decoder/intel-pt-insn-decoder.o
  CC       util/parse-branch-options.o
  CC       util/dump-insn.o
  CC       util/parse-regs-options.o
  CC       util/parse-sublevel-options.o
  CC       util/term.o
  CC       util/help-unknown-cmd.o
  CC       util/mem-events.o
  CC       util/vsprintf.o
  CC       util/units.o
  CC       util/time-utils.o
  BISON    util/expr-bison.c
  CC       util/branch.o
  CC       util/mem2node.o
  LD       util/intel-pt-decoder/perf-in.o
  CC       util/clockid.o
  CC       util/bpf-loader.o
  CC       util/bpf_map.o
  CC       util/bpf-prologue.o
  CC       util/symbol-elf.o
  CC       util/probe-file.o
  CC       util/probe-event.o
  CC       util/probe-finder.o
  CC       util/dwarf-aux.o
  CC       util/dwarf-regs.o
  CC       util/unwind-libunwind-local.o
  CC       util/unwind-libunwind.o
  CC       util/data-convert-bt.o
  CC       util/zlib.o
  CC       util/lzma.o
  CC       util/zstd.o
  CC       util/cap.o
  CC       util/demangle-java.o
  CC       util/demangle-rust.o
  CC       util/jitdump.o
  CC       util/genelf.o
  CC       util/genelf_debug.o
  CC       util/perf-hooks.o
  CC       util/bpf-event.o
  FLEX     util/parse-events-flex.c
  FLEX     util/pmu-flex.c
  CC       util/pmu-bison.o
  FLEX     util/expr-flex.c
  CC       util/expr-bison.o
  CC       util/expr.o
  CC       util/parse-events.o
  CC       util/parse-events-flex.o
  CC       util/pmu.o
  CC       util/pmu-flex.o
  CC       util/expr-flex.o
  LD       util/perf-in.o
  LD       perf-in.o
  LINK     perf
make: Leaving directory '/usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf'
2020-12-16 20:54:07 cd /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff7=
58a262002b5b326d83efeae71140/tools/perf
2020-12-16 20:54:07 mkdir -p /pkg
2020-12-16 20:54:07 mkdir -p /kbuild/obj/x86_64/x86_64-rhel-8.3
2020-12-16 20:54:07 cp /pkg/linux/x86_64-rhel-8.3/gcc-9/c12b7a396ff758a2620=
02b5b326d83efeae71140/vmlinux.xz /tmp
2020-12-16 20:54:08 unxz -k /tmp/vmlinux.xz
2020-12-16 20:54:12 cp /tmp/vmlinux /kbuild/obj/x86_64/x86_64-rhel-8.3
ignored_by_lkp: BPF filter
ignored_by_lkp: LLVM search and compile
ignored_by_lkp: Add vfs_getname probe to get syscall args filenames
ignored_by_lkp: Use vfs_getname probe to get syscall args filenames
ignored_by_lkp: Check open filename arg using perf trace + vfs_getname
ignored_by_lkp: builtin clang support
2020-12-16 20:54:12 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 1
 1: vmlinux symtab matches kallsyms                                 : Ok
2020-12-16 20:54:13 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 2
 2: Detect openat syscall event                                     : Ok
2020-12-16 20:54:13 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 3
 3: Detect openat syscall event on all cpus                         : Ok
2020-12-16 20:54:13 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 4
 4: Read samples using the mmap interface                           : FAILE=
D!
2020-12-16 20:54:13 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 5
 5: Test data source output                                         : Ok
2020-12-16 20:54:13 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 6
 6: Parse event definition strings                                  : FAILE=
D!
2020-12-16 20:54:14 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 7
 7: Simple expression parser                                        : Ok
2020-12-16 20:54:15 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 8
 8: PERF_RECORD_* events & perf_sample fields                       : Ok
2020-12-16 20:54:17 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 9
 9: Parse perf pmu format                                           : Ok
2020-12-16 20:54:17 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 10
10: PMU events                                                      :
10.1: PMU event table sanity                                        : Ok
10.2: PMU event map aliases                                         : Ok
10.3: Parsing of PMU event table metrics                            : Skip =
(some metrics failed)
10.4: Parsing of PMU event table metrics with fake PMUs             : Ok
2020-12-16 20:54:19 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 11
11: DSO data read                                                   : Ok
2020-12-16 20:54:19 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 12
12: DSO data cache                                                  : Ok
2020-12-16 20:54:19 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 13
13: DSO data reopen                                                 : Ok
2020-12-16 20:54:19 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 14
14: Roundtrip evsel->name                                           : Ok
2020-12-16 20:54:19 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 15
15: Parse sched tracepoints fields                                  : Ok
2020-12-16 20:54:19 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 16
16: syscalls:sys_enter_openat event fields                          : Ok
2020-12-16 20:54:19 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 17
17: Setup struct perf_event_attr                                    : Ok
2020-12-16 20:54:33 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 18
18: Match and link multiple hists                                   : Ok
2020-12-16 20:54:33 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 19
19: 'import perf' in python                                         : FAILE=
D!
2020-12-16 20:54:33 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 20
20: Breakpoint overflow signal handler                              : Ok
2020-12-16 20:54:33 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 21
21: Breakpoint overflow sampling                                    : Ok
2020-12-16 20:54:33 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 22
22: Breakpoint accounting                                           : Ok
2020-12-16 20:54:33 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 23
23: Watchpoint                                                      :
23.1: Read Only Watchpoint                                          : Skip
23.2: Write Only Watchpoint                                         : Ok
23.3: Read / Write Watchpoint                                       : Ok
23.4: Modify Watchpoint                                             : Ok
2020-12-16 20:54:34 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 24
24: Number of exit events of a simple workload                      : FAILE=
D!
2020-12-16 20:54:34 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 25
25: Software clock events period values                             : FAILE=
D!
2020-12-16 20:54:34 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 26
26: Object code reading                                             : FAILE=
D!
2020-12-16 20:54:37 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 27
27: Sample parsing                                                  : Ok
2020-12-16 20:54:37 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 28
28: Use a dummy software event to keep tracking                     : FAILE=
D!
2020-12-16 20:54:37 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 29
29: Parse with no sample_id_all bit set                             : Ok
2020-12-16 20:54:37 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 30
30: Filter hist entries                                             : Ok
2020-12-16 20:54:37 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 31
31: Lookup mmap thread                                              : FAILE=
D!
2020-12-16 20:54:38 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 32
32: Share thread maps                                               : Ok
2020-12-16 20:54:38 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 33
33: Sort output of hist entries                                     : Ok
2020-12-16 20:54:38 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 34
34: Cumulate child hist entries                                     : Ok
2020-12-16 20:54:38 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 35
35: Track with sched_switch                                         : FAILE=
D!
2020-12-16 20:54:38 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 36
36: Filter fds with revents mask in a fdarray                       : Ok
2020-12-16 20:54:38 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 37
37: Add fd to a fdarray, making it autogrow                         : Ok
2020-12-16 20:54:38 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 38
38: kmod_path__parse                                                : Ok
2020-12-16 20:54:38 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 39
39: Thread map                                                      : Ok
2020-12-16 20:54:39 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 41
41: Session topology                                                : FAILE=
D!
2020-12-16 20:54:39 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 43
43: Synthesize thread map                                           : FAILE=
D!
2020-12-16 20:54:39 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 44
44: Remove thread map                                               : FAILE=
D!
2020-12-16 20:54:39 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 45
45: Synthesize cpu map                                              : Ok
2020-12-16 20:54:39 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 46
46: Synthesize stat config                                          : Ok
2020-12-16 20:54:39 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 47
47: Synthesize stat                                                 : Ok
2020-12-16 20:54:39 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 48
48: Synthesize stat round                                           : Ok
2020-12-16 20:54:39 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 49
49: Synthesize attr update                                          : FAILE=
D!
2020-12-16 20:54:39 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 50
50: Event times                                                     : Ok
2020-12-16 20:54:39 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 51
51: Read backward ring buffer                                       : Ok
2020-12-16 20:54:40 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 52
52: Print cpu map                                                   : FAILE=
D!
2020-12-16 20:54:40 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 53
53: Merge cpu map                                                   : Ok
2020-12-16 20:54:40 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 54
54: Probe SDT events                                                : Ok
2020-12-16 20:54:40 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 55
55: is_printable_array                                              : Ok
2020-12-16 20:54:40 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 56
56: Print bitmap                                                    : Ok
2020-12-16 20:54:40 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 57
57: perf hooks                                                      : Ok
2020-12-16 20:54:40 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 59
59: unit_number__scnprintf                                          : Ok
2020-12-16 20:54:40 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 60
60: mem2node                                                        : Ok
2020-12-16 20:54:40 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 61
61: time utils                                                      : Ok
2020-12-16 20:54:40 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 62
62: Test jit_write_elf                                              : Ok
2020-12-16 20:54:40 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 63
63: Test libpfm4 support                                            : Skip =
(not compiled in)
2020-12-16 20:54:40 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 64
64: Test api io                                                     : Ok
2020-12-16 20:54:40 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 65
65: maps__merge_in                                                  : FAILE=
D!
2020-12-16 20:54:40 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 66
66: Demangle Java                                                   : Ok
2020-12-16 20:54:41 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 67
67: Parse and process metrics                                       : Ok
2020-12-16 20:54:41 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 68
68: PE file support                                                 : FAILE=
D!
2020-12-16 20:54:41 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 69
69: Event expansion for cgroups                                     : Ok
2020-12-16 20:54:41 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 70
70: x86 rdpmc                                                       : Ok
2020-12-16 20:54:41 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 71
71: Convert perf time to TSC                                        : FAILE=
D!
2020-12-16 20:54:41 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 72
72: DWARF unwind                                                    : FAILE=
D!
2020-12-16 20:54:42 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 73
73: x86 instruction decoder - new instructions                      : Ok
2020-12-16 20:54:42 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 74
74: Intel PT packet decoder                                         : Ok
2020-12-16 20:54:42 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 75
75: x86 bp modify                                                   : Ok
2020-12-16 20:54:42 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 76
76: probe libc's inet_pton & backtrace it with ping                 : Ok
2020-12-16 20:54:44 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 80
80: build id cache operations                                       : FAILE=
D!
2020-12-16 20:54:45 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 81
81: Zstd perf.data compression/decompression                        : FAILE=
D!
2020-12-16 20:54:46 sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396f=
f758a262002b5b326d83efeae71140/tools/perf/perf test 82
82: Check Arm CoreSight trace data recording and synthesized samples: Skip

--P+33d92oIH25kiaB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="job.yaml"

---

#! jobs/perf-sanity-tests.yaml
suite: perf-sanity-tests
testcase: perf-sanity-tests
category: functional
need_memory: 2G
perf-sanity-tests:
  perf_compiler: gcc
job_origin: "/lkp-src/allot/cyclic:p1:linux-devel:devel-hourly/lkp-skl-d04/perf-sanity-tests.yaml"

#! queue options
queue_cmdline_keys:
- branch
- commit
queue: bisect
testbox: lkp-skl-d04
tbox_group: lkp-skl-d04
kconfig: x86_64-rhel-8.3
submit_id: 5fda57b5888d229e23d6db61
job_file: "/lkp/jobs/scheduled/lkp-skl-d04/perf-sanity-tests-gcc-ucode=0xe2-debian-10.4-x86_64-20200603.cgz-c12b7a396ff758a262002b5b326d83efeae71140-20201217-40483-18lglgq-0.yaml"
id: 021b75185d69c98b139293b193b7f94d8baa0505
queuer_version: "/lkp-src"

#! hosts/lkp-skl-d04
model: Skylake
nr_cpu: 4
memory: 32G
nr_ssd_partitions: 1
nr_hdd_partitions: 4
hdd_partitions: "/dev/disk/by-id/ata-ST1000DM003-1ER162_Z4YB7AEL-part*"
ssd_partitions: "/dev/disk/by-id/wwn-0x55cd2e404b64c499-part2"
rootfs_partition: "/dev/disk/by-id/wwn-0x55cd2e404b64c499-part1"
brand: Intel(R) Core(TM) i5-6500 CPU @ 3.20GHz

#! include/category/functional
kmsg: 
heartbeat: 
meminfo: 

#! include/perf-sanity-tests
need_linux_perf: true

#! include/queue/cyclic
commit: c12b7a396ff758a262002b5b326d83efeae71140

#! include/testbox/lkp-skl-d04
need_kconfig_hw:
- CONFIG_E1000E=y
- CONFIG_SATA_AHCI
ucode: '0xe2'
enqueue_time: 2020-12-17 02:53:41.987339728 +08:00
_id: 5fda57b5888d229e23d6db61
_rt: "/result/perf-sanity-tests/gcc-ucode=0xe2/lkp-skl-d04/debian-10.4-x86_64-20200603.cgz/x86_64-rhel-8.3/gcc-9/c12b7a396ff758a262002b5b326d83efeae71140"

#! schedule options
user: lkp
compiler: gcc-9
head_commit: 5a790e0217a4dbbe9c287b7b7f2d3f32d4df0812
base_commit: 2c85ebc57b3e1817b6ce1a6b703928e113a90442
branch: linux-devel/devel-hourly-2020121614
rootfs: debian-10.4-x86_64-20200603.cgz
result_root: "/result/perf-sanity-tests/gcc-ucode=0xe2/lkp-skl-d04/debian-10.4-x86_64-20200603.cgz/x86_64-rhel-8.3/gcc-9/c12b7a396ff758a262002b5b326d83efeae71140/0"
scheduler_version: "/lkp/lkp/.src-20201216-155149"
LKP_SERVER: internal-lkp-server
arch: x86_64
max_uptime: 2100
initrd: "/osimage/debian/debian-10.4-x86_64-20200603.cgz"
bootloader_append:
- root=/dev/ram0
- user=lkp
- job=/lkp/jobs/scheduled/lkp-skl-d04/perf-sanity-tests-gcc-ucode=0xe2-debian-10.4-x86_64-20200603.cgz-c12b7a396ff758a262002b5b326d83efeae71140-20201217-40483-18lglgq-0.yaml
- ARCH=x86_64
- kconfig=x86_64-rhel-8.3
- branch=linux-devel/devel-hourly-2020121614
- commit=c12b7a396ff758a262002b5b326d83efeae71140
- BOOT_IMAGE=/pkg/linux/x86_64-rhel-8.3/gcc-9/c12b7a396ff758a262002b5b326d83efeae71140/vmlinuz-5.10.0-02717-gc12b7a396ff7
- max_uptime=2100
- RESULT_ROOT=/result/perf-sanity-tests/gcc-ucode=0xe2/lkp-skl-d04/debian-10.4-x86_64-20200603.cgz/x86_64-rhel-8.3/gcc-9/c12b7a396ff758a262002b5b326d83efeae71140/0
- LKP_SERVER=internal-lkp-server
- nokaslr
- selinux=0
- debug
- apic=debug
- sysrq_always_enabled
- rcupdate.rcu_cpu_stall_timeout=100
- net.ifnames=0
- printk.devkmsg=on
- panic=-1
- softlockup_panic=1
- nmi_watchdog=panic
- oops=panic
- load_ramdisk=2
- prompt_ramdisk=0
- drbd.minor_count=8
- systemd.log_level=err
- ignore_loglevel
- console=tty0
- earlyprintk=ttyS0,115200
- console=ttyS0,115200
- vga=normal
- rw
modules_initrd: "/pkg/linux/x86_64-rhel-8.3/gcc-9/c12b7a396ff758a262002b5b326d83efeae71140/modules.cgz"
linux_perf_initrd: "/pkg/linux/x86_64-rhel-8.3/gcc-9/c12b7a396ff758a262002b5b326d83efeae71140/linux-perf.cgz"
bm_initrd: "/osimage/deps/debian-10.4-x86_64-20200603.cgz/run-ipconfig_20200608.cgz,/osimage/deps/debian-10.4-x86_64-20200603.cgz/lkp_20201211.cgz,/osimage/deps/debian-10.4-x86_64-20200603.cgz/rsync-rootfs_20200608.cgz,/osimage/deps/debian-10.4-x86_64-20200603.cgz/perf-sanity-tests_20201111.cgz,/osimage/pkg/debian-10.4-x86_64-20200603.cgz/perf-x86_64-fa02fcd94b0c-1_20201126.cgz,/osimage/deps/debian-10.4-x86_64-20200603.cgz/hw_20200715.cgz"
ucode_initrd: "/osimage/ucode/intel-ucode-20201117.cgz"
lkp_initrd: "/osimage/user/lkp/lkp-x86_64.cgz"
site: inn

#! /lkp/lkp/.src-20201216-155149/include/site/inn
LKP_CGI_PORT: 80
LKP_CIFS_PORT: 139
oom-killer: 
watchdog: 

#! runtime status
last_kernel: 5.9.0-rc3-00005-g75df529bec911
schedule_notify_address: 

#! user overrides
kernel: "/pkg/linux/x86_64-rhel-8.3/gcc-9/c12b7a396ff758a262002b5b326d83efeae71140/vmlinuz-5.10.0-02717-gc12b7a396ff7"
dequeue_time: 2020-12-17 02:58:47.574809603 +08:00
job_state: finished
loadavg: 1.88 1.15 0.46 1/133 8975
start_time: '1608140908'
end_time: '1608141022'
version: "/lkp/lkp/.src-20201216-155222:a579723e:720bd231a"

--P+33d92oIH25kiaB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=reproduce

make ARCH= EXTRA_CFLAGS=-fno-omit-frame-pointer -fsanitize=undefined -fsanitize=address -C /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf
cd /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf
mkdir -p /pkg
mkdir -p /kbuild/obj/x86_64/x86_64-rhel-8.3
cp /pkg/linux/x86_64-rhel-8.3/gcc-9/c12b7a396ff758a262002b5b326d83efeae71140/vmlinux.xz /tmp
unxz -k /tmp/vmlinux.xz
cp /tmp/vmlinux /kbuild/obj/x86_64/x86_64-rhel-8.3
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 1
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 2
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 3
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 4
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 5
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 6
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 7
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 8
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 9
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 10
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 11
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 12
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 13
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 14
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 15
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 16
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 17
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 18
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 19
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 20
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 21
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 22
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 23
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 24
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 25
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 26
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 27
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 28
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 29
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 30
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 31
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 32
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 33
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 34
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 35
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 36
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 37
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 38
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 39
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 41
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 43
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 44
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 45
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 46
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 47
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 48
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 49
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 50
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 51
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 52
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 53
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 54
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 55
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 56
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 57
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 59
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 60
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 61
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 62
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 63
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 64
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 65
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 66
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 67
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 68
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 69
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 70
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 71
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 72
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 73
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 74
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 75
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 76
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 80
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 81
sudo /usr/src/perf_selftests-x86_64-rhel-8.3-c12b7a396ff758a262002b5b326d83efeae71140/tools/perf/perf test 82

--P+33d92oIH25kiaB
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--P+33d92oIH25kiaB--
